Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports System.Data.OleDb
Imports System.Data.SqlClient

' Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente.
<System.Web.Script.Services.ScriptService()>
<System.Web.Services.WebService(Namespace:="http://localhost.org/")>
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
Public Class Register
    Inherits System.Web.Services.WebService

    Dim cn As New OleDb.OleDbConnection(ConfigurationSettings.AppSettings("Conexion"))
    Dim dsGen As New DataSet()

    <WebMethod()>
    Public Function HelloWorld() As String
        Return "Hola a todos"
    End Function
    <WebMethod()>
    Public Function Registro(ByVal nombre As String, ByVal correo As String, ByVal pass1 As String)

        cn.Open()
        Dim Comando As OleDb.OleDbCommand = New OleDb.OleDbCommand("sp_createUsers", cn)
        Comando.CommandType = CommandType.StoredProcedure

        Comando.Parameters.Add("@nombre", OleDb.OleDbType.Char).Value = nombre
        Comando.Parameters.Add("@correo", OleDb.OleDbType.Char).Value = correo
        Comando.Parameters.Add("@password", OleDb.OleDbType.Char).Value = pass1

        Comando.ExecuteNonQuery()

        cn.Close()


    End Function
    <WebMethod()>
    Public Function ValidationLogIn(ByVal correo As String, ByVal pass As String)

        Dim Validate As Integer

        cn.Open()
        Dim Comando As OleDb.OleDbCommand = New OleDb.OleDbCommand("sp_validateLogIn", cn)

        Comando.CommandType = CommandType.StoredProcedure
        Comando.Parameters.Add("@correo", OleDb.OleDbType.Char).Value = correo
        Comando.Parameters.Add("@password", OleDb.OleDbType.Char).Value = pass
        Dim adp As OleDb.OleDbDataAdapter = New OleDb.OleDbDataAdapter(Comando)
        adp.Fill(dsGen, "DATOS")
        Comando.ExecuteNonQuery()

        If dsGen.Tables("DATOS").Rows.Count < 1 Then
            Validate = 0

        Else
            Validate = dsGen.Tables("DATOS").Rows(0)("id")

        End If

        cn.Close()



        Return Validate


    End Function

End Class