<%@ Page Title="Detalhes do Pedido" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="JFCWEB.Paginas.Pedidos" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .detail-header {
            background-color: #f8f9fa;
            border-left: 5px solid #198754;
            padding: 1.5rem;
            border-radius: 0.5rem;
            margin-bottom: 2rem;
        }
        .order-number-box {
            background-color: #198754;
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            text-align: center;
            display: inline-block;
        }
        .info-label {
            font-weight: 600;
            color: #6c757d;
            font-size: 0.85rem;
            text-transform: uppercase;
        }
        .info-value {
            font-weight: 700;
            color: #212529;
            font-size: 1.1rem;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container py-4">
        <!-- Título e Ações -->
        <div class="d-flex justify-content-between align-items-center mb-4 bg-success p-3 rounded shadow-sm">
            <h2 class="mb-0 fw-bold text-white"><i class="bi bi-file-earmark-text me-2"></i>Pedido Detalhado</h2>
            <div class="no-print">
                <asp:LinkButton ID="btnBack" runat="server" CssClass="btn btn-light btn-sm me-2" PostBackUrl="~/Paginas/ConsultaPedido.aspx">
                    <i class="bi bi-arrow-left me-1"></i>Voltar
                </asp:LinkButton>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" CssClass="btn btn-light p-1" Width="40px" ToolTip="Sair" />
            </div>
        </div>

        <!-- Barra de Comandos -->
        <div class="mb-4 d-flex gap-2">
            <asp:LinkButton ID="Btt3" runat="server" OnClick="Btt3_Click" CssClass="btn btn-outline-success shadow-sm">
                <i class="bi bi-envelope me-1"></i>Enviar E-mail
            </asp:LinkButton>
            <asp:LinkButton ID="Btt4" runat="server" OnClick="Btt4_Click" CssClass="btn btn-outline-danger shadow-sm" 
                OnClientClick="return confirm('Confirma o Cancelamento do Pedido?');">
                <i class="bi bi-x-circle me-1"></i>Cancelar Pedido
            </asp:LinkButton>
            <asp:LinkButton ID="Btt5" runat="server" OnClick="Btt5_Click" CssClass="btn btn-outline-primary shadow-sm" Visible="False">
                <i class="bi bi-files me-1"></i>Duplicar Pedido
            </asp:LinkButton>
        </div>

        <!-- Cabeçalho de Detalhes -->
        <div class="detail-header shadow-sm">
            <div class="row g-4 align-items-center">
                <div class="col-md-3 text-center border-end">
                    <div class="order-number-box shadow-sm mb-2">
                        <div class="small opacity-75">Nº PEDIDO</div>
                        <asp:Label ID="TBox5" runat="server" CssClass="h3 mb-0 fw-bold"></asp:Label>
                    </div>
                    <div class="mt-2 fw-bold text-success">
                        <asp:Label ID="TBox6" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="col-md-6 border-end px-4">
                    <div class="info-label">CLIENTE</div>
                    <div class="h4 mb-2 text-success fw-bold"><asp:Label ID="Lbel8" runat="server"></asp:Label></div>
                    <div class="text-muted small">
                        <i class="bi bi-hash me-1"></i>CNPJ: <asp:TextBox ID="TxtBox5" runat="server" CssClass="form-control-plaintext d-inline p-0 w-auto" ReadOnly="True"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-3 ps-4">
                    <div class="info-label">DATA DE ENTREGA</div>
                    <div class="h4 mb-0 text-success fw-bold"><asp:Label ID="Lbel7" runat="server"></asp:Label></div>
                    <div class="text-muted small mt-1">
                        <asp:Label ID="Lbel9" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>

        <!-- Alertas -->
        <asp:Label ID="Label1" runat="server" CssClass="alert alert-danger d-block mb-4 fw-bold shadow-sm" Visible="False"></asp:Label>

        <!-- Informações de Cancelamento (Se houver) -->
        <asp:Panel ID="pnlCancelamento" runat="server" CssClass="card border-danger shadow-sm mb-4" Visible="False">
            <div class="card-header bg-white py-2 border-bottom border-danger">
                <h6 class="mb-0 fw-bold text-success"><i class="bi bi-exclamation-triangle me-2"></i>Responsável pelo Cancelamento</h6>
            </div>
            <div class="card-body p-0">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" 
                    CssClass="table table-bordered mb-0" GridLines="Both">
                    <HeaderStyle CssClass="bg-light text-success fw-bold small text-uppercase" />
                    <RowStyle CssClass="small text-muted" />
                    <Columns>
                        <asp:BoundField DataField="DataCan" HeaderText="DATA" SortExpression="DataCan" DataFormatString="{0:dd/MM/yyyy HH:mm:ss}" />
                        <asp:BoundField DataField="IdNome" HeaderText="NOME" SortExpression="IdNome" />
                        <asp:BoundField DataField="IdTel" HeaderText="TELEFONE" SortExpression="IdTel" />
                        <asp:BoundField DataField="IdEmail" HeaderText="EMAIL" SortExpression="IdEmail" />
                        <asp:BoundField DataField="IdIP" HeaderText="DADOS DO ACESSO" SortExpression="IdIP" />
                    </Columns>
                </asp:GridView>
            </div>
        </asp:Panel>

        <!-- Itens do Pedido -->
        <div class="card shadow-sm border-0 mb-4">
            <div class="card-header bg-light py-3 border-bottom">
                <h5 class="mb-0 fw-bold text-dark"><i class="bi bi-list-ul me-2"></i>Itens do Pedido</h5>
            </div>
            <div class="card-body p-0">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource2" CssClass="gridview-modern mb-0" GridLines="None" 
                    OnDataBound="GridView2_DataBound" OnLoad="GridView2_Load">
                    <Columns>
                        <asp:BoundField DataField="CODPROD" HeaderText="CÓDIGO" SortExpression="CODPROD" />
                        <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRIÇÃO" SortExpression="DESCRPROD" />
                        <asp:BoundField DataField="QTDE" HeaderText="QTDE" SortExpression="QTDE">
                            <ItemStyle HorizontalAlign="Center" CssClass="fw-bold" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PADRAO" HeaderText="VLR. UNITÁRIO" SortExpression="PADRAO" DataFormatString="{0:C2}" />
                        <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" DataFormatString="{0:C2}">
                            <ItemStyle HorizontalAlign="Right" CssClass="fw-bold text-success" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            </div>
            <div class="card-footer bg-light py-3 border-0">
                <div class="row align-items-center">
                    <div class="col-6">
                        <span class="text-muted">Total de Itens:</span> 
                        <asp:Label ID="Label2" runat="server" CssClass="fw-bold ms-1"></asp:Label>
                    </div>
                    <div class="col-6 text-end">
                        <span class="h5 me-2 text-muted">VALOR TOTAL:</span>
                        <asp:Label ID="Label3" runat="server" CssClass="h4 fw-bold text-success"></asp:Label>
                    </div>
                </div>
            </div>
        </div>

        <!-- Formulário de Cancelamento (Oculto inicialmente) -->
        <asp:Panel ID="Panel2" runat="server" Visible="False" CssClass="card border-warning shadow-sm mb-4">
            <div class="card-header bg-warning py-2">
                <h6 class="mb-0 fw-bold"><i class="bi bi-pencil-square me-2"></i>Dados do Cancelamento</h6>
            </div>
            <div class="card-body">
                <div class="row g-3 align-items-end">
                    <div class="col-md-3">
                        <label class="form-label fw-bold small">NOME</label>
                        <asp:TextBox ID="Tb1" runat="server" CssClass="form-control shadow-sm"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <label class="form-label fw-bold small">TELEFONE</label>
                        <asp:TextBox ID="Tb2" runat="server" CssClass="form-control shadow-sm" TextMode="Phone"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <label class="form-label fw-bold small">E-MAIL</label>
                        <asp:TextBox ID="Tb3" runat="server" CssClass="form-control shadow-sm" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Button ID="Bton1" runat="server" OnClick="Bton1_Click" Text="Confirmar Cancelamento" CssClass="btn btn-danger w-100 shadow-sm fw-bold" />
                    </div>
                </div>
                <div class="mt-3 small text-muted">
                    <i class="bi bi-info-circle me-1"></i>IP de acesso registrado: <asp:Label ID="Lb1" runat="server" CssClass="fw-bold"></asp:Label>
                </div>
            </div>
        </asp:Panel>

        <!-- Rodapé do Resumo -->
        <div class="text-center mt-5 no-print">
            <p class="text-muted small">JFC Verduras - Portal de Pedidos Web</p>
        </div>

        <!-- Controles Ocultos -->
        <div style="display:none;">
            <asp:TextBox ID="TextBx1" runat="server"></asp:TextBox>
            <asp:Label ID="Lab4" runat="server"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound"></asp:GridView>
        </div>

        <!-- DataSources -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT P.CGC_CPF, T.NOMEPARC, P.DTEMISSAO, P.DTENTREGA, P.STATUS, P.CODPARC FROM PEDIDO P INNER JOIN TGFPAR T ON P.CGC_CPF = T.CGC_CPF WHERE (P.pedidoID = @pedidoID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBx1" Name="pedidoID" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            SelectCommand="SELECT DataCan, IdNome, IdTel, IdEmail, IdIP FROM LogCancelamento WHERE (IdPedido = @IdPedido)"
            OnSelected="SqlDataSource4_Selected">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBx1" Name="IdPedido" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT itemID, pedidoID, CODPROD, QTDE, DESCRPROD, PADRAO, TOTAL FROM VLISTPRO WHERE (pedidoID = @pedidoID) AND (QTDE &lt;&gt; 0) ORDER BY DESCRPROD">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBx1" Name="pedidoID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>