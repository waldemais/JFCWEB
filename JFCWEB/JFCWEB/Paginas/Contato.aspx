<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="JFCWEB.Paginas.CONTATO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="PnlPopup" runat="server">
                <asp:Label ID="Label1" runat="server" Text="FORMULÁRIO DE CONTATO"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:TextBox ID="Txtpopup" runat="server" Height="260px" TextMode="MultiLine" Width="567px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Btpopup" runat="server" OnClick="Btpopup_Click" Text="Enviar" />
                <br />
            </asp:Panel>
        </div>
    </form>
    <div></div>
</body>
</html>
