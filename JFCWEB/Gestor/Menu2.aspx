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
            text-align: center;
            margin-top: 30px;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    <p align="center" title="Administrador">
                    &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/ntsalads.png" 
                        Width="75px" />
                    <asp:ImageButton ID="ImageButton9" runat="server" ImageAlign="Right" 
                        ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="50px" />
                </p>
    <div class="auto-style1">
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Menu Principal"></asp:Label>
    </div>
        <div class="clear">
            <div>
                <div style="height: 0px">
                    <table align="center" frame="above">
                        <tr>
                            <td class="style9">
                                <asp:Button ID="Button1" runat="server" PostBackUrl="~/Paginas/Parceiro.aspx" Text="Parceiros" Width="150px" />
                            </td>
                            <td class="style4">
                                <asp:Button ID="Button2" runat="server" PostBackUrl=" ~/Paginas/Produto.aspx" Text="Produtos" Width="150px" />
                                &nbsp;
                                </td>
                            <td class="style11">
                                <asp:Button ID="Button3" runat="server" PostBackUrl="~/Paginas/Tabproduto.aspx" Text="Produtos por Parceiros" Width="150px" />
                            </td>
                            <td class="style6">
                                <asp:Button ID="Button4" runat="server" PostBackUrl="~/Administrador/Grade1.aspx" Text="Programar Entrega" Width="150px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                &nbsp;</td>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style11">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
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
                                <asp:Button ID="Button5" runat="server" PostBackUrl="~/Administrador/AdmPedidos.aspx" Text="Pedidos" Width="150px" />
                            </td>
                            <td class="style4">
                                <asp:Button ID="Button6" runat="server" PostBackUrl="~/Administrador/ExportaExcel.aspx" Text="Planilhas" Width="150px" />
                            </td>
                            <td class="style11">
                                <asp:Button ID="Button7" runat="server" PostBackUrl="~/Administrador/Usuario.aspx" Text="Parceiros" Width="150px" />
                            </td>
                            <td class="style6">
                                <asp:Button ID="Button8" runat="server" PostBackUrl="~/Paginas/CRM1.aspx" Text="CRM" Width="150px" />
                            </td>
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


