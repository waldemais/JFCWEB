<%@ Page Title="Administração de Pedidos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdmPedidos.aspx.cs" Inherits="JFCWEB.Usuario.AdmPedidos" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .filter-card {
            border-left: 5px solid #198754;
            transition: transform 0.2s;
        }
        .filter-card:hover {
            transform: translateY(-2px);
        }
        .grid-header {
            background-color: #198754 !important;
            color: white !important;
            text-transform: uppercase;
            font-size: 0.85rem;
            letter-spacing: 0.5px;
        }
        .section-title {
            background: linear-gradient(45deg, #198754, #157347);
            color: white;
            padding: 1rem;
            border-radius: 0.5rem;
            margin-bottom: 1.5rem;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .status-badge {
            padding: 0.4rem 0.8rem;
            border-radius: 50px;
            font-weight: 600;
            font-size: 0.75rem;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container-fluid py-4">
        <!-- Título da Seção -->
        <div class="section-title d-flex justify-content-between align-items-center">
            <h2 class="mb-0 fw-bold"><i class="bi bi-gear-fill me-2"></i>Administração de Pedidos</h2>
            <div class="no-print">
                <asp:LinkButton ID="btnBack" runat="server" CssClass="btn btn-light btn-sm shadow-sm" PostBackUrl="~/Administrador/Menu1.aspx">
                    <i class="bi bi-arrow-left me-1"></i>Voltar ao Menu
                </asp:LinkButton>
            </div>
        </div>

        <!-- Filtros de Pesquisa -->
        <div class="card shadow-sm mb-4 border-0">
            <div class="card-header bg-light py-3">
                <h5 class="mb-0 fw-bold text-dark"><i class="bi bi-funnel me-2"></i>Filtros de Pesquisa</h5>
            </div>
            <div class="card-body">
                <div class="row g-4">
                    <!-- Por Data e UF -->
                    <div class="col-lg-4">
                        <div class="card h-100 filter-card shadow-sm border-0 bg-light p-3">
                            <label class="form-label fw-bold small text-muted text-uppercase mb-3">Pesquisa por Período e UF</label>
                            <div class="row g-2 mb-3">
                                <div class="col-6">
                                    <label class="small text-muted">Início</label>
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" CssClass="form-control form-control-sm shadow-sm"></asp:TextBox>
                                </div>
                                <div class="col-6">
                                    <label class="small text-muted">Fim</label>
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" CssClass="form-control form-control-sm shadow-sm"></asp:TextBox>
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="small text-muted">Estado (UF)</label>
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-select form-select-sm shadow-sm">
                                    <asp:ListItem Value="RJ">Rio de Janeiro</asp:ListItem>
                                    <asp:ListItem Value="SP">São Paulo</asp:ListItem>
                                    <asp:ListItem Value="PR">Paraná</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <asp:Button ID="Button1" runat="server" Text="Filtrar Período" CssClass="btn btn-success btn-sm w-100 fw-bold shadow-sm" OnClick="Button1_Click" />
                        </div>
                    </div>

                    <!-- Por Código do Cliente -->
                    <div class="col-lg-4">
                        <div class="card h-100 filter-card shadow-sm border-0 bg-light p-3">
                            <label class="form-label fw-bold small text-muted text-uppercase mb-3">Pesquisa por Código do Cliente</label>
                            <div class="mb-4">
                                <label class="small text-muted">Código do Cliente</label>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control form-control-sm shadow-sm" placeholder="Digite o código..."></asp:TextBox>
                            </div>
                            <div class="mt-auto">
                                <asp:Button ID="Button2" runat="server" Text="Localizar Cliente" CssClass="btn btn-success btn-sm w-100 fw-bold shadow-sm" />
                            </div>
                        </div>
                    </div>

                    <!-- Por Número do Pedido -->
                    <div class="col-lg-4">
                        <div class="card h-100 filter-card shadow-sm border-0 bg-light p-3">
                            <label class="form-label fw-bold small text-muted text-uppercase mb-3">Pesquisa por Nº do Pedido</label>
                            <div class="mb-4">
                                <label class="small text-muted">Número do Pedido</label>
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control form-control-sm shadow-sm" placeholder="Digite o número..." OnTextChanged="TextBox4_TextChanged" AutoPostBack="True"></asp:TextBox>
                            </div>
                            <div class="mt-auto">
                                <asp:Button ID="Button3" runat="server" Text="Localizar Pedido" CssClass="btn btn-success btn-sm w-100 fw-bold shadow-sm" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Grid Principal (Período) -->
        <div class="card shadow-sm mb-4 border-0">
            <div class="card-header bg-white py-3 border-bottom d-flex justify-content-between align-items-center">
                <h5 class="mb-0 fw-bold text-success"><i class="bi bi-list-check me-2"></i>Pedidos por Período</h5>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" CssClass="table table-hover table-striped mb-0" 
                        GridLines="None" OnRowDataBound="GridView1_RowDataBound" 
                        OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" 
                        DataKeyNames="pedidoID" ShowHeaderWhenEmpty="True">
                        <HeaderStyle CssClass="grid-header" />
                        <Columns>
                            <asp:BoundField DataField="pedidoID" HeaderText="PEDIDO" SortExpression="pedidoID" />
                            <asp:BoundField DataField="CODPARC" HeaderText="CÓD. CLIENTE" SortExpression="CODPARC" />
                            <asp:BoundField DataField="NOMEPARC" HeaderText="CLIENTE" SortExpression="NOMEPARC" />
                            <asp:BoundField DataField="DTEMISSAO" HeaderText="EMISSÃO" SortExpression="DTEMISSAO" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="DTENTREGA" HeaderText="ENTREGA" SortExpression="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:TemplateField HeaderText="SITUAÇÃO" SortExpression="STATUS">
                                <ItemTemplate>
                                    <span class='<%# GetStatusClass(Eval("STATUS").ToString()) %>'>
                                        <%# Eval("STATUS") %>
                                    </span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ButtonType="Button" SelectText="Ver Detalhes" ShowSelectButton="True">
                                <ControlStyle CssClass="btn btn-sm btn-outline-success rounded-pill px-3" />
                            </asp:CommandField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>

        <!-- Outras Grids (Ocultas inicialmente ou conforme pesquisa) -->
        <div class="row">
            <!-- Grid por Cliente -->
            <div class="col-md-6 mb-4">
                <div class="card shadow-sm border-0 h-100">
                    <div class="card-header bg-white py-3 border-bottom">
                        <h6 class="mb-0 fw-bold text-primary"><i class="bi bi-person-lines-fill me-2"></i>Pedidos por Cliente</h6>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource2" CssClass="table table-hover table-sm mb-0" 
                                GridLines="None" AllowPaging="True" OnRowDataBound="GridView2_RowDataBound" 
                                OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnLoad="GridView2_Load">
                                <HeaderStyle CssClass="bg-light text-primary small text-uppercase fw-bold" />
                                <Columns>
                                    <asp:BoundField DataField="pedidoID" HeaderText="Pedido" SortExpression="pedidoID" />
                                    <asp:BoundField DataField="NOMEPARC" HeaderText="Nome" SortExpression="NOMEPARC" />
                                    <asp:TemplateField HeaderText="Status" SortExpression="STATUS">
                                        <ItemTemplate>
                                            <span class='<%# GetStatusClass(Eval("STATUS").ToString()) %>'>
                                                <%# Eval("STATUS") %>
                                            </span>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField ButtonType="Button" SelectText="Ver" ShowSelectButton="True">
                                        <ControlStyle CssClass="btn btn-xs btn-outline-primary py-0" />
                                    </asp:CommandField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Grid por Número do Pedido -->
            <div class="col-md-6 mb-4">
                <div class="card shadow-sm border-0 h-100">
                    <div class="card-header bg-white py-3 border-bottom">
                        <h6 class="mb-0 fw-bold text-info"><i class="bi bi-hash me-2"></i>Pedido Específico</h6>
                    </div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource3" CssClass="table table-hover table-sm mb-0" 
                                GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                                <HeaderStyle CssClass="bg-light text-info small text-uppercase fw-bold" />
                                <Columns>
                                    <asp:BoundField DataField="pedidoID" HeaderText="Pedido" SortExpression="pedidoID" />
                                    <asp:BoundField DataField="NOMEPARC" HeaderText="Nome" SortExpression="NOMEPARC" />
                                    <asp:TemplateField HeaderText="Status" SortExpression="STATUS">
                                        <ItemTemplate>
                                            <span class='<%# GetStatusClass(Eval("STATUS").ToString()) %>'>
                                                <%# Eval("STATUS") %>
                                            </span>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField ButtonType="Button" SelectText="Ver" ShowSelectButton="True">
                                        <ControlStyle CssClass="btn btn-xs btn-outline-info py-0" />
                                    </asp:CommandField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Grid de Itens (GridView4) -->
        <div class="card shadow-sm border-0 mb-4">
            <div class="card-header bg-dark text-white py-3">
                <h6 class="mb-0 fw-bold"><i class="bi bi-box-seam me-2"></i>Detalhamento de Itens por Cliente</h6>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource4" CssClass="table table-hover table-sm mb-0" GridLines="None">
                        <HeaderStyle CssClass="bg-light text-dark small text-uppercase fw-bold" />
                        <Columns>
                            <asp:BoundField DataField="pedidoID" HeaderText="Pedido" SortExpression="pedidoID" />
                            <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Dt.Entrega" SortExpression="DTENTREGA" />
                            <asp:BoundField DataField="CODPROD" HeaderText="Código" SortExpression="CODPROD" />
                            <asp:BoundField DataField="DESCRPROD" HeaderText="Produto" SortExpression="DESCRPROD" />
                            <asp:BoundField DataField="QTDE" HeaderText="Total" SortExpression="QTDE">
                                <ItemStyle HorizontalAlign="Center" CssClass="fw-bold" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>

        <!-- Controles Ocultos -->
        <div style="display:none;">
            <asp:TextBox ID="TBo1" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
            <asp:Button ID="Button4" runat="server" Visible="False" />
        </div>

        <!-- DataSources -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            SelectCommand="SELECT pedidoID, NOMEPARC, DTEMISSAO, DTENTREGA, STATUS, UF, CODPARC FROM ListaPedidos WHERE (UF = @UF) AND (DTEMISSAO BETWEEN @DTEMISSAO1 AND DATEADD(Day, 1, @DTEMISSAO2)) ORDER BY pedidoID" ProviderName="System.Data.SqlClient">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="UF" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="TextBox1" Name="DTEMISSAO1" PropertyName="Text" Type="DateTime" />
                <asp:ControlParameter ControlID="TextBox2" Name="DTEMISSAO2" PropertyName="Text" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            SelectCommand="SELECT DISTINCT [pedidoID], [CODPARC], [NOMEPARC], [DTEMISSAO], [DTENTREGA], [STATUS] FROM [ListaPedidos] WHERE ([CODPARC] = @CODPARC) ORDER BY [DTEMISSAO] DESC" ProviderName="System.Data.SqlClient">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox3" Name="CODPARC" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            SelectCommand="SELECT DISTINCT [pedidoID], [CODPARC], [NOMEPARC], [DTEMISSAO], [DTENTREGA], [STATUS] FROM [ListaPedidos] WHERE ([pedidoID] = @pedidoID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox4" Name="pedidoID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            SelectCommand="SELECT ITENS_PEDIDO.pedidoID, ITENS_PEDIDO.CODPROD, ITENS_PEDIDO.QTDE, PEDIDO.DTENTREGA, TGFPRO.DESCRPROD, ITENS_PEDIDO.CODPARC FROM ITENS_PEDIDO INNER JOIN PEDIDO ON ITENS_PEDIDO.pedidoID = PEDIDO.pedidoID INNER JOIN TGFPRO ON ITENS_PEDIDO.CODPROD = TGFPRO.CODPROD WHERE (ITENS_PEDIDO.CODPARC = @CODPARC) ORDER BY ITENS_PEDIDO.pedidoID DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox5" Name="CODPARC" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
