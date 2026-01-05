<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="JFCWEB._Default" %>
   
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
   
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
            width: 116px;
            height: 24px;
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style10 {
            text-align: center;
            height: 350px;
        }
    .auto-style11 {
        width: 100%;
        height: 486px;
            margin-top: 20px;
        }
    .auto-style12 {
        margin-left: 0px;
    }
        .auto-style24 {
            height: 2px;
        }
        .auto-style25 {
        height: 49px;
    }
    .auto-style26 {
        height: 17px;
    }
        .auto-style30 {
            height: 25px;
            text-align: center;
        }
        .auto-style32 {
            height: 149px;
        }
        .auto-style33 {
            width: 100%;
            height: 95%;
            margin-left: 0px;
        }
        .auto-style34 {
            height: 23px;
        }
        .auto-style35 {
            height: 29px;
        }
        .auto-style36 {
            height: 37px;
            text-align: center;
            font-weight: normal;
            color: #000000;
        }
        .auto-style37 {
            width: 562px;
        }
        .auto-style38 {
            height: 34px;
        }
        </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <p class="auto-style24">
        <table class="auto-style11" align="right" frame="box">
            <tr>
                <td class="auto-style10" style="border-color: #006600; border-style: double; width: 50%;">
                    <table align="right" class="auto-style33">
                        <tr>
                            <td class="auto-style37" rowspan="10">
                                <br />
                                <asp:TextBox ID="TextBox2" runat="server" Height="414px" style="margin-top: 0px" TextMode="MultiLine" Width="543px">LINK PARA ACESSAR O SITE:
https://jfcverduras.com.br/

CONTATOS SÃO PAULO:
JOSY    - 11 96841-7287
CAMILA  - 11 97849-1012
LARISSA - 11 99941-3076

CONTATOS RIO DE JANEIRO:
DUANE   - 21 97367-0250
SABRINE - 21 97366-9509




</asp:TextBox>
                            </td>
                            <td class="auto-style32" style="border-top-style: inherit; border-right-style: inherit; border-bottom-style: inherit; border-left-style: solid; border-top-width: inherit; border-right-width: inherit; border-bottom-width: inherit; border-left-width: thin">
                    <img alt="" src="Imagem/Logogrupo.png" style="height: 64px; width: 93px" /><br />
                                <asp:Label ID="Label6" runat="server" Enabled="False" Font-Size="X-Large" Text="PORTAL DE PEDIDOS" ForeColor="#006600"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style34" style="border-top-style: inherit; border-right-style: inherit; border-bottom-style: inherit; border-left-style: solid; border-top-width: inherit; border-right-width: inherit; border-bottom-width: inherit; border-left-width: thin">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style30" style="border-top-style: inherit; border-right-style: inherit; border-bottom-style: inherit; border-left-style: solid; border-top-width: inherit; border-right-width: inherit; border-bottom-width: inherit; border-left-width: thin">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style38" style="border-top-style: inherit; border-right-style: inherit; border-bottom-style: inherit; border-left-style: solid; border-top-width: inherit; border-right-width: inherit; border-bottom-width: inherit; border-left-width: thin">
                                <asp:Label ID="Label4" runat="server" Text="CNPJ"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TBox1" 
                        runat="server" style="font-family: Calibri; font-size: medium" 
                        Font-Names="Verdana" Font-Size="Medium" Font-Strikeout="False" 
                        ForeColor="#003300" Width="150px" CssClass="auto-style12"></asp:TextBox>
                                <ajaxToolkit:MaskedEditExtender ID="TBox1_MaskedEditExtender" runat="server" BehaviorID="TBox1_MaskedEditExtender" Century="2000" CultureAMPMPlaceholder="" CultureCurrencySymbolPlaceholder="" CultureDateFormat="" CultureDatePlaceholder="" CultureDecimalPlaceholder="" CultureThousandsPlaceholder="" CultureTimePlaceholder="" InputDirection="RightToLeft" Mask="99,999,999/9999-99" TargetControlID="TBox1">
                                </ajaxToolkit:MaskedEditExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style30" style="border-top-style: inherit; border-right-style: inherit; border-bottom-style: inherit; border-left-style: solid; border-top-width: inherit; border-right-width: inherit; border-bottom-width: inherit; border-left-width: thin">
                                <asp:Label ID="Label5" runat="server" Text="SENHA"></asp:Label>
                            &nbsp;
                    <span class="style15">
                    <asp:TextBox ID="TBox2" runat="server" 
                        style="font-family: Calibri; font-size: medium" TextMode="Password" 
                        Font-Names="Verdana" Font-Size="Medium" Font-Strikeout="False" 
                        ForeColor="#003300" Width="150px"></asp:TextBox>
                    </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style35" style="border-top-style: inherit; border-right-style: inherit; border-bottom-style: inherit; border-left-style: solid; border-top-width: inherit; border-right-width: inherit; border-bottom-width: inherit; border-left-width: thin">
                                <span class="style15">
       
                  
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/system-lock-screen.png" Width="28px" Height="31px" />
                    &nbsp;&nbsp;
                    <IMG alt="" src="Captcha.aspx" class="auto-style9">&nbsp;
       
                  
                    </span>
                            </td>
                        </tr>
                        <tr>
                            <td style="border-top-style: inherit; border-right-style: inherit; border-bottom-style: inherit; border-left-style: solid; border-top-width: inherit; border-right-width: inherit; border-bottom-width: inherit; border-left-width: thin"><span class="style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
                  
                    <asp:TextBox ID="TextBox1" runat="server" With="100px" Height="25px" 
                        Width="150px" Font-Size="Medium" 
                        style="text-align: center; color: #006600; background-color: #FFFF99" TextMode="Number"></asp:TextBox>
       
                  
                    </span>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25" style="border-top-style: inherit; border-right-style: inherit; border-bottom-style: inherit; border-left-style: solid; border-top-width: inherit; border-right-width: inherit; border-bottom-width: inherit; border-left-width: thin">
                  
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
                        <asp:Button ID="Btt1" runat="server" onclick="Btt1_Click" Text="Entrar" 
                        Height="36px" Width="150px" BackColor="#006600" Font-Size="Large" 
                        ForeColor="White" Font-Bold="True" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style26" style="border-top-style: inherit; border-right-style: inherit; border-bottom-style: inherit; border-left-style: solid; border-top-width: inherit; border-right-width: inherit; border-bottom-width: inherit; border-left-width: thin">
                  
                    <asp:Label ID="Lb1" runat="server" Font-Names="Verdana" Font-Size="Medium" 
                        style="text-align: center; color: #006600;" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style36" style="border-top-style: inherit; border-right-style: inherit; border-bottom-style: inherit; border-left-style: solid; border-top-width: inherit; border-right-width: inherit; border-bottom-width: inherit; border-left-width: thin">
                                Versão 1.231225.1000</td>
                        </tr>
                    </table>
                </td>
            </tr>
            </table>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
</p>
    </asp:Content>
