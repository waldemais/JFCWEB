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
            color: #0000FF;
        }
        .MsoNormal {
            text-align: justify;
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
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagem/grupo.png" Width="101px" Height="59px" />
                        <br />
                        <br />
                        <br />
                        <strong><span class="auto-style6">Comunicado Importante </span>
                        <br class="auto-style6" />
                        </strong>
                        <br />
                        <p class="MsoNormal">
                            <span style="font-size: 12.0pt; font-family: &quot;Helvetica&quot;,sans-serif; color: #73737D; text-align: justify;">Olá!
                            <br />
                            Com o objetivo de manter a esstabilidade dos pedidos<br />
                            &nbsp;<br />
                            <br />
                            O tempo estimado para a atividade é de <b>4 horas</b>. No entanto, caso surja alguma dificuldade, esse período poderá ser estendido por até mais <b>2 horas adicionais</b>, visando evitar transtornos e permitindo a execução de um rollback, se necessário.
                            <br />
                            <br />
                            Agradecemos desde já pela compreensão e colaboração de todos, e pedimos atenção especial ao período informado para que possam se programar. </span><span style="font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:white">
                            <p></p>
                            </span>
                            <p>
                            </p>
                            <br />
                            <p>
                            </p>
                        </p>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <p class="auto-style2">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cliente/Menu4.aspx" CssClass="auto-style4">Ir para o Portal de Pedidos</asp:HyperLink>
        </p>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            &nbsp;</p>
    </form>
</body>
</html>
