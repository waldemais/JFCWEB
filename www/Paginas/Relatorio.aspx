<%@ Page Title="Resumo do Pedido" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Relatorio.aspx.cs" Inherits="JFCWEB.Paginas.Relatorio" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .order-summary-card {
            border-top: 5px solid #198754;
        }
        .order-info-label {
            font-weight: 600;
            color: #6c757d;
            font-size: 0.8rem;
            text-transform: uppercase;
        }
        .order-info-value {
            font-weight: 700;
            color: #212529;
            font-size: 1.1rem;
        }
        @media print {
            .no-print {
                display: none !important;
            }
            .container {
                width: 100% !important;
                max-width: none !important;
                margin: 0 !important;
                padding: 0 !important;
            }
            .card {
                border: 1px solid #ddd !important;
                box-shadow: none !important;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container py-4">
        <!-- Barra de Ações -->
        <div class="d-flex justify-content-between align-items-center mb-4 no-print">
            <div>
                <asp:LinkButton ID="btnBack" runat="server" CssClass="btn btn-outline-secondary me-2" PostBackUrl="~/Cliente/Menu4.aspx">
                    <i class="bi bi-house-door me-1"></i>Menu
                </asp:LinkButton>
                <asp:LinkButton ID="btnConsult" runat="server" CssClass="btn btn-outline-primary" PostBackUrl="~/Paginas/Pedidos.aspx">
                    <i class="bi bi-search me-1"></i>Consultar Pedidos
                </asp:LinkButton>
            </div>
            <div>
                <button type="button" class="btn btn-success" onclick="window.print();">
                    <i class="bi bi-printer me-1"></i>Imprimir Resumo
                </button>
            </div>
        </div>

        <!-- Alerta de Envio -->
        <div class="alert alert-success d-flex align-items-center mb-4 no-print" role="alert">
            <i class="bi bi-check-circle-fill fs-4 me-3"></i>
            <div>
                <strong>Pedido nº <asp:Literal ID="litOrderNum" runat="server"></asp:Literal> gravado com sucesso!</strong><br />
                Uma cópia foi enviada para o e-mail: <asp:Label ID="Labe2" runat="server" CssClass="fw-bold"></asp:Label>
            </div>
        </div>

        <!-- Card Principal do Pedido -->
        <div class="card order-summary-card shadow-sm mb-4">
            <div class="card-header bg-white py-3">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <h3 class="mb-0 text-success fw-bold">Pedido Nº <asp:Literal ID="litOrderNumHeader" runat="server"></asp:Literal></h3>
                    </div>
                    <div class="col-md-6 text-md-end mt-2 mt-md-0">
                        <span class="badge bg-success fs-6">STATUS: <asp:Literal ID="litStatus" runat="server"></asp:Literal></span>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row g-4">
                    <div class="col-md-3 col-sm-6 border-end-md">
                        <div class="order-info-label">CNPJ do Cliente</div>
                        <div class="order-info-value"><asp:Literal ID="litCnpj" runat="server"></asp:Literal></div>
                    </div>
                    <div class="col-md-3 col-sm-6 border-end-md">
                        <div class="order-info-label">Nome Fantasia</div>
                        <div class="order-info-value"><asp:Literal ID="litNomeParc" runat="server"></asp:Literal></div>
                    </div>
                    <div class="col-md-3 col-sm-6 border-end-md">
                        <div class="order-info-label">Data do Pedido</div>
                        <div class="order-info-value"><asp:Literal ID="litDataPedido" runat="server"></asp:Literal></div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="order-info-label text-success">Previsão de Entrega</div>
                        <div class="order-info-value text-success"><asp:Literal ID="litDataEntrega" runat="server"></asp:Literal></div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Tabela de Itens -->
        <div class="card shadow-sm">
            <div class="card-header bg-light py-3">
                <h5 class="mb-0 fw-bold text-dark"><i class="bi bi-list-ul me-2"></i>Itens do Pedido</h5>
            </div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource2" CssClass="gridview-modern mb-0" GridLines="None" 
                        OnDataBound="GridView2_DataBound" OnLoad="GridView2_Load">
                        <Columns>
                            <asp:BoundField DataField="CODPROD" HeaderText="CÓDIGO" SortExpression="CODPROD" />
                            <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRIÇÃO" SortExpression="DESCRPROD" HtmlEncode="False" />
                            <asp:BoundField DataField="QTDE" HeaderText="QUANTIDADE" SortExpression="QTDE">
                                <ItemStyle HorizontalAlign="Center" CssClass="fw-bold" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PADRAO" HeaderText="VLR. UNITÁRIO" SortExpression="PADRAO" DataFormatString="{0:C2}">
                                <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" DataFormatString="{0:C2}">
                                <ItemStyle HorizontalAlign="Right" CssClass="fw-bold text-success" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="card-footer bg-light border-0 py-3">
                <div class="row align-items-center">
                    <div class="col-6">
                        <span class="text-muted">Total de Itens:</span> 
                        <asp:Label ID="Label2" runat="server" CssClass="fw-bold ms-1"></asp:Label>
                    </div>
                    <div class="col-6 text-end">
                        <span class="fs-5 me-2">Valor Total do Pedido:</span>
                        <asp:Label ID="Label3" runat="server" CssClass="fs-4 fw-bold text-success"></asp:Label>
                    </div>
                </div>
            </div>
        </div>

        <!-- Rodapé do Resumo -->
        <div class="text-center mt-5 no-print">
            <p class="text-muted small">JFC Verduras - Portal de Pedidos Web</p>
        </div>

        <!-- Controles Ocultos para Lógica Existente -->
        <div style="display:none;">
            <asp:TextBox ID="TextBx1" runat="server"></asp:TextBox>
            <asp:Label ID="Labe1" runat="server"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" onload="GridView1_Load"></asp:GridView>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Visible="False"></asp:GridView>
        </div>

        <!-- DataSources -->
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            SelectCommand="SELECT DISTINCT [CGC_CPF], [EMAIL] FROM [TGFPAR] WHERE ([CGC_CPF] = @CGC_CPF)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Labe1" Name="CGC_CPF" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            SelectCommand="SELECT DISTINCT itemID, pedidoID, CODPROD, QTDE, DESCRPROD, PADRAO, TOTAL FROM VLISTPRO WHERE (pedidoID = @pedidoID) AND (QTDE <> 0) ORDER BY DESCRPROD" ProviderName="System.Data.SqlClient">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBx1" Name="pedidoID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            SelectCommand="SELECT DISTINCT [CGC_CPF], [NOMEPARC], [DTENTREGA], [DTEMISSAO], [STATUS] FROM [PEDIDOS] WHERE ([pedidoID] = @pedidoID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBx1" Name="pedidoID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
