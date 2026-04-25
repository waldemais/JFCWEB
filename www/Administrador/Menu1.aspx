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
        .auto-style8 {
            height: 21px;
            text-align: center;
            font-size: large;
        }
        .auto-style9 {
            width: 202px;
        }
        .auto-style10 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
        <div class="clear">
            <div>
                <div style="height: 0px" title="Menu Principal">
                    <table align="center" frame="above" class="auto-style5">
                        <tr>
                            <td class="auto-style8" colspan="4">
                                <table style="width:100%;">
                                    <tr>
                                        <td class="auto-style9">
                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/grupo.png" Width="100px" />
                                        </td>
                                        <td>Menu Principal<br />
                                        </td>
                                        <td class="auto-style10">
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="45px" />
                                        </td>
                                    </tr>
                                </table>
                                <hr />
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
                            <td class="style9">
                                <asp:Button ID="Button1" runat="server" PostBackUrl="~/Paginas/Parceiro.aspx" Text="Parceiros" Width="150px" />
                            </td>
                            <td class="style4">
                                <asp:Button ID="Button2" runat="server" PostBackUrl="~/Paginas/Produto.aspx" Text="Produtos" Width="150px" />
                                &nbsp;
                                </td>
                            <td class="style11">
                                <asp:Button ID="Button3" runat="server" PostBackUrl="~/Paginas/Tabproduto.aspx" Text="Produtos X Parceiros" Width="150px" />
                            </td>
                            <td class="style6">
                                <asp:Button ID="Button4" runat="server" PostBackUrl="~/Administrador/Grade1.aspx" Text="Programa de Entregas" Width="150px" />
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
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Button ID="Button12" runat="server" PostBackUrl="~/Administrador/ExportaExcelBobs.aspx" Text="Bob's" Width="150px" />
                            </td>
                            <td class="style4">
                                <asp:Button ID="Button6" runat="server" PostBackUrl="~/Administrador/ExportaExcel.aspx" Text="Burger King" Width="150px" />
                            </td>
                            <td class="style11">
                                <asp:Button ID="Button11" runat="server" PostBackUrl="~/Administrador/ExportaExcelMania.aspx" Text="Mania de Churrasco" Width="150px" />
                            </td>
                            <td class="style6">
                                <asp:Button ID="Button10" runat="server" PostBackUrl="~/Administrador/ExportaExcelSubway.aspx" Text="Subway" Width="150px" />
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
                            <td class="style10">
                                <asp:Button ID="Button13" runat="server" Text="KFC / SH" PostBackUrl="~/Administrador/ExportaExcelKfcsSH.aspx" Width="150px" />
                                </td>
                            <td class="style5">
                                </td>
                            <td class="auto-style6" style="text-align: center">
                                </td>
                            <td class="auto-style7" style="text-align: center">
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
                            <td class="style10">
                                <asp:Button ID="Button5" runat="server" PostBackUrl="~/Administrador/AdmPedidos.aspx" Text="Pedidos" Width="150px" />
                            </td>
                            <td class="style5">
                                <asp:Button ID="Button8" runat="server" PostBackUrl="~/Paginas/CRM1.aspx" Text="Consulta CRM" Width="150px" />
                                </td>
                            <td class="auto-style6" style="text-align: center">
                                <asp:Button ID="Button7" runat="server" PostBackUrl="~/Administrador/Usuario.aspx" Text="Troca de Senha" Width="150px" />
                                </td>
                            <td class="auto-style7" style="text-align: center">
                                <asp:Button ID="Button9" runat="server" PostBackUrl="~/Administrador/Ajudaadm.aspx" Text="Ajuda" Width="150px" />
                                </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
            </asp:Content>


