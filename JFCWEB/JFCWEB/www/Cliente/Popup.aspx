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
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
                <div>
                    <br />
                    <strong>Atenção clientes e amigos!<br />
                    <br />
                    <br />
                    Passando para falar sobre o feriado do dia do trabalho👷🏼‍♀👩🏼‍🍳👩🏽‍💻 
                    <br />
                    <br />
                    <br />
                    NÃO TEREMOS ENTREGAS NA SEGUNDA DIA 01/05/2023.<br />
                    <br />
                    <br />
                    Por isso, para quem recebe, na SEGUNDA.
                    <br />
                    Favor reforçar para a entrega de sexta, pois a proxima entrega sera na quarta dia 03/05.
                    <br />
                    <br />
                    Para as lojas que recebe pedidos na TERÇA.
                    <br />
                    A captação sera no sabado até as 10 horas.
                    <br />
                    <br />
                    PARA AS LOJAS DE SÃO PAULO
                    <br />
                    <br />
                    Quem for ter expediente na segunda, ja pode adiantar os pedidos no site&nbsp;.
                    <br />
                    <br />
                    Obrigada.
                    <br />
                    </strong>
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </asp:Panel>
        </div>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cliente/Menu4.aspx">Ir para o Portal de Pedidos</asp:HyperLink>
        </p>
    </form>
</body>
</html>
