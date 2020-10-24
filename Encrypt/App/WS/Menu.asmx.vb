Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports System.Data.OleDb
Imports System.Data.SqlClient
Imports System.IO
Imports System.Security.Cryptography


' Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente.
<System.Web.Script.Services.ScriptService()>
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
Public Class Menu
    Inherits System.Web.Services.WebService
    Dim cn As New OleDb.OleDbConnection(ConfigurationSettings.AppSettings("Conexion"))
    Dim dsGen As New DataSet()
    Public Class ListadoEncriptado
        Public Property IdCodigo As Integer
        Public Property Dato As String
        Public Property DatoEncriptado As String
    End Class
    Public Class ListadoDesencriptado
        Public Property IdCodigo As Integer
        Public Property Dato As String
        Public Property DatoEncriptado As String
    End Class
    <WebMethod()> _
    Public Function HelloWorld() As String
        Return "Hola a todos"
    End Function

    <WebMethod()>
    Public Function Usuario(ByVal codigo As String)

        Dim Configuraciones As New Dictionary(Of String, Object)
        Dim result As New ArrayList()

        cn.Open()
        Dim Comando As OleDb.OleDbCommand = New OleDb.OleDbCommand("sp_datosUsuario", cn)
        Comando.CommandType = CommandType.StoredProcedure
        Comando.Parameters.Add("@nombre", OleDb.OleDbType.Char).Value = codigo
        Dim adp As OleDb.OleDbDataAdapter = New OleDb.OleDbDataAdapter(Comando)
        adp.Fill(dsGen, "DATOS")


        Dim nombre = Trim(dsGen.Tables("DATOS").Rows(0)("nombre"))
        Configuraciones.Add("User", nombre)

        Dim correo = Trim(dsGen.Tables("DATOS").Rows(0)("correo"))
        Configuraciones.Add("Email", correo)

        Comando.ExecuteNonQuery()

        result.Add(Configuraciones)
        cn.Close()

        Return result

    End Function

    <WebMethod()>
    Public Function Encriptado(ByVal codigo As String, ByVal encriptar As String)
        Dim dato As String = encriptar

        'Encriptacion Password'
        Dim EncryptionKey As String = "umg"
        Dim clearBytes As Byte() = Encoding.Unicode.GetBytes(encriptar)

        Using encryptor As Aes = Aes.Create()
            Dim pdb As Rfc2898DeriveBytes = New Rfc2898DeriveBytes(EncryptionKey, New Byte() {&H49, &H76, &H61, &H6E, &H20, &H4D, &H65, &H64, &H76, &H65, &H64, &H65, &H76})
            encryptor.Key = pdb.GetBytes(32)
            encryptor.IV = pdb.GetBytes(16)

            Using ms As MemoryStream = New MemoryStream()

                Using cs As CryptoStream = New CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write)
                    cs.Write(clearBytes, 0, clearBytes.Length)
                    cs.Close()
                End Using

                encriptar = Convert.ToBase64String(ms.ToArray())
            End Using
        End Using


        cn.Open()
        Dim Comando As OleDb.OleDbCommand = New OleDb.OleDbCommand("sp_createDato", cn)
        Comando.CommandType = CommandType.StoredProcedure
        Comando.Parameters.Add("@codigo", OleDb.OleDbType.Integer).Value = codigo
        Comando.Parameters.Add("@dato", OleDb.OleDbType.Char).Value = dato
        Comando.Parameters.Add("@encriptado", OleDb.OleDbType.Char).Value = encriptar
        Comando.ExecuteNonQuery()
        cn.Close()

    End Function
    <WebMethod()>
    Public Function Desencriptado(ByVal codigo As String, ByVal encriptar As String)


        'desencriptacion Password'
        Dim EncryptionKey As String = "umg"
        Dim dato As String = encriptar

        dato = dato.Replace(" ", "+")
        Dim cipherBytes As Byte() = Convert.FromBase64String(dato)

        Using encryptor As Aes = Aes.Create()
            Dim pdb As Rfc2898DeriveBytes = New Rfc2898DeriveBytes(EncryptionKey, New Byte() {&H49, &H76, &H61, &H6E, &H20, &H4D, &H65, &H64, &H76, &H65, &H64, &H65, &H76})
            encryptor.Key = pdb.GetBytes(32)
            encryptor.IV = pdb.GetBytes(16)

            Using ms As MemoryStream = New MemoryStream()

                Using cs As CryptoStream = New CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write)
                    cs.Write(cipherBytes, 0, cipherBytes.Length)
                End Using

                dato = Encoding.Unicode.GetString(ms.ToArray())
            End Using
        End Using

        Dim DatoDsEncrypt As String = dato



        cn.Open()
        Dim Comando As OleDb.OleDbCommand = New OleDb.OleDbCommand("sp_createDatoEncrypt", cn)
        Comando.CommandType = CommandType.StoredProcedure
        Comando.Parameters.Add("@codigo", OleDb.OleDbType.Integer).Value = codigo
        Comando.Parameters.Add("@dato", OleDb.OleDbType.Char).Value = DatoDsEncrypt
        Comando.Parameters.Add("@encriptado", OleDb.OleDbType.Char).Value = encriptar
        Comando.ExecuteNonQuery()
        cn.Close()

    End Function

    <WebMethod()>
    Public Function GetEncriptado(codigo As Integer) As List(Of ListadoEncriptado)
        dsGen.Tables.Clear()
        Dim clConocimientos As DatosEncriptados = New DatosEncriptados()
        dsGen = clConocimientos.getEncriptado(codigo)
        Dim Datos As List(Of ListadoEncriptado) = New List(Of ListadoEncriptado)()

        For Each dr As DataRow In dsGen.Tables("Datos").Rows
            Dim Registro As ListadoEncriptado = New ListadoEncriptado()
            Registro.IdCodigo = Convert.ToInt32(dr("id"))
            Registro.Dato = dr("dato").ToString()
            Registro.DatoEncriptado = dr("datoEncriptado").ToString()
            Datos.Add(Registro)
        Next
        Return Datos
    End Function

    <WebMethod()>
    Public Function GetDesencriptado(codigo As Integer) As List(Of ListadoDesencriptado)
        dsGen.Tables.Clear()
        Dim clConocimientos As DatosDesencriptados = New DatosDesencriptados()
        dsGen = clConocimientos.getEncriptado(codigo)
        Dim Datos As List(Of ListadoDesencriptado) = New List(Of ListadoDesencriptado)()

        For Each dr As DataRow In dsGen.Tables("Datos").Rows
            Dim Registro As ListadoDesencriptado = New ListadoDesencriptado()
            Registro.IdCodigo = Trim(Convert.ToInt32(dr("id")))
            Registro.DatoEncriptado = Trim(dr("datoEncriptado").ToString())
            Registro.Dato = Trim(dr("dato").ToString())

            Datos.Add(Registro)
        Next
        Return Datos
    End Function

End Class