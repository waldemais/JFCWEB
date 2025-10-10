<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="JFCWEB._Default" %>
   
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

    <style type="text/css">
    .style3
    {
        font-family: Verdana;
        font-size: large;
    }
    .style4
    {
            width: 298px;
        }
    .style5
    {
        font-family: Verdana;
        font-size: large;
        width: 315px;
    }
    .style6
    {
        width: 315px;
            text-align: left;
        }
    .style7
    {
        width: 298px;
        height: 38px;
    }
    .style8
    {
        font-family: Verdana;
        font-size: large;
        width: 315px;
        height: 38px;
            text-align: left;
        }
    .style9
    {
        height: 38px;
    }
    .style11
    {
            width: 315px;
            height: 48px;
            text-align: center;
        }
    .style13
    {
        height: 48px;
    }
        .style14
        {
            width: 298px;
            height: 48px;
        }
    .style15
    {
        color: #418200;
            text-align: left;
        }
    .style16
    {
        font-size: xx-large;
        color: #418200;
            width: 842px;
            text-align: center;
            margin-left: 40px;
        }
        .auto-style9 {
            width: 121px;
            height: 32px;
        }
        .auto-style10 {
            text-align: center;
            height: 384px;
        }
    .auto-style11 {
        width: 100%;
        height: 454px;
            margin-top: 20px;
        }
    .auto-style12 {
        margin-left: 0px;
    }
        .auto-style15 {
            height: 34px;
        }
        .auto-style16 {
            width: 619px;
            height: 384px;
        }
        .auto-style18 {
            width: 619px;
            height: 42px;
        }
        .auto-style20 {
            color: #1C401C;
            text-align: left;
            font-weight: normal;
        }
        .auto-style21 {
            margin-top: 8px;
        }
        .auto-style22 {
            color: #1C401C;
            text-align: left;
            font-weight: normal;
            font-size: small;
        }
        .auto-style23 {
            color: #1C401C;
            font-size: large;
        }
        .auto-style24 {
            font-size: x-small;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <p style="background-color: #008000" class="auto-style15">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="White" Text="Portal de Pedidos" Height="16px" Width="226px" CssClass="auto-style21"></asp:Label>
        <br />
        <table class="auto-style11" align="right">
            <tr>
                <td class="auto-style16" style="border-style: double; border-color: #1F431F; background-position: center; background-image: url('Imagem/jfcverduras.jpg'); background-repeat: no-repeat; background-color: #008000;"></td>
                <td class="auto-style10" style="border-color: #1C401C; border-style: double; background-color: #FFFFFF;">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Size="Medium" ForeColor="#1C401C" Text="Faça o Login"></asp:Label>
                    <span class="style3"><span class="auto-style20"><strong>
                    <br />
                    <br />
                    CNPJ/CPF<br />
                    </strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style24" Font-Size="8pt" Text="Somente Números"></asp:Label>
                    <strong>
                    <br />
                    </strong>
                    </span></span><asp:TextBox ID="TBox1" 
                        runat="server" style="font-family: Calibri; font-size: medium" 
                        Font-Names="Verdana" Font-Size="Medium" Font-Strikeout="False" 
                        ForeColor="#003300" Width="150px" CssClass="auto-style12"></asp:TextBox>
                    <br />
                    <br />
                    <span class="auto-style20"><span class="style3"><strong>SENHA</strong></span><strong><br />
                    </strong>
                    </span>
                    <span class="style15">
                    <asp:TextBox ID="TBox2" runat="server" 
                        style="font-family: Calibri; font-size: medium" TextMode="Password" 
                        Font-Names="Verdana" Font-Size="Medium" Font-Strikeout="False" 
                        ForeColor="#003300" Width="150px"></asp:TextBox>
                    <br />
                    <br />
                    <IMG alt="" src="Captcha.aspx" class="auto-style9" width="150"><br />
                    <br />
                    <span class="auto-style22"><strong>DIGITE A CAPTCHA</strong></span><br />
       
                  
                    <asp:TextBox ID="TextBox1" runat="server" With="100px" Height="25px" 
                        Width="150px" Font-Size="Medium" 
                        style="text-align: center; color: #006600; background-color: #FFFF99" TextMode="Password"></asp:TextBox>
       
                  
                    <br />
                    </span>
                    <br />
                  
                        <asp:Button ID="Btt1" runat="server" onclick="Btt1_Click" Text="Login" 
                        Height="36px" Width="150px" BackColor="#006600" Font-Size="Large" 
                        ForeColor="White" Font-Bold="True" />
                    <br />
                    <asp:Label ID="Lb1" runat="server" Font-Names="Verdana" Font-Size="Medium" 
                        style="text-align: center; color: #006600;" Font-Bold="True"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    </td>
            </tr>
            </table>
</p>
    </asp:Content>
