<%@ Page Title="Emissão de Pedido" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Novo.aspx.cs" Inherits="JFCWEB.Paginas.Novo" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .order-header {
            background-color: #f8f9fa;
            border-left: 5px solid #198754;
            padding: 1.5rem;
            border-radius: 0.5rem;
            margin-bottom: 2rem;
        }
        .info-label {
            font-weight: 600;
            color: #6c757d;
            font-size: 0.85rem;
            text-transform: uppercase;
        }
        .info-value {
            font-weight: 600;
            color: #212529;
            font-size: 1rem;
        }
        .section-card {
            border: none;
            box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
            margin-bottom: 2rem;
            border-radius: 0.75rem;
        }
        .total-box {
            background-color: #e9ecef;
            padding: 1rem;
            border-radius: 0.5rem;
            text-align: right;
            margin-top: 1rem;
        }
        .total-label {
            font-size: 1.1rem;
            color: #495057;
        }
        .total-value {
            font-size: 1.5rem;
            font-weight: 700;
            color: #198754;
        }

        .pedido-loader-overlay {
            position: fixed;
            inset: 0;
            background: rgba(255, 255, 255, 0.75);
            z-index: 2000;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .pedido-loader-card {
            background: #fff;
            border-radius: 0.75rem;
            padding: 1.25rem 1.5rem;
            box-shadow: 0 0.5rem 1.5rem rgba(0, 0, 0, 0.15);
            display: flex;
            align-items: center;
            gap: 0.75rem;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container-fluid py-4">
        <!-- Título da Página -->
        <div class="d-flex justify-content-between align-items-center mb-4 bg-success p-3 rounded shadow-sm">
            <h2 class="mb-0 fw-bold text-white"><i class="bi bi-cart-plus me-2"></i>Emissão de Pedido</h2>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" CssClass="btn btn-light p-1" Width="40px" ToolTip="Sair" />
        </div>

        <!-- Cabeçalho do Pedido (Dados do Cliente) -->
        <div class="order-header shadow-sm">
            <div class="row g-3">
                <div class="col-md-3 col-sm-6">
                    <div class="info-label">CNPJ</div>
                    <div class="info-value"><asp:TextBox ID="Lab7" runat="server" Enabled="False" CssClass="form-control-plaintext p-0 fw-bold" BorderStyle="None"></asp:TextBox></div>
                </div>
                <div class="col-md-2 col-sm-6">
                    <div class="info-label">Código</div>
                    <div class="info-value"><asp:Label ID="Lab10" runat="server" Text="CL"></asp:Label></div>
                </div>
                <div class="col-md-4 col-sm-12">
                    <div class="info-label">Fantasia</div>
                    <div class="info-value"><asp:Label ID="Lab6" runat="server" Text="DESCRIÇÃO"></asp:Label></div>
                </div>
                <div class="col-md-3 col-sm-12">
                    <div class="info-label">Email</div>
                    <div class="info-value"><asp:TextBox ID="Text2" runat="server" CssClass="form-control-plaintext p-0 fw-bold" BorderStyle="None" Enabled="False"></asp:TextBox></div>
                </div>
                <div class="col-md-2 col-sm-6">
                    <div class="info-label">Unidade</div>
                    <div class="info-value"><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></div>
                </div>
                <div class="col-md-3 col-sm-6 border-start ps-3">
                    <div class="info-label text-success">Solicitação</div>
                    <div class="info-value"><asp:TextBox ID="TxtBox2" runat="server" BorderStyle="None" Enabled="False" CssClass="form-control-plaintext p-0 fw-bold"></asp:TextBox></div>
                </div>
                <div class="col-md-4 col-sm-12 border-start ps-3">
                    <div class="info-label text-success">Próxima Entrega</div>
                    <asp:DropDownList ID="DpLi1" runat="server" DataSourceID="SqlDataSource3" DataTextField="DTENTREGA" 
                        DataValueField="DTENTREGA" CssClass="form-select mt-1 fw-bold border-success text-success" 
                        AutoPostBack="True" DataTextFormatString="{0:dd/MM/yyyy}" 
                        onselectedindexchanged="DpLi1_SelectedIndexChanged" onload="DpLi1_Load">
                    </asp:DropDownList>
                </div>
            </div>
        </div>

        <!-- Alertas e Mensagens -->
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label5" runat="server" CssClass="alert alert-warning d-block mb-3" Visible="False"></asp:Label>
                <asp:Label ID="Label1" runat="server" CssClass="alert alert-info d-block mb-3" Visible="False"></asp:Label>
                <asp:Label ID="Label2" runat="server" CssClass="alert alert-success d-block mb-3 fw-bold" Visible="False"></asp:Label>
                <asp:Timer ID="Timer1" runat="server" Interval="60000" OnTick="Timer1_Tick" />
                <asp:Label ID="lblHoraAtual" runat="server" Visible="False" />
            </ContentTemplate>
        </asp:UpdatePanel>

        <!-- Listagem de Produtos 1 -->
        <div class="card section-card shadow-sm">
            <div class="card-header bg-success py-3">
                <h5 class="mb-0 text-white"><i class="bi bi-list-check me-2"></i>Produtos Disponíveis</h5>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <asp:GridView ID="GrdV2" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource2" CssClass="gridview-modern mb-0" GridLines="None" 
                        onload="GrdV2_Load" onrowupdated="GrdV2_RowUpdated" onrowdatabound="GrdV2_RowDataBound" 
                        onrowediting="GrdV2_RowEditing" onselectedindexchanged="GrdV2_SelectedIndexChanged" 
                        OnDataBound="GrdV2_DataBound" ShowHeaderWhenEmpty="True">
                        <Columns>
                            <asp:BoundField DataField="itemID" HeaderText="**" SortExpression="itemID">
                                <ItemStyle CssClass="text-muted small opacity-50" Width="30px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CODPROD" HeaderText="CÓDIGO" SortExpression="CODPROD" ReadOnly="True" />
                            <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRIÇÃO" SortExpression="DESCRPROD" ReadOnly="True" />
                            <asp:BoundField DataField="QTDE" HeaderText="QTDE PEDIDO" SortExpression="QTDE">
                                <ItemStyle HorizontalAlign="Center" CssClass="fw-bold" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="QTDE SOLICITADA">
                                <ItemTemplate>
                                    <asp:TextBox ID="TxtB2" runat="server" CssClass="form-control form-control-sm text-center mx-auto" 
                                        style="max-width: 80px;" ontextchanged="TxtB2_TextChanged" placeholder="0"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="PADRAO" HeaderText="VLR. UNITÁRIO" SortExpression="PADRAO" DataFormatString="{0:C}" />
                            <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" DataFormatString="{0:C}" />
                            <asp:CommandField ButtonType="Button" SelectText="OK" ShowSelectButton="True">
                                <ControlStyle CssClass="btn btn-sm btn-outline-success" />
                            </asp:CommandField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="card-footer bg-light border-0 py-3">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <asp:Label ID="Lbl11" runat="server" CssClass="total-value"></asp:Label>
                    </div>
                    <div class="col-md-6 text-end">
                        <asp:Button ID="Btt2" runat="server" CssClass="btn btn-outline-secondary btn-lg me-2" Text="Sair" PostBackUrl="~/Cliente/Menu4.aspx" />
                        <asp:Button ID="Butt1" runat="server" CssClass="btn btn-success btn-lg px-5 shadow-sm" Text="Gravar Pedido" onclick="Butt1_Click" OnClientClick="return jfcShowPedidoLoader();" />
                        <asp:Button ID="Butt2" runat="server" CssClass="btn btn-primary btn-lg ms-2" Text="Ver Pedido" PostBackUrl="~/Paginas/Relatorio.aspx" Visible="False" OnClick="Butt2_Click" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Listagem de Produtos 2 (Se aplicável) -->
        <div class="card section-card shadow-sm mt-4">
            <div class="card-header bg-secondary py-3">
                <h5 class="mb-0 text-white"><i class="bi bi-list-stars me-2"></i>Outros Produtos</h5>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <asp:GridView ID="GrdV3" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource6" CssClass="gridview-modern mb-0" GridLines="None" 
                        onload="GrdV3_Load" onrowupdated="GrdV3_RowUpdated" onrowdatabound="GrdV3_RowDataBound" 
                        onselectedindexchanged="GrdV3_SelectedIndexChanged" OnDataBound="GrdV3_DataBound" ShowHeaderWhenEmpty="True">
                        <Columns>
                            <asp:BoundField DataField="itemID" HeaderText="**" SortExpression="itemID">
                                <ItemStyle CssClass="text-muted small opacity-50" Width="30px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CODPROD" HeaderText="CÓDIGO" SortExpression="CODPROD" ReadOnly="True" />
                            <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRIÇÃO" SortExpression="DESCRPROD" ReadOnly="True" />
                            <asp:BoundField DataField="QTDE" HeaderText="QTDE PEDIDO" SortExpression="QTDE">
                                <ItemStyle HorizontalAlign="Center" CssClass="fw-bold" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="QTDE SOLICITADA">
                                <ItemTemplate>
                                    <asp:TextBox ID="TxtB3" runat="server" CssClass="form-control form-control-sm text-center mx-auto" 
                                        style="max-width: 80px;" ontextchanged="TxtB2_TextChanged" placeholder="0"></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="PADRAO1" HeaderText="VLR. UNITÁRIO" SortExpression="PADRAO1" DataFormatString="{0:C}" />
                            <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" DataFormatString="{0:C}" />
                            <asp:CommandField ButtonType="Button" SelectText="OK" ShowSelectButton="True">
                                <ControlStyle CssClass="btn btn-sm btn-outline-secondary" />
                            </asp:CommandField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="card-footer bg-light border-0 py-3">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <asp:Label ID="Lbl12" runat="server" CssClass="total-value"></asp:Label>
                    </div>
                    <div class="col-md-6 text-end">
                        <asp:Button ID="Btt3" runat="server" CssClass="btn btn-outline-secondary btn-lg me-2" Text="Sair" PostBackUrl="~/Cliente/Menu4.aspx" />
                        <asp:Button ID="Butt3" runat="server" CssClass="btn btn-secondary btn-lg px-5 shadow-sm" Text="Gravar Pedido" onclick="Butt3_Click" OnClientClick="return jfcShowPedidoLoader();" />
                        <asp:Button ID="Butt4" runat="server" CssClass="btn btn-primary btn-lg ms-2" Text="Ver Pedido" PostBackUrl="~/Paginas/Relatorio.aspx" Visible="False" OnClick="Butt2_Click" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Dias para Entrega -->
        <div class="card section-card shadow-sm mt-4" style="max-width: 500px;">
            <div class="card-header bg-light py-3 border-bottom">
                <h5 class="mb-0 text-success fw-bold"><i class="bi bi-calendar3 me-2"></i>Cronograma de Entregas</h5>
            </div>
            <div class="card-body p-0">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource5" CssClass="gridview-modern mb-0" GridLines="None" 
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnLoad="GridView1_Load">
                    <Columns>
                        <asp:BoundField DataField="DIASEM" HeaderText="Dia Entrega" SortExpression="DIASEM" />
                        <asp:BoundField DataField="LIMDIA" HeaderText="Dia Limite" SortExpression="LIMDIA" />
                        <asp:BoundField DataField="LIMHORA" HeaderText="H. Limite" SortExpression="LIMHORA">
                            <ItemStyle HorizontalAlign="Center" CssClass="fw-bold text-danger" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>

        <!-- Hidden Fields and DataSources -->
        <asp:TextBox ID="TxtBox1" runat="server" Visible="False"></asp:TextBox>
        <asp:GridView ID="Grid4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" onload="Grid4_Load" OnSelectedIndexChanged="Grid4_SelectedIndexChanged" Visible="False">
            <Columns>
                <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="DTENTREGA" SortExpression="DTENTREGA" />
                <asp:BoundField DataField="CGC_CPF" HeaderText="CGC_CPF" SortExpression="CGC_CPF" />
                <asp:CheckBoxField DataField="ATIVO" HeaderText="ATIVO" SortExpression="ATIVO" />
                <asp:BoundField DataField="LIMDIA" HeaderText="LIMDIA" SortExpression="LIMDIA" />
                <asp:BoundField DataField="LIMHORA" HeaderText="LIMHORA" SortExpression="LIMHORA" />
                <asp:BoundField DataField="DIASEM" HeaderText="DIASEM" SortExpression="DIASEM" />
                <asp:BoundField DataField="DIA" HeaderText="DIA" SortExpression="DIA" />
                <asp:BoundField DataField="NOMEPARC" HeaderText="NOMEPARC" SortExpression="NOMEPARC" />
                <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT itemID, CODPROD, DESCRPROD, QTDE, CGC_CPF, STATUS, PADRAO1, TOTAL FROM VLISTPRO1 WHERE (pedidoID IS NULL) AND (CGC_CPF = @CGC_CPF) ORDER BY itemID">
            <SelectParameters><asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" /></SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT itemID, CODPROD, DESCRPROD, QTDE, CGC_CPF, STATUS, PADRAO, TOTAL FROM VLISTPRO WHERE (pedidoID IS NULL) AND (CGC_CPF = @CGC_CPF) ORDER BY itemID">
            <SelectParameters><asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT ENTREGA.DTENTREGA, ENTREGA.CGC_CPF, TabProg.ATIVO, TabProg.LIMDIA, TabProg.LIMHORA, ENTREGA.DIASEM, TabProg.DIA, TGFPAR.NOMEPARC, TGFPAR.UF FROM ENTREGA INNER JOIN TGFPAR ON ENTREGA.CGC_CPF = TGFPAR.CGC_CPF INNER JOIN TabProg ON TGFPAR.CODPARC = TabProg.CODPARC AND ENTREGA.DIASEM = TabProg.DIASEM WHERE (ENTREGA.CGC_CPF = @CGC_CPF) AND (TabProg.ATIVO = 1) ORDER BY ENTREGA.DTENTREGA">
            <SelectParameters><asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT DTENTREGA, ATIVO, CGC_CPF FROM PedEntrega WHERE (CGC_CPF = @CGC_CPF) AND (ATIVO = 'True') AND (DTENTREGA NOT IN ('25/12/2025', '01/01/2026')) ORDER BY DTENTREGA">
            <SelectParameters><asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT NOMEPARC, CGC_CPF, EMAIL, CODPARC, UF FROM TGFPAR WHERE (CGC_CPF = @CGC_CPF)" ProviderName="System.Data.SqlClient">
            <SelectParameters><asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" Type="String" /></SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT CODPARC, DIASEM, ATIVO, LIMDIA, LIMHORA, IDSEM FROM TabProg WHERE (CODPARC = @CODPARC) AND (ATIVO = 1) ORDER BY IDSEM">
            <SelectParameters><asp:ControlParameter ControlID="Lab10" Name="CODPARC" PropertyName="Text" /></SelectParameters>
        </asp:SqlDataSource>
    </div>

    <div id="pedidoLoaderOverlay" class="pedido-loader-overlay" style="display: none;">
        <div class="pedido-loader-card">
            <div class="spinner-border text-success" role="status" aria-hidden="true"></div>
            <div class="fw-semibold text-success">Gravando pedido...</div>
        </div>
    </div>

    <script>
        function jfcShowPedidoLoader() {
            var overlay = document.getElementById('pedidoLoaderOverlay');
            if (overlay) overlay.style.display = 'flex';
            return true;
        }

        function jfcHidePedidoLoader() {
            var overlay = document.getElementById('pedidoLoaderOverlay');
            if (overlay) overlay.style.display = 'none';
        }

        (function () {
            if (typeof Sys !== 'undefined' && Sys.WebForms && Sys.WebForms.PageRequestManager) {
                var prm = Sys.WebForms.PageRequestManager.getInstance();
                if (prm) {
                    prm.add_beginRequest(function () { jfcShowPedidoLoader(); });
                    prm.add_endRequest(function () { jfcHidePedidoLoader(); });
                }
            }
        })();
    </script>
</asp:Content>
