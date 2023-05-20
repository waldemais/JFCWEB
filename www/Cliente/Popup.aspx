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
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            font-size: x-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style5">
            <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" ClientIDMode="Static">
                <div>
                    <div class="auto-style2">
                        <br />
                        <h2><strong>
                            <asp:Label ID="Label1" runat="server" Text="Atenção Clientes e Parceiros!"></asp:Label>
                            </strong></h2>
                        <br />
                        <br />
                    </div>
                    <div class="auto-style2">
                        <span class="auto-style6">
                        <strong>
                        <asp:Image ID="Image1" runat="server" Height="109px" ImageUrl="~/Imagem/grupo.png" Width="194px" />
                        </strong></span><span class="auto-style6"><strong>
                        <br />
                        </strong></span><br />
                        Devido a um novo direcionamento da empresa para melhorar ainda mais o atendimento, os pedidos da JFC precisam ser enviados com D+ 2 ( dois dias antes da entrega ).<br /> &nbsp;Algumas redes já são dessa forma. A partir da entrega do dia 02/12/24 já estaremos nesse modelo e pedimos a compreensão de todos!<br /> &nbsp;(Os dias de entrega permanecem os mesmo. Só o que muda será os dias limites para fazerem pedidos.).<br /> Favor sempre realizar seus pedidos através do site https://jfcverduras.com.br<br />
                        <br />
                        <strong>BK de SP<br /> </strong>Favor verificar com Talita,.<br />
                        <br />
                        <strong>Bk de PR
                        <br />
                        </strong>Permanecem nos mesmo dias.<br />
                        <br />
                        <strong>Para o BK do Rio de Janeiro
                        <br />
                        </strong>Para receber na segunda-feira, pedido feito ate as 10:00 na sexta-feira.<br /> Para receber na terça-feira, pedido feito ate as 10:00 na sabado.<br /> Para receber na quarta-feira, pedido feito ate as 10:00 na segunda-feira.<br /> Para receber na quinta-feira, pedido feito ate as 10:00 na terça-feira.<br /> Para receber na sexta-feira, pedido feito ate as 10:00 na quarta-feira.<br /> Para receber na sábado, pedido feito ate as 10:00 na quinta-feira<br />
                        <br />
                    </div>
                </div>
            </asp:Panel>
        </div>
        <p class="auto-style2">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cliente/Menu4.aspx" CssClass="auto-style4">Ir para o Portal de Pedidos</asp:HyperLink>
        </p>
        <p class="auto-style2">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagem/Natal.png" Width="20%" />
        </p>
        <p class="auto-style2">
            &nbsp;</p>
    </form>
</body>
</html>
