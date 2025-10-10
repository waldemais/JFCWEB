<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjudaColaborador.aspx.cs" Inherits="JFCWEB.Administrador.AjudaColaborador" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajuda Colaborador</title>
    <style type="text/css">
        .style1
        {
            color: #006600;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="color: #006600; font-size: large; font-weight: 700">
    
        Colaborador</div>
    <div class="style1">
        <ul>
            <li>Esta tela é usada para editar os dados de acesso ao sistema.</li>
            <li>A seleção é feita através do cnpj do parceiro e selecionando Pesquisar.</li>
            <li>Selecionando Editar é possível alterar a senha de acesso e efetuar o bloqueio 
                desmarcando o campo Ativo.</li>
        </ul>
    </div>
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/AjudaColab.jpg" 
            Width="100%" />
    </div>
    </form>
</body>
</html>
