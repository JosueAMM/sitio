Public Class Principal
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Codigo As String
        Codigo = Request.QueryString("cod")
        TxtCodigo.Text = Codigo
    End Sub

End Class