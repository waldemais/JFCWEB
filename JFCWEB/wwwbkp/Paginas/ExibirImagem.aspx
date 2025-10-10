<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExibirImagem.aspx.cs" Inherits="JFCWEB.Paginas.ExibirImagem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TB1" runat="server"></asp:TextBox>
        </div>
        <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/Imagem/crm.png">
        </asp:ImageMap>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Fotos/fundo.jpg" />
    </form>
</body>
</html>
