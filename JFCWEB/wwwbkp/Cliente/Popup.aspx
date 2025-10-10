<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Popup.aspx.cs" Inherits="JFCWEB.Cliente.Popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mensagem</title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
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
                    <strong>Boa tarde clientes e amigos do Rio de Janeiro!</strong><br />
                    <br />
                    Passando para falar sobre a programação de final de ano.<br />
                    <br />
                    <strong>NÃO TERMOS ENTREGAS NO SABADO DIA 24/12 E NO SABADO DIA 31/12
                    <br />
                    </strong>
                    <br />
                    ---Por isso, para quem recebe, na<strong> quarta e aos sabados</strong>.
                    <br />
                    recebera na terça e na quinta ( dia 20/12 e 22/12) (27/12 e 29/12) (favor fazer seus pedidos ate segunda as 10:00)
                    <br />
                    <br />
                    ---Para as lojas que recebe pedidos na <strong>terça, quinta e sabado </strong>
                    <br />
                    Favor reforçar seu pedido para a entrega de quinta ja que não teremos entregas no sababo.
                    <br />
                    <br />
                    ---Para as lojas que recebe pedidos na <strong>segunda, quarta e sexta</strong> para a entrega do 26/12 e dia 02/01,
                    <br />
                    A nossa captação sera na sexta feira dias 23/12 e dia 30/12.
                    <br />
                    <br />
                    <strong>PROGRAMAÇÃO SOMENTE PARA AS 2 ULTIMAS SEMANAS DO ANO</strong>.
                    <br />
                    <br />
                    <span class="auto-style1"><strong>SOMENTE PARA AS LOJAS DO RIO</strong></span>.<br />
                    <br />
                    <strong>LOJAS DE SÃO PAULO, FAVOR REALIZAR OS SEUS PEDIDOS NO SITE
                    <br />
                    <br />
                    <br />
                    </strong>
                    <br />
                    Boas festa🎅🏼🎄🎇</div>
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
