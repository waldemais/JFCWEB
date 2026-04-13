<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu1.aspx.cs" Inherits="JFCWEB.Administrador.Menu1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    <div class="container py-4">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2 class="mb-0 fw-bold text-success">Menu Usuário</h2>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" CssClass="btn btn-outline-danger p-1" Width="40px" ToolTip="Sair" />
        </div>

        <div class="row g-4">
            <div class="col-md-3 col-sm-6">
                <div class="card menu-card shadow-sm text-center p-4" onclick="window.location.href='<%= ResolveUrl("~/Paginas/Pedidos.aspx") %>';">
                    <i class="bi bi-receipt menu-icon"></i>
                    <h5 class="card-title fw-bold">Gestão de Pedidos</h5>
                    <p class="card-text text-muted small">Consultar e gerenciar ordens</p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="card menu-card shadow-sm text-center p-4" onclick="window.location.href='<%= ResolveUrl("~/Paginas/Relatorio.aspx") %>';">
                    <i class="bi bi-file-earmark-bar-graph menu-icon"></i>
                    <h5 class="card-title fw-bold">Relatórios</h5>
                    <p class="card-text text-muted small">Extração de dados e análises</p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="card menu-card shadow-sm text-center p-4" onclick="window.location.href='<%= ResolveUrl("~/Paginas/Menucrm.aspx") %>';">
                    <i class="bi bi-headset menu-icon"></i>
                    <h5 class="card-title fw-bold">CRM</h5>
                    <p class="card-text text-muted small">Atendimento ao cliente</p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="card menu-card shadow-sm text-center p-4" onclick="window.location.href='<%= ResolveUrl("~/Paginas/Perfil.aspx") %>';">
                    <i class="bi bi-person-lock menu-icon"></i>
                    <h5 class="card-title fw-bold">Meu Perfil</h5>
                    <p class="card-text text-muted small">Alterar senha e dados</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
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
                                </td>
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
                                    PostBackUrl="~/Administrador/Usuario.aspx" Visible="False" />
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


