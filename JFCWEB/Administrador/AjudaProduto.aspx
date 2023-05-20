<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjudaProduto.aspx.cs" Inherits="JFCWEB.Administrador.AjudaProduto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: large;
            color: #006600;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>Cadastro de Produtos</strong></div>
    <div class="style1">
        <ul>
            <li>Nesta tela é exibido uma lista com os produtos cadastrados que serão utilizados 
                na seleção dos parceiros cadastrados.</li>
        </ul>
        <p style="margin-left: 40px">
            Para cadastrar um novo produto, deverá digitar no campo Código e no campo 
            Descrição e clicar em Insert.</p>
        <p style="margin-left: 40px">
            Obs.: Para cadastro de grandes volumes deverá ser solicitado ao Departamento de 
            TI.</p>
    </div>
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/Prod01.jpg" 
            Width="800px" />
        <br />
        <hr />
        <ul>
            <li>Após informar o código e filtrar o produto será permitido fazer alterações no 
                item.</li>
        </ul>
        <p>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagem/Prod02.jpg" 
                Width="800px" />
            <br />
        </p>
    </div>
    </form>
    </body>
</html>
