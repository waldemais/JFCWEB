<%@ Page Title="CRM Subway" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Subwaycrm1.aspx.cs" Inherits="JFCWEB.Subway.Subwaycrm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid py-4">
        <div class="card shadow-sm mb-4">
            <div class="card-header bg-success text-white d-flex justify-content-between align-items-center">
                <h5 class="mb-0">Status CRM - Subway</h5>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/ntsalads.png" Width="40px" CssClass="bg-white rounded p-1" />
            </div>
            <div class="card-body">
                <div class="row g-3 align-items-end">
                    <div class="col-md-3">
                        <label class="form-label fw-bold small">Status</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select shadow-sm">
                            <asp:ListItem>Aberto</asp:ListItem>
                            <asp:ListItem>Procedente</asp:ListItem>
                            <asp:ListItem>Não-Procedente</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <label class="form-label fw-bold small">Data Inicial</label>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" CssClass="form-control shadow-sm"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <label class="form-label fw-bold small">Data Final</label>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" CssClass="form-control shadow-sm"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Button ID="Button1" runat="server" Text="Mostrar" CssClass="btn btn-success w-100 shadow-sm fw-bold" />
                        <asp:TextBox ID="TB1" runat="server" Visible="False"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>

        <div class="card shadow-sm border-0 overflow-hidden">
            <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Id" DataSourceID="SqlDataSource1" 
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
                    CssClass="gridview-modern mb-0" GridLines="None" ShowHeaderWhenEmpty="True">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Nº CRM" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Expr1" HeaderText="Entrada" SortExpression="Expr1" />
                        <asp:BoundField DataField="Nomepar" HeaderText="Loja" SortExpression="Nomepar" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="Produto" HeaderText="Produto" SortExpression="Produto" />
                        <asp:BoundField DataField="Ocor" HeaderText="Descrição" SortExpression="Ocor" />
                        <asp:BoundField DataField="Qentregue" HeaderText="Entregue" SortExpression="Qentregue" DataFormatString="{0:N0}" />
                        <asp:BoundField DataField="Qreclamada" HeaderText="Reclamada" SortExpression="Qreclamada" DataFormatString="{0:N0}" />
                        <asp:BoundField DataField="Qautoriz" HeaderText="Autorizada" SortExpression="Qautoriz" DataFormatString="{0:N0}" />
                        <asp:BoundField DataField="Lote" HeaderText="Lote" SortExpression="Lote" />
                        <asp:BoundField DataField="BKNumber" HeaderText="SwNumber" SortExpression="BKNumber" />
                        <asp:BoundField DataField="Dtemb" HeaderText="Dt. Emb" SortExpression="Dtemb" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="Dtvenc" HeaderText="Dt. Venc" SortExpression="Dtvenc" DataFormatString="{0:dd/MM/yyyy}" />
                    </Columns>
                    <EmptyDataTemplate>
                        <div class="text-center p-4">Nenhuma ocorrência encontrada para os filtros selecionados.</div>
                    </EmptyDataTemplate>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>