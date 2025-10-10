<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="JFCWEB.Administrador.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 292px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 389px;
        }
        .auto-style4 {
            width: 389px;
            text-align: center;
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
            <asp:Label ID="Label1" runat="server" Text="Importação de Informações de Vendas"></asp:Label>
        </div>
        <hr />
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Enviar" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style4">
                        <br />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Gravar" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center">
            </asp:GridView>
            <div class="auto-style2">
                <br />
                <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
