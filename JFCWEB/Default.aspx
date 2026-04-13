<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="JFCWEB._Default" %>
   
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
   
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .login-container {
            max-width: 450px;
            margin: auto;
        }
        .card-header {
            background-color: #198754;
            color: white;
        }
        .attention-box {
            background-color: #f8f9fa;
            border-left: 5px solid #ffc107;
            padding: 15px;
            margin-bottom: 20px;
            margin-left: 40px;
        }
        .text-dark {}
    </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="row justify-content-center mt-5">
        <div class="col-md-8 col-lg-6">
            <div class="card shadow">
                <div class="card-header text-center py-3">
                    <img src="Imagem/Logogrupo.png" alt="JFC" height="60" class="mb-2 bg-white rounded p-1" />
                    <h3 class="mb-0 text-white" style="font-variant: normal; text-transform: none;">Portal de Pedidos</h3>
                </div>
                <div class="card-body p-4">
                    <div class="alert alert-warning border-start border-4 border-warning shadow-sm mb-4 text-dark">
                        <h6 class="alert-heading fw-bold"><i class="bi bi-info-circle-fill text-dark me-2"></i>Avisos e Melhorias</h6>
                        <p class="small mb-2">Nosso site passou por melhorias para oferecer uma experiência mais moderna e eficiente. Novo design, maior velocidade e totalmente responsivo.</p>
                        <hr class="my-2 border-dark opacity-25">
                        <div class="d-flex align-items-center">
                            <i class="bi bi-calendar-event text-danger me-2"></i>
                            <span class="small fw-bold text-danger">Aviso: Terça-feira 21/04 será feriado. Pedidos até às 12:00h.</span>
                        </div>
                    </div>

                    <div class="login-container">
                        <div class="mb-3">
                            <label for="<%= TBox1.ClientID %>" class="form-label">CNPJ</label>
                            <asp:TextBox ID="TBox1" runat="server" CssClass="form-control" placeholder="00.000.000/0000-00"></asp:TextBox>
                            <ajaxToolkit:MaskedEditExtender ID="TBox1_MaskedEditExtender" runat="server" 
                                BehaviorID="TBox1_MaskedEditExtender" Century="2000" Mask="99.999.999/9999-99" 
                                TargetControlID="TBox1" InputDirection="RightToLeft">
                            </ajaxToolkit:MaskedEditExtender>
                        </div>
                        <div class="mb-3">
                            <label for="<%= TBox2.ClientID %>" class="form-label">Senha</label>
                            <asp:TextBox ID="TBox2" runat="server" CssClass="form-control" TextMode="Password" placeholder="Sua senha"></asp:TextBox>
                        </div>
                        <div class="mb-4 text-center">
                            <div class="d-flex align-items-center justify-content-center mb-2">
                                <img src="Captcha.aspx" alt="Captcha" class="border rounded me-2" height="35" />
                                <asp:TextBox ID="TBox3" runat="server" CssClass="form-control" Width="100" placeholder="Código"></asp:TextBox>
                            </div>
                            <small class="text-muted">Insira os caracteres da imagem acima</small>
                        </div>
                        <div class="d-grid gap-2">
                            <asp:Button ID="Bton1" runat="server" Text="Acessar Portal" CssClass="btn btn-success btn-lg shadow-sm" OnClick="Bton1_Click" />
                        </div>
                        <div class="text-center mt-3">
                            <asp:Label ID="Lb1" runat="server" CssClass="text-danger fw-bold small"></asp:Label>
                        </div>
                        <div class="text-center mt-4 text-muted small border-top pt-2">
                            Versão 1.231225.1000
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
