<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu1.aspx.cs" Inherits="JFCWEB.Administrador.Menu1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    <div class="container py-4">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2 class="mb-0 fw-bold text-success">Menu Gestor</h2>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" CssClass="btn btn-outline-danger p-1" Width="40px" ToolTip="Sair" />
        </div>

        <div class="row g-4">
            <div class="col-md-3 col-sm-6">
                <div class="card menu-card shadow-sm text-center p-4" onclick="window.location.href='<%= ResolveUrl("~/Paginas/Parceiro.aspx") %>';">
                    <i class="bi bi-people menu-icon"></i>
                    <h5 class="card-title fw-bold">Parceiros</h5>
                    <p class="card-text text-muted small">Visualizar clientes e parceiros</p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="card menu-card shadow-sm text-center p-4" onclick="window.location.href='<%= ResolveUrl("~/Paginas/Produto.aspx") %>';">
                    <i class="bi bi-box-seam menu-icon"></i>
                    <h5 class="card-title fw-bold">Produtos</h5>
                    <p class="card-text text-muted small">Consulta de catálogo</p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="card menu-card shadow-sm text-center p-4" onclick="window.location.href='<%= ResolveUrl("~/Paginas/Tabproduto.aspx") %>';">
                    <i class="bi bi-link-45deg menu-icon"></i>
                    <h5 class="card-title fw-bold">Produtos X Parceiros</h5>
                    <p class="card-text text-muted small">Vínculos e tabelas</p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="card menu-card shadow-sm text-center p-4" onclick="window.location.href='<%= ResolveUrl("~/Administrador/Grade1.aspx") %>';">
                    <i class="bi bi-calendar-check menu-icon"></i>
                    <h5 class="card-title fw-bold">Programar Entrega</h5>
                    <p class="card-text text-muted small">Gestão de cronogramas</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
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


