<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjudaPrevia.aspx.cs" Inherits="JFCWEB.Administrador.AjudaPrevia" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajuda Previa</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="color: #006600; font-weight: 700; font-size: large">
    
        Exporta Pedidos &amp; Prévia</div>
    <div style="color: #006600; font-size: large">
        <ul>
            <li>Nesta tela são filtrados todos os pedidos &quot;Abertos&quot; conforme a data selecionada, 
                permitindo exportar uma planilha da prévia ou planilha de pedidos.</li>
            <li>No momento da exportação dos pedidos o status será alterado para finalizado não 
                permitindo efetuar alteração no mesmo.</li>
        </ul>
        <p style="margin-left: 40px">
            Para ver os produtos solicitados e a prévia para o dia, o usuário deverá 
            selecionar uma data válida no calendário e a visualização será imediata.</p>
        <p style="margin-left: 40px">
            Selecione &quot;Exportar Pedidos&quot; para exportar a planilha e Finalizar os pedidos.</p>
        <p style="margin-left: 40px">
            Selecione &quot;Exportar Prévia&quot; Para exportar a planilha da prévia do dia.</p>
    </div>
    <div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/AjudaPrevia.jpg" 
            Width="100%" />
    </div>
    </form>
</body>
</html>
