<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DefaultVB.aspx.vb" Inherits="ExportarExcel._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Importar dados do Excel</title>
    <style type="text/css">
        .auto-style1 {
            width: 308px;
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
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            </div>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>
                        <asp:Button ID="btnUpload" runat="server" Text="Enviar" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:GridView ID="gdvNotas" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Salvar no Banco de Dados" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:GridView ID="gdvREsumoNotas" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
