<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjudaVerPedidos.aspx.cs" Inherits="JFCWEB.Administrador.AjudaVerPedidos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajuda Pedidos</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="color: #006600; font-weight: 700; font-size: large">
    
        Consulta Pedidos</div>
    <div style="color: #006600; font-size: large">
        <ul>
            <li>A consulta lista todos os pedidos cadastrados que estão com status Abertos, 
                Cancelados ou Finalizados.<br />
                por regra apenas os pedidos Abertos podem ser atualizados .</li>
            <li>Para visualizar o pedido click com o mouse em Selecione.</li>
        </ul>
    </div>
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/AjudaLpedidos.jpg" 
            Width="100%" />
    </div>
    </form>
</body>
</html>
