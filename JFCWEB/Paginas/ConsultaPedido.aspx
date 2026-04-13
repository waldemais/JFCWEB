<%@ Page Title="Meus Pedidos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultaPedido.aspx.cs" Inherits="JFCWEB.Paginas.ConsultaPedido" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .status-badge {
            padding: 5px 10px;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: 600;
            text-transform: uppercase;
        }
        .status-aberto { background-color: #e8f5e9; color: #2e7d32; }
        .status-cancelado { background-color: #ffebee; color: #c62828; }
        .status-finalizado { background-color: #e3f2fd; color: #1565c0; }
        
        .search-box {
            max-width: 400px;
            margin-bottom: 2rem;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container py-4">
        <!-- Título e Ações -->
        <div class="d-flex justify-content-between align-items-center mb-4 bg-success p-3 rounded shadow-sm">
            <h2 class="mb-0 fw-bold text-white"><i class="bi bi-journal-text me-2"></i>Meus Pedidos</h2>
            <div class="no-print">
                <asp:LinkButton ID="btnMenuPedidos" runat="server" CssClass="btn btn-light btn-sm me-2" PostBackUrl="~/Paginas/MenuPedidos.aspx">
                    <i class="bi bi-grid me-1"></i>Menu Pedidos
                </asp:LinkButton>
                <asp:LinkButton ID="btnBack" runat="server" CssClass="btn btn-light btn-sm me-2" PostBackUrl="~/Cliente/Menu4.aspx">
                    <i class="bi bi-house-door me-1"></i>Início
                </asp:LinkButton>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" CssClass="btn btn-light p-1" Width="40px" ToolTip="Sair" />
            </div>
        </div>

        <!-- Filtro de Busca -->
        <div class="search-box no-print">
            <label class="form-label fw-bold text-muted small">PESQUISAR POR NÚMERO</label>
            <div class="input-group shadow-sm">
                <span class="input-group-text bg-white border-end-0"><i class="bi bi-search text-success"></i></span>
                <asp:TextBox ID="Box1" runat="server" CssClass="form-control border-start-0" placeholder="Digite o número do pedido..." OnLoad="TextBox1_Load" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:Button ID="Botao2" runat="server" Text="LOCALIZAR" CssClass="btn btn-success fw-bold" />
            </div>
            <asp:TextBox ID="TBo1" runat="server" Visible="False"></asp:TextBox>
            <asp:Label ID="Lbel1" runat="server" Visible="False"></asp:Label>
        </div>

        <!-- Tabela de Pedidos -->
        <div class="card shadow-sm border-0 overflow-hidden">
            <div class="card-header bg-light py-3 border-bottom d-flex justify-content-between align-items-center">
                <h5 class="mb-0 fw-bold text-dark">Histórico de Solicitações</h5>
                <small class="text-muted">Mostrando os últimos pedidos</small>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" CssClass="gridview-modern mb-0" GridLines="None" 
                        onrowdatabound="GridView1_RowDataBound" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                        DataKeyNames="pedidoID" ShowHeaderWhenEmpty="True" PageSize="50">
                        <Columns>
                            <asp:BoundField DataField="pedidoID" HeaderText="PEDIDO" ReadOnly="True" SortExpression="pedidoID">
                                <ItemStyle CssClass="fw-bold text-success" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DTEMISSAO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="EMISSÃO" SortExpression="DTEMISSAO" />
                            <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="ENTREGA" SortExpression="DTENTREGA" />
                            <asp:TemplateField HeaderText="STATUS" SortExpression="STATUS">
                                <ItemTemplate>
                                    <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("STATUS") %>' CssClass='<%# GetStatusClass(Eval("STATUS").ToString()) %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="CGC_CPF" HeaderText="CGC_CPF" SortExpression="CGC_CPF" Visible="False" />
                            <asp:CommandField ButtonType="Button" SelectText="Ver Detalhes" ShowSelectButton="True">
                                <ControlStyle CssClass="btn btn-sm btn-outline-success rounded-pill px-3" />
                            </asp:CommandField>
                        </Columns>
                        <EmptyDataTemplate>
                            <div class="text-center p-5">
                                <i class="bi bi-inbox fs-1 text-muted d-block mb-3"></i>
                                <p class="text-muted">Nenhum pedido encontrado no seu histórico.</p>
                            </div>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

    <!-- DataSources -->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        SelectCommand="SELECT DISTINCT pedidoID, DTEMISSAO, DTENTREGA, STATUS, CGC_CPF FROM ListaPedido WHERE (CGC_CPF = @CGC_CPF) AND (DTENTREGA IS NOT NULL) ORDER BY pedidoID DESC" 
        ProviderName="System.Data.SqlClient" 
        ConnectionString="Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025">
        <SelectParameters>
            <asp:ControlParameter ControlID="Lbel1" Name="CGC_CPF" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>