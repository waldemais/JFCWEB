<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu4.aspx.cs" Inherits="JFCWEB.DtEntrega" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        .auto-style1 {
            height: 23px;
            width: 191px;
            text-align: center;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            height: 23px;
            text-align: center;
        }
        .auto-style6 {
            width: 105px;
            text-align: center;
            height: 129px;
        }
        .auto-style7 {
            width: 105px;
            text-align: center;
        }
        .auto-style9 {
            width: 90px;
            text-align: center;
            height: 129px;
        }
        .auto-style10 {
            width: 58%;
            height: 225px;
        }
        .auto-style11 {
            width: 98px;
            text-align: center;
            height: 129px;
        }
        .auto-style12 {
            height: 23px;
            width: 105px;
        }
    </style>
</head>
<body style="background-color: #C0C0C0">
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel2" runat="server" Height="227px">
            <table style="width:100%;" align="center">
                <tr>
                    <td class="style7">
                        &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" 
                            style="text-align: justify" Width="70px" />
                        </td>
                </tr>
                <tr>
                    <td class="style34" align="center">
                        <asp:Image ID="Image1" runat="server" Height="82px" 
                            ImageUrl="~/Imagem/Logos _JFC.jpg" style="text-align: center" Width="100px" />
                    </td>
                </tr>
                <tr>
                    <td class="style34">
                        <asp:TextBox ID="TxtBx" runat="server" Enabled="False" onload="TxtBx_Load" Visible="False"></asp:TextBox>
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
                        <asp:Label ID="Label3" runat="server" Font-Names="Calibri" Font-Size="XX-Large" 
                            ForeColor="#61AC00" Text="PORTAL DE PEDIDOS"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="auto-style12">
                </td>
            <td class="auto-style1" colspan="2">
                <strong>
                <asp:Label ID="Label5" runat="server" Text="Menu Cliente" CssClass="auto-style2" ForeColor="#009933"></asp:Label>
                </strong>
                </td>
            <td class="style31">
                </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:ImageButton ID="ImageButton2" runat="server" BackColor="White" 
                    ImageUrl="~/Imagem/icons8-create-filled-48.png" Width="70px" 
                    onclick="ImageButton2_Click" />
                <br />
                <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Small" 
                    ForeColor="#003300" Text="Novo Pedido"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:ImageButton ID="ImageButton3" runat="server" BackColor="White" 
                    DescriptionUrl="~/Paginas/ConsultaPedido.aspx" 
                    ImageUrl="~/Imagem/icons8-compose-64.png" 
                    PostBackUrl="~/Paginas/MenuPedidos.aspx" Width="70px" />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Names="Calibri" Font-Size="Small" 
                    ForeColor="#003300" Text="Meus Pedidos"></asp:Label>
            </td>
            <td class="auto-style11">
                        <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/Imagem/crm.png" PostBackUrl="~/Paginas/Menucrm.aspx" Width="81px" Height="71px" />
                        <br />
                        <asp:Label ID="Label6" runat="server" Font-Names="Calibri" Font-Size="Small" Text="CRM"></asp:Label>
            </td>
            <td class="style37" style="text-align: center">
                <br />
                <asp:ImageButton ID="ImageButton4" runat="server" BackColor="White" 
                    ImageUrl="~/Imagem/icons8-profile-filled-50.png" Width="70px" 
                    PostBackUrl="~/Paginas/Perfil.aspx" />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Meu Perfil" Font-Names="Calibri" 
                    Font-Size="Small" ForeColor="#003300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                        <asp:ImageButton ID="ImageButton5" runat="server" BackColor="White" 
                            ImageUrl="~/Imagem/icons8-headset-filled-50.png" Width="70px" Visible="False" />
                        </td>
            <td class="style15" colspan="2">
                        <br />
                <asp:Label ID="Label7" runat="server" Font-Names="Calibri" Font-Size="Small" Text="Consulta CRM" Visible="False"></asp:Label>
            </td>
            <td style="text-align: center" class="style21">
                        <asp:ImageButton ID="ImageButton6" runat="server" BackColor="White" 
                            ImageUrl="~/Imagem/icons8-question-mark-filled-50.png" Width="70px" Visible="False" />
                        </td>
        </tr>
        <tr>
            <td class="auto-style7" style="text-align: center">
                &nbsp;</td>
            <td style="text-align: center" class="style15" colspan="2">
                        <br />
                        <br />
                    </td>
            <td style="text-align: center" class="style21">
                        <br />
                        <br />
                    </td>
        </tr>
    </table>
    <p style="text-align: center">
        <asp:Label ID="Labl5" runat="server" Font-Names="Verdana" Font-Size="Large" 
            ForeColor="#CC0000" style="text-align: left"></asp:Label>
    </p>
    </form>
</body>
</html>
