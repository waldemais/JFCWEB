<%@ Page Title="Menu Principal" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu4.aspx.cs" Inherits="JFCWEB.DtEntrega" ValidateRequest="false" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .menu-card {
            transition: transform 0.2s, box-shadow 0.2s;
            cursor: pointer;
            height: 100%;
        }
        .menu-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.1) !important;
        }
        .menu-icon {
            font-size: 2.5rem;
            color: #198754;
            margin-bottom: 1rem;
        }
        .client-info {
            background-color: #f8f9fa;
            border-left: 5px solid #198754;
            padding: 1rem;
            border-radius: 0.25rem;
        }
        .whatsapp-btn {
            position: fixed;
            bottom: 30px;
            right: 30px;
            z-index: 1000;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container py-4">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2 class="mb-0 fw-bold text-success">Menu Principal</h2>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" CssClass="btn btn-outline-danger p-1" Width="40px" ToolTip="Sair" />
        </div>

        <div class="client-info mb-5 shadow-sm">
            <div class="row align-items-center">
                <div class="col-md-1">
                    <i class="bi bi-person-badge fs-1 text-success"></i>
                </div>
                <div class="col-md-11">
                    <div class="fw-bold text-muted small">DADOS DO CLIENTE</div>
                    <div class="h5 mb-1">
                        <asp:Label ID="Lb2" runat="server" Text="Nome do Cliente"></asp:Label>
                    </div>
                    <div class="text-muted">
                        <i class="bi bi-hash me-1"></i>CNPJ: <asp:Label ID="Lb1" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>

        <div class="row g-4">
            <div class="col-md-3 col-sm-6">
                <div class="card menu-card shadow-sm text-center p-4 border-0" onclick="document.getElementById('<%= Button1.ClientID %>').click();">
                    <i class="bi bi-cart-plus menu-icon"></i>
                    <h5 class="card-title fw-bold">Novo Pedido</h5>
                    <p class="card-text text-muted small">Inicie uma nova solicitação de compra</p>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="d-none" />
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="card menu-card shadow-sm text-center p-4 border-0" onclick="window.location.href='<%= ResolveUrl("~/Paginas/ConsultaPedido.aspx") %>';">
                    <i class="bi bi-search menu-icon"></i>
                    <h5 class="card-title fw-bold">Consultar Pedidos</h5>
                    <p class="card-text text-muted small">Acompanhe o status dos seus pedidos</p>
                    <asp:Button ID="Button2" runat="server" PostBackUrl="~/Paginas/ConsultaPedido.aspx" CssClass="d-none" />
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="card menu-card shadow-sm text-center p-4 border-0" onclick="window.location.href='<%= ResolveUrl("~/Paginas/Menucrm.aspx") %>';">
                    <i class="bi bi-chat-dots menu-icon"></i>
                    <h5 class="card-title fw-bold">CRM</h5>
                    <p class="card-text text-muted small">Relate ocorrências ou dúvidas</p>
                    <asp:Button ID="Button3" runat="server" PostBackUrl="~/Paginas/Menucrm.aspx" CssClass="d-none" />
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="card menu-card shadow-sm text-center p-4 border-0" onclick="window.location.href='<%= ResolveUrl("~/Paginas/Perfil.aspx") %>';">
                    <i class="bi bi-shield-lock menu-icon"></i>
                    <h5 class="card-title fw-bold">Alterar Senha</h5>
                    <p class="card-text text-muted small">Gerencie a segurança da sua conta</p>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" PostBackUrl="~/Paginas/Perfil.aspx" CssClass="d-none" />
                </div>
            </div>
        </div>

        <div class="text-center mt-5">
            <p class="text-muted small">Desenvolvido por <span class="fw-bold">Waldeck Silva</span></p>
        </div>

        <asp:TextBox ID="TxtBx" runat="server" Visible="False"></asp:TextBox>

        <!-- Botão Flutuante WhatsApp -->
        <div class="whatsapp-btn">
            <div class="d-flex flex-column align-items-end">
                <div class="bg-success text-white px-3 py-1 rounded shadow-sm mb-2 small fw-bold">
                    FALE COM O COMERCIAL
                </div>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="60px" ImageUrl="~/Imagem/whatsapp.jpeg" 
                    Width="60px" OnClick="ImageButton2_Click" CssClass="rounded-circle shadow" />
            </div>
        </div>
    </div>
</asp:Content>
