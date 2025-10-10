<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjudaPrograma.aspx.cs" Inherits="JFCWEB.Administrador.AjudaIteParc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajuda Programação</title>
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
    <div style="color: #006600; font-weight: 700; font-size: large">
    
        Programação de Entrega</div>
    <div style="color: #006600; font-size: large">
        <ul>
            <li>Para cumprir os prazos de entrega dos pedidos será necessário uma programação 
                para limites de data de pedido.</li>
            <li>Digite o código do parceiro e Pesquisar. Se não houver programação cadastrada 
                para o parceiro, deverá selecionar Programar que um programa padrão será 
                gravado.</li>
        </ul>
    </div>
    <div style="color: #006600">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/progr02.jpg" 
            Width="100%" />
    </div>
    <div>
        <ul>
            <li style="color: #006600; font-size: large">Ao selecionar programar será criado 
                automaticamente uma tabela inicial com um horário padrão de 15:00 horas iniciais 
                de preparação para saída do produto.</li>
            <li style="color: #006600; font-size: large">Este tempo de preparação deverá ser 
                informado da seguinte forma:</li>
        </ul>
        <div>
            <span class="style1">Hora Programada:<br />
            É compreendido pelo tempo em horas que a produção precisa para o preparo do 
            produto. (seleção, embalagem e faturamento).<br />
            exemplo:</span><br class="style1" />
            <span class="style1">24:00 - <strong>15:00 </strong>= 09:00 horas (o pedido só 
            poderá ser feito até as 09:00 horas do dia anterior a data de entrega.)<br />
            24:00 - <strong>39:00</strong> = 09:00 horas (o pedido só poderá ser feito até 
            as 09:00 horas de dois dias anteriores a data de entrega.)<br />
            <br />
            Hora Limite:<br />
            É o horário limite para gravar o pedido conforme a Hora Programada informada.<br />
            </span>
            <br class="style1" />
            <span class="style1">Dia Limite:</span><br class="style1" />
            <span class="style1">É o dia limite para a finalização do pedido conforme a Hora 
            Programada informada.</span><br />
        </div>
    </div>
    <div>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagem/progr03.jpg" 
            Width="100%" />
    </div>
    <div class="style1">
        <br />
        A programação em si consiste em pesquisar o parceiro e informar uma das opções 
        padrões pré estabelecidas ou efetuar manualmente selecionando Editar localizado 
        na parte inferior referente ao dia da semana que deseja programar.<br />
        Ao clicar em Selecionar é efetuado o cálculo para consulta.<br />
    </div>
    <div>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Imagem/progr04.jpg" 
            Width="100%" />
    </div>
    </form>
</body>
</html>
