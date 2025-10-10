Imports System.Data
Imports System.Data.OleDb
Imports System.Data.SqlClient
Imports System.IO
Imports System.Configuration
Public Class _Default
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblError.Visible = False
    End Sub
    ' Vincula com o Grid
    Private Sub ImportarParaGrid(ByVal FilePath As String, ByVal Extension As String)
        Dim conStr As String = ""
        Select Case Extension
            Case ".xls"
                'Excel 97-03
                conStr = ConfigurationManager.ConnectionStrings("Excel03ConString").ConnectionString
                Exit Select
            Case ".xlsx"
                'Excel 07
                conStr = ConfigurationManager.ConnectionStrings("Excel07ConString").ConnectionString
                Exit Select
        End Select

        conStr = [String].Format(conStr, FilePath, 1)
        Dim connExcel As New OleDbConnection(conStr)
        Dim cmdExcel As New OleDbCommand()
        Dim oda As New OleDbDataAdapter()
        Dim dt As New DataTable()
        cmdExcel.Connection = connExcel

        connExcel.Open()
        Dim dtExcelSchema As DataTable
        dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, Nothing)
        Dim SheetName As String = dtExcelSchema.Rows(0)("TABLE_NAME").ToString()
        connExcel.Close()

        'Le os dados da primeira planilha do Excel
        connExcel.Open()
        cmdExcel.CommandText = "SELECT * From [" + SheetName + "]"
        oda.SelectCommand = cmdExcel
        oda.Fill(dt)
        connExcel.Close()
        gdvNotas.DataSource = dt
        gdvNotas.DataBind()

        ' Cria arquivo temporário
        Dim dtTabela_Dados As New DataTable()
        dtTabela_Dados = dt
        'retorna a tabela com dados
        'Cria tabela temporaria
        Dim dtTemp As New DataTable()

        ' Cria linha de cabeçalho
        dtTemp.Columns.Add("Codigo")
        dtTemp.Columns.Add("Produto")
        dtTemp.Columns.Add("Data")
        dtTemp.Columns.Add("Url")
        'dtTemp.Columns.Add("Percentual")

        ' Dim soma As Integer
        Dim drAddItem As DataRow
        gdvNotas.Visible = False
        Try
            For i As Integer = 0 To dtTabela_Dados.Rows.Count - 1
                drAddItem = dtTemp.NewRow()
                drAddItem(0) = dtTabela_Dados.Rows(i)("Codigo").ToString()
                drAddItem(1) = dtTabela_Dados.Rows(i)("Produto").ToString()
                'nome do aluno
                drAddItem(2) = dtTabela_Dados.Rows(i)("Data").ToString()
                'matricula
                'Soma
                ' soma = (Integer.Parse(dtTabela_Dados.Rows(i)("Portugues").ToString()) + Integer.Parse(dtTabela_Dados.Rows(i)("Ingles").ToString()) + Integer.Parse(dtTabela_Dados.Rows(i)("Matematica").ToString()) + Integer.Parse(dtTabela_Dados.Rows(i)("Fisica").ToString()))
                drAddItem(3) = dtTabela_Dados.Rows(i)("Url").ToString()

                'Percentual(%)
                ' Dim prcnt As Integer = (soma * 100 / 800)
                ' drAddItem(4) = prcnt.ToString()
                dtTemp.Rows.Add(drAddItem)
            Next

            'Vincula dados no GridView
            gdvResumoNotas.DataSource = dtTemp
            gdvResumoNotas.DataBind()

        Catch ex As Exception
            lblError.Text = "Erro ao criar tabela a partir da planilha " & ex.Message
        End Try
    End Sub

    Protected Sub btnUpload_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnUpload.Click
        If FileUpload1.HasFile Then
            Dim FileName As String = Path.GetFileName(FileUpload1.PostedFile.FileName)
            Dim Extension As String = Path.GetExtension(FileUpload1.PostedFile.FileName)
            Dim FolderPath As String = ConfigurationManager.AppSettings("FolderPath")
            Dim FilePath As String = Server.MapPath(FolderPath + FileName)
            FileUpload1.SaveAs(FilePath)
            ImportarParaGrid(FilePath, Extension)
        End If
    End Sub

    Protected Sub PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gdvNotas.PageIndexChanging
        Dim FolderPath As String = ConfigurationManager.AppSettings("FolderPath")
        Dim FileName As String = gdvNotas.Caption
        Dim Extension As String = Path.GetExtension(FileName)
        Dim FilePath As String = Server.MapPath(FolderPath + FileName)

        ImportarParaGrid(FilePath, Extension)
        gdvNotas.PageIndex = e.NewPageIndex
        gdvNotas.DataBind()
    End Sub

    ' Escreve dados na planilha Excel
    Private Sub CriarPlanilhaExcel()
        If Int32.Parse(gdvResumoNotas.Rows.Count.ToString()) < 65536 Then
            gdvResumoNotas.AllowPaging = True
            'grvProdReport.DataBind()
            Dim tw As New StringWriter()
            Dim hw As New System.Web.UI.HtmlTextWriter(tw)
            Dim frm As New HtmlForm()

            Dim strTmpTime As String = (System.DateTime.Today).ToString()
            If strTmpTime.IndexOf("/") <> -1 Then
                strTmpTime = strTmpTime.Replace("/", "-").ToString().Trim()
            End If
            If strTmpTime.IndexOf(":") <> -1 Then
                strTmpTime = strTmpTime.Replace(":", "-").ToString().Trim()
            End If

            Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
            Response.AddHeader("content-disposition", "attachment;cfilename=sheet.xls")
            Response.Charset = "UTF-8"
            EnableViewState = False
            Controls.Add(frm)
            frm.Controls.Add(gdvResumoNotas)
            frm.RenderControl(hw)
            hw.WriteLine("<b> <u> <font-size:'5'> Produtos Rastreados </font> </u> </b>")
            Response.Write(tw.ToString())
            Response.[End]()
        Else
            'grvProdReport.AllowPaging = "True"
            'grvProdReport.DataBind()
            lblError.Visible = True
            lblError.Text = "Não é possível exportar para o Excel"
        End If
    End Sub

    ' inclui dados da planilha excel no banco de dados
    Private Sub incluir_dados()
        Dim i As Integer
        'obtem a string de conexão com a tabela Notas
        Dim s As String = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=rh##1234"
        ' Dim s As String = ConfigurationManager.ConnectionStrings("Notas").ConnectionString
        Dim con As New SqlConnection(s)
        Response.Charset = "UTF-8"
        For i = 0 To gdvNotas.Rows.Count - 1
            Dim query As String = "insert into Notas values ('" + gdvResumoNotas.Rows(i).Cells(0).Text + "','" + gdvResumoNotas.Rows(i).Cells(1).Text + "','" + gdvResumoNotas.Rows(i).Cells(2).Text.ToString() + "','" + gdvResumoNotas.Rows(i).Cells(3).Text + "')"
            Dim cmd As New SqlCommand(query, con)
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            lblError.Visible = True
            lblError.Text = "Dados incluidos com sucesso na tabela Notas"
        Next
    End Sub

    Protected Sub SalvarExportarExcel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles SalvarExportarExcel.Click
        incluir_dados()
        ' inclui dados no banco de dados
        CriarPlanilhaExcel()
        ' Cria um arquivo excel
    End Sub
End Class