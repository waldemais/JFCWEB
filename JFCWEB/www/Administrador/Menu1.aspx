<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu1.aspx.cs" Inherits="JFCWEB.Administrador.Menu1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            height: 21px;
            text-align: center;
            width: 338px;
        }
        .style4
        {
            width: 234px;
            text-align: center;
        }
        .style5
        {
            width: 234px;
            height: 21px;
            text-align: center;
        }
        .style6
        {
            text-align: center;
            width: 338px;
        }
        .style8
        {
            width: 338px;
        }
        .style9
        {
            text-align: center;
            width: 397px;
        }
        .style10
        {
            height: 21px;
            text-align: center;
            width: 397px;
        }
        .style11
        {
            text-align: center;
            width: 280px;
        }
        .style12
        {
            height: 21px;
            text-align: center;
            width: 280px;
        }
        .style13
        {
            width: 280px;
        }
        .auto-style1 {
            height: 36px;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            height: 42px;
            text-align: center;
        }
        .auto-style4 {
            height: 69px;
        }
        .auto-style5 {
            height: 254px;
        }
        .auto-style6 {
            width: 280px;
            height: 21px;
        }
        .auto-style7 {
            width: 338px;
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    <p align="center" title="Administrador" class="auto-style4">
                    &nbsp;<asp:ImageButton ID="ImageButton9" runat="server" ImageAlign="Right" 
                        ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="49px" />
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/Logos _JFC.jpg" 
                        Width="90px" />
                </p>
        <div class="auto-style3">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Menu Administrador"></asp:Label>
    </div>
        <div class="clear">
            <div>
                <div style="height: 0px">
                    <table align="center" frame="above" class="auto-style5">
                        <tr>
                            <td class="style9">
                                <asp:ImageButton ID="ImageButton3" runat="server" 
                                    ImageUrl="~/Imagem/icons8-profile-filled-50.png" 
                                    PostBackUrl="~/Paginas/Parceiro.aspx" />
                            </td>
                            <td class="style4">
                                &nbsp;
                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                    ImageUrl="~/Imagem/icons8-document-48.png" style="margin-left: 19px" 
                                    PostBackUrl="~/Paginas/Produto.aspx" />
                            </td>
                            <td class="style11">
                                <asp:ImageButton ID="ImageButton7" runat="server" Height="54px" 
                                    ImageUrl="~/Imagem/Icons_250x250px-27.png" 
                                    PostBackUrl="~/Paginas/Tabproduto.aspx" Width="73px" />
                            </td>
                            <td class="style6">
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    ImageUrl="~/Imagem/icons8-create-filled-48.png" 
                                    PostBackUrl="~/Administrador/Grade1.aspx" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                Parceiros</td>
                            <td class="style4">
                                Produtos</td>
                            <td class="style11">
                                Produtos X Parceiros</td>
                            <td class="style6">
                                Programação 
                                de Entrega</td>
                        </tr>
                        <tr>
                            <td class="style10">
                            </td>
                            <td class="style5">
                                </td>
                            <td class="style12">
                                </td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:ImageButton ID="ImageButton4" runat="server" 
                                    ImageUrl="~/Imagem/icons8-compose-64.png" 
                                    PostBackUrl="~/Administrador/AdmPedidos.aspx" />
                            </td>
                            <td class="style4">
                                <asp:ImageButton ID="ImageButton6" runat="server" 
                                    ImageUrl="~/Imagem/Exportar.png" Width="20%" 
                                    PostBackUrl="~/Administrador/ExportaExcel.aspx" />
                            </td>
                            <td class="style11">
                                <asp:ImageButton ID="ImageButton5" runat="server" 
                                    ImageUrl="~/Imagem/icons8-menu-48.png" 
                                    PostBackUrl="~/Administrador/Usuario.aspx" />
                            </td>
                            <td class="style6">
                                <asp:ImageButton ID="ImageButton10" runat="server" 
                                    ImageUrl="~/Imagem/icons8-question-mark-filled-50.png" 
                                    PostBackUrl="~/Administrador/Ajudaadm.aspx" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                Pedidos</td>
                            <td class="style4">
                                Exportar / Prévia</td>
                            <td class="style13" style="text-align: center">
                                Usuários</td>
                            <td class="style8" style="text-align: center">
                                Ajuda</td>
                        </tr>
                        <tr>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style13" style="text-align: center">
                                &nbsp;</td>
                            <td class="style8" style="text-align: center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/Imagem/crm.png" PostBackUrl="~/Paginas/CRM1.aspx" Width="20%" />
                            </td>
                            <td class="style4">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DefaultVB.aspx" Visible="False">Importador de Notas</asp:HyperLink>
                            </td>
                            <td class="style13" style="text-align: center">
                                &nbsp;</td>
                            <td class="style8" style="text-align: center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style10">
                                CRM</td>
                            <td class="style5">
                                </td>
                            <td class="auto-style6" style="text-align: center">
                                </td>
                            <td class="auto-style7" style="text-align: center">
                                </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
            </asp:Content>


