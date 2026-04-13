<%@ Page Title="CRM Zamp" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ZampCrm1.aspx.cs" Inherits="JFCWEB.Zamp.ZampCrm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid py-4">
        <div class="card shadow-sm mb-4">
            <div class="card-header bg-success text-white d-flex justify-content-between align-items-center">
                <h5 class="mb-0">Status CRM - BK</h5>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/ntsalads.png" Width="40px" CssClass="bg-white rounded p-1" />
            </div>
            <div class="card-body">
                <div class="row g-3 align-items-end">
                    <div class="col-md-3">
                        <label class="form-label fw-bold small">Status</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select shadow-sm">
                            <asp:ListItem>Aberto</asp:ListItem>
                            <asp:ListItem>Procedente</asp:ListItem>
                            <asp:ListItem>Nao Procedente</asp:ListItem>
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
                        <asp:Button ID="Button1" runat="server" Text="Procurar" CssClass="btn btn-success w-100 shadow-sm fw-bold" />
                        <asp:TextBox ID="TBo1" runat="server" Visible="False"></asp:TextBox>
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
                        <asp:BoundField DataField="Qautoriz" HeaderText="Autorizada" SortExpression="Qautoriz" DataFormatString="{0:N0}" />
                        <asp:BoundField DataField="Qreclamada" HeaderText="Reclamada" SortExpression="Qreclamada" DataFormatString="{0:N0}" />
                    </Columns>
                    <EmptyDataTemplate>
                        <div class="text-center p-4">Nenhuma ocorrência encontrada para os filtros selecionados.</div>
                    </EmptyDataTemplate>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
                    </asp:BoundField>
                    <asp:BoundField DataField="Lote" HeaderText="Lote" SortExpression="Lote">
                    <ItemStyle Font-Size="Small" Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="BKNumber" HeaderText="BKNumber" SortExpression="BKNumber">
                    <ItemStyle Font-Size="Small" Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Dtemb" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Dt.Emb" SortExpression="Dtemb">
                    <ItemStyle Font-Size="Small" Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Dtvenc" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Dt.Venc" SortExpression="Dtvenc">
                    <ItemStyle Font-Size="Small" Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Ocorrencia" HeaderText="Ocorrência" SortExpression="Ocorrencia">
                    <ControlStyle Width="500px" />
                    </asp:BoundField>
                    <asp:CommandField SelectText="+ Detahes..." ShowSelectButton="True">
                    <ItemStyle Width="50px" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT Id, Dtatual AS Expr1, CGC, Nomepar, Status, Ocor, Produto, Qentregue, Qreclamada, Lote, Dtemb, Ocorrencia, Dtvenc, Foto, BKNumber, Qautoriz FROM CRM1 WHERE (Status = @Status) AND (Dtatual BETWEEN @Dtatual1 AND DATEADD(Day, 1, @Dtatual2)) AND (Nomepar LIKE '%BK%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Status" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="Dtatual1" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" DbType="DateTime2" Name="Dtatual2" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
