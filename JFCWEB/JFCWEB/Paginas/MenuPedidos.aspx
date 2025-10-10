<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPedidos.aspx.cs" Inherits="JFCWEB.Paginas.MenuPedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 273px;
            color: #FFFFFF;
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
        .auto-style6 {
            height: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style6">
                &nbsp;<table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <div>
                    <hr />
                </div>
            </div>
        </div>
        <div>
            <table style="width:100%; background-color: #77A364;" align="center">
                <tr>
                    <td class="auto-style1">PEDIDOS - CONSULTAS</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Height="30px" PostBackUrl="~/Paginas/ConsultaPedido.aspx" Text="Consultar" Width="120px" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Button2" runat="server" Height="30px" PostBackUrl="~/Paginas/Nfeemitidas.aspx" Text="Resumo" Width="120px" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="Button3" runat="server" Height="30px" PostBackUrl="~/Cliente/Menu4.aspx" Text="Menu" Width="120px" />
                    </td>
                </tr>
                </table>
        </div>
    </form>
    </body>
</html>
