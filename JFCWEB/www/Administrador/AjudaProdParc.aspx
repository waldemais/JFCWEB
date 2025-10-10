<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjudaProdParc.aspx.cs" Inherits="JFCWEB.Administrador.AjudaProdParc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: large;
            color: rgb(0, 102, 0);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong class="style1" 
            
            style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
        Cadastro de Produtos por&nbsp; Parceiro</strong></div>
    <div>
        <ul>
            <li style="color: #006600; font-size: large">Nesta tela cadastramos os produtos que 
                serão solicitados pelos parceiro para a emissão dos pedidos.</li>
        </ul>
        <p style="color: #006600; font-size: large; margin-left: 40px">
            Será permitido gerar o pedido apenas com os itens cadastrados nesta tela.</p>
        <p style="margin-left: 40px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/ProdParc01.jpg" 
                Width="700px" />
        </p>
        <p>
            &nbsp;</p>
    </div>
    </form>
</body>
</html>
