Public Class DatosDesencriptados
    Dim cn As New OleDb.OleDbConnection(ConfigurationSettings.AppSettings("Conexion"))
    Dim dsGen As New DataSet()
    Dim ds As DataSet = New DataSet()
    Public Function getEncriptado(codigo As Integer) As DataSet
        Try
            If ds.Tables("DATOS") IsNot Nothing Then ds.Tables.Remove("DATOS")
            cn.Open()
            Dim Comando As OleDb.OleDbCommand = New OleDb.OleDbCommand("sp_detallesDatosEncrypt", cn)
            Comando.CommandType = CommandType.StoredProcedure
            Comando.Parameters.Add("@codigo", OleDb.OleDbType.Integer).Value = codigo
            Dim adp As OleDb.OleDbDataAdapter = New OleDb.OleDbDataAdapter(Comando)
            adp.Fill(ds, "DATOS")
            cn.Close()
            Return ds
        Catch ex As Exception
            Return ds
        End Try
    End Function
End Class
