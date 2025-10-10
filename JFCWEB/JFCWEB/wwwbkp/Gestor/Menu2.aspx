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
            height: 42px;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    <p align="center" title="Administrador">
                    &nbsp;<asp:ImageButton ID="ImageButton9" runat="server" ImageAlign="Right" 
                        ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="49px" />
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/ntsalads.png" 
                        Width="75px" />
                </p>
    <div class="auto-style1">
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Menu Gestores"></asp:Label>
    </div>
        <div class="clear">
            <div>
                <div style="height: 0px">
                    <table align="center" frame="above">
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
                    </table>
                    <hr />
                </div>
            </div>
        </div>
            </asp:Content>


