<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Popup.aspx.cs" Inherits="JFCWEB.Cliente.Popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mensagem</title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            font-size: x-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style5">
            <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" ClientIDMode="Static">
                <div>
                    <div class="auto-style2">
                        <br />
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagem/Imagem do WhatsApp de 2025-02-25 à(s) 16.37.54_30e628c8.jpg" />
                        <br />
                    </div>
                </div>
            </asp:Panel>
        </div>
        <p class="auto-style2">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cliente/Menu4.aspx" CssClass="auto-style4">Ir para o Portal de Pedidos</asp:HyperLink>
        </p>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            &nbsp;</p>
    </form>
</body>
</html>
