<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPedidos.aspx.cs" Inherits="JFCWEB.Paginas.MenuPedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 273px;
        }
        .auto-style2 {
            width: 244px;
        }
        .auto-style3 {
            width: 244px;
            text-align: center;
        }
        .auto-style4 {
            width: 273px;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                &nbsp;PEDIDOS - CONSULTAS<div>
                    <hr />
                </div>
            </div>
        </div>
        <div>
            <table style="width:100%;" align="center">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Paginas/ConsultaPedido.aspx">Consultar</asp:HyperLink>
                    </td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Paginas/Nfeemitidas.aspx">Status</asp:HyperLink>
                    </td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Cliente/Menu4.aspx">Voltar</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <div>
        <hr />
    </div>
</body>
</html>
