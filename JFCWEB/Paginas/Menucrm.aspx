<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menucrm.aspx.cs" Inherits="JFCWEB.Paginas.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" BackColor="#CCFFCC" Text="CRM - Ocorrências"></asp:Label>
        </div>
        <div>
            <hr />
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style1" colspan="2">
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Paginas/CRM.aspx" Text="Cadastrar" Width="100px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" PostBackUrl="~/Paginas/CRM3.aspx" Text="Consultar" Width="100px" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" PostBackUrl="~/Paginas/CrmOcorrencias.aspx" Text="PDF" Width="100px" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button4" runat="server" PostBackUrl="~/Cliente/Menu4.aspx" Text="Voltar" Width="100px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    <hr />
</body>
</html>
