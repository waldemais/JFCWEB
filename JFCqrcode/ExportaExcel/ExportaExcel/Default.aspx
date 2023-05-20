<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="ExportaExcel._Default" uiCulture="pt-BR" Culture="pt-BR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Upload de Produtos</title>
    <style type="text/css">
        .hdr
        {
            background: #ccc;
            font-family: Arial;
            font-size: 12px;
            color: #fff;
        }
        .ftr
        {
            background: #00c;
            color: #fff;
            font-family: Arial;
            font-size: 12px;
            color: #fff;
        }
        .hdr1
        {
            background: #FF0000;
            font-family: Arial;
            font-size: 12px;
            font-weight: bold;
            color: #fff;
        }
        .ftr1
        {
            background: #000;
            color: #fff;
            font-family: Arial;
            font-size: 12px;
            color: #fff;
        }
        .Row
        {
            background: #ccc;
            text-align: center;
            font-size: 12px;
            color: #000;
        }
        .Alt
        {
            background: ##808000;
            text-align: center;
            font-size: 12px;
            color: #000;
        }
        .style1
        {
            width: 70px;
        }
    </style>

    <script language="javascript" type="text/javascript">
        function exportarExcel() {
            var oExcel = new ActiveXObject("Excel.Application");
            var oBook = oExcel.Workbooks.Add;
            var oSheet = oBook.Worksheets(1);
            var dt = document.getElementById('tbl')

            for (var y = 0; y < dt.rows.length; y++)
            // detalhes da tabela  é a tabela onde o conteúdo deve ser exportado
            {
                for (var x = 0; x < dt.rows(y).cells.length; x++) {
                    oSheet.Cells(y + 1, x + 1) = dt.rows(y).cells(x).innerText;
                }
            }
            oExcel.Visible = true;
            oExcel.UserControl = true;
        }
  </script>

</head>
<body bgcolor="#666666">
    <form id="form1" runat="server">
    <div>
        <div style="background-color: #00FF00">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/logo.png" />
            <asp:Label ID="Label1" runat="server" 
                style="font-size: xx-large; color: #FFFFFF; font-weight: 700" 
                Text="Rastreamento"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
        </div>
        <div style="height: 29px">
            <br />
            <br />
        </div>
        <table cellpadding="10" cellspacing="10" style="font-family: Arial; font-size: 12px;
            border: solid 1px #ccc; background-color: #99FF66;" border="1" 
            align="center">
            <tr>
                <td align="center">
                    <asp:FileUpload ID="FileUpload1" runat="server" 
                        style="color: #003300; font-weight: 700" />
                </td>
                <td class="style1">
                    <asp:Button ID="btnUpload" runat="server" Text="Enviar"
                        OnClick="btnUpload_Click" 
                        style="color: #003300; font-weight: 700; background-color: #FFFFFF" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:GridView ID="gdvNotas" runat="server" AllowPaging="false"
                        OnPageIndexChanging="PageIndexChanging">
                        <HeaderStyle CssClass="hdr" />
                        <FooterStyle CssClass="ftr" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:GridView ID="gdvResumoNotas" runat="server" AllowPaging="false">
                        <HeaderStyle CssClass="hdr1" />
                        <RowStyle CssClass="Row" />
                        <AlternatingRowStyle CssClass="Alt" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="SalvarExportarExcel" runat="server" Text="Enviar para web"
                        OnClientClick="exportarExcel()" 
                        style="color: #003300; font-weight: 700; background-color: #FFFFFF" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
