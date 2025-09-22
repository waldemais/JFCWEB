<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu4.aspx.cs" Inherits="JFCWEB.DtEntrega"  ValidateRequest="false"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu</title>
    <style type="text/css">
        .style7
        {
            height: 99px;
            width: 623px;
            text-align: right;
        }
        .style15
        {
            width: 191px;
            text-align: center;
        }
        .style21
        {
            width: 95px;
        }
        .style24
        {
            height: 23px;
            width: 191px;
        }
        .style29
        {
            width: 88px;
            text-align: center;
        }
        .style30
        {
            height: 23px;
            width: 88px;
        }
        .style31
        {
            height: 23px;
            width: 95px;
        }
        .style34
        {
            width: 623px;
            text-align: center;
        }
        .style35
        {
            width: 88px;
            text-align: center;
            height: 129px;
        }
        .style36
        {
            width: 191px;
            text-align: center;
            height: 129px;
        }
        .style37
        {
            width: 95px;
            height: 129px;
        }
        .auto-style3 {
            height: 67px;
            text-align: center;
        }
        .auto-style6 {
            width: 105px;
            height: 71px;
        }
        .auto-style7 {
            width: 105px;
            text-align: center;
            height: 23px;
        }
        .auto-style9 {
            width: 90px;
            text-align: center;
            height: 71px;
        }
        .auto-style10 {
            width: 87%;
            height: 225px;
        }
        .auto-style11 {
            width: 98px;
            text-align: center;
            height: 71px;
        }
        .auto-style12 {
            width: 95px;
            height: 71px;
        }
        .auto-style16 {
            width: 330px;
        }
        .auto-style17 {
            height: 84px;
            width: 623px;
            text-align: right;
        }
        .auto-style18 {
            width: 191px;
            text-align: right;
            height: 63px;
        }
        .auto-style19 {
            width: 105px;
            text-align: center;
            height: 63px;
        }
        .auto-style20 {
            width: 95px;
            height: 63px;
            text-align: center;
        }
        .auto-style21 {
            text-align: center;
        }
        .auto-style22 {
            width: 191px;
            text-align: center;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" title="Principal">
    <div>
        <asp:Panel ID="Panel2" runat="server" Height="170px">
            <table style="width:100%;" align="center">
                <tr>
                    <td class="auto-style17">
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style16">
                                    <asp:Image ID="Image1" runat="server" Height="60px" ImageAlign="Left" ImageUrl="~/Imagem/grupo.png" Width="60px" />
                                </td>
                                <td align="center">
                                    &nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" style="text-align: justify" Width="30px" Height="40px" ImageAlign="Right" />
                                </td>
                            </tr>
                        </table>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style34">
                        <asp:TextBox ID="TxtBx" runat="server" Enabled="False" onload="TxtBx_Load" Visible="False"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label3" runat="server" BackColor="#CCCCCC" BorderStyle="None" Font-Names="Calibri" Font-Size="XX-Large" Text="Menu Principal"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <table style="background-position: center; background-color: #FFFFFF; background-image: inherit; background-repeat: no-repeat; background-attachment: fixed;" 
        align="center" frame="box" 
        title="Menu Principal" class="auto-style10">
        <tr>
            <td class="auto-style3" colspan="4">
                        &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" align="center">
                <asp:Button ID="Button1" runat="server" EnableTheming="False" Text="Novo Pedido" Width="150px" OnClick="Button1_Click" />
            </td>
            <td class="auto-style9" align="center">
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/Paginas/MenuPedidos.aspx" Text="Consultar Pedidos" Width="150px" />
            </td>
            <td class="auto-style11" align="center">
                        <asp:Button ID="Button3" runat="server" PostBackUrl="~/Paginas/Menucrm.aspx" Text="CRM" Width="150px" />
            </td>
            <td class="auto-style12" style="text-align: center" align="center">
                <asp:Button ID="Button4" runat="server" Text="Alterar Senha" Width="150px" OnClick="Button4_Click" PostBackUrl="~/Paginas/Perfil.aspx" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                        </td>
            <td class="auto-style22" colspan="2">
                        <br />
            </td>
            <td style="text-align: center" class="style31">
                        </td>
        </tr>
        <tr>
            <td class="auto-style19" style="text-align: center">
                </td>
            <td style="text-align: inherit" class="auto-style18" colspan="2">
                        <br />
                    </td>
            <td class="auto-style20">
        <asp:Label ID="Labl5" runat="server" Font-Names="Verdana" Font-Size="Small" 
            ForeColor="White" style="text-align: left" Width="149px" BackColor="#48C857" Enabled="False" Height="34px">Fale com o Comercial pelo Whatsapp</asp:Label>
                        <br />
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="~/Imagem/whatsapp.jpeg" Width="40px" OnClick="ImageButton2_Click" OnClientClick=" http://api.whatsapp.com/send?1=pt_BR&amp;phone=5521990019227" />
                    </td>
        </tr>
    </table>
        <div class="auto-style21">
            <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Microsoft Himalaya" Font-Size="X-Large" ForeColor="#006600" Text="Desenvolvedor Waldeck Silva | (21) 99001-9227" style="font-size: medium; color: #999999"></asp:Label>
        </div>
    <p class="auto-style21">
        &nbsp;</p>
    </form>
</body>
</html>
