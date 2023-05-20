Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As EventArgs) Handles Calendar1.SelectionChanged
        Lbel2.Text = "Rastreamento referentes as entregas do dia: " + Calendar1.SelectedDate.ToShortDateString()
    End Sub
End Class