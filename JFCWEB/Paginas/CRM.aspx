<%@ Page Title="Cadastro de CRM" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CRM.aspx.cs" Inherits="JFCWEB.Paginas.CRM" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .section-title {
            background-color: #e9ecef;
            padding: 10px 15px;
            border-radius: 5px;
            margin-bottom: 20px;
            border-left: 5px solid #198754;
        }
        .form-label {
            font-weight: 600;
            color: #495057;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container py-4">
        <div class="section-title">
            <h2 class="mb-0">Cadastro de CRM - Ocorrências</h2>
        </div>

        <div class="card shadow-sm mb-4">
            <div class="card-header bg-success text-white">
                <h5 class="mb-0">Dados do Cliente e Ocorrência</h5>
            </div>
            <div class="card-body">
                <div class="row mb-3">
                    <div class="col-md-4">
                        <label class="form-label">CGC / CNPJ</label>
                        <asp:TextBox ID="TBox12" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="col-md-8">
                        <label class="form-label">Nome do Parceiro</label>
                        <asp:TextBox ID="TBox13" runat="server" CssClass="form-control" ReadOnly="True" Enabled="False"></asp:TextBox>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-3">
                        <label class="form-label">CRM Nº</label>
                        <asp:TextBox ID="TBox1" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <label class="form-label">Status</label>
                        <asp:TextBox ID="TBox4" runat="server" CssClass="form-control" Enabled="False">Aberto</asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label d-block">Tipo de Ocorrência</label>
                        <asp:RadioButtonList ID="RBList1" runat="server" RepeatDirection="Horizontal" 
                            CssClass="btn-group w-100" OnSelectedIndexChanged="RBList1_SelectedIndexChanged" 
                            AutoPostBack="True" RepeatLayout="Flow">
                            <asp:ListItem Value="0" Selected="True" class="btn btn-outline-success">Entrega</asp:ListItem>
                            <asp:ListItem Value="1" class="btn btn-outline-success">Pós-Entrega</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="RBList1" 
                            Display="Dynamic" ErrorMessage="Selecione Entrega ou Pós-Entrega." CssClass="text-danger small">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TBox" runat="server" Visible="False"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6">
                <div class="card shadow-sm mb-4 h-100">
                    <div class="card-header bg-light">
                        <h5 class="mb-0 text-success">Informações do Solicitante</h5>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <label class="form-label">Data Abertura</label>
                            <asp:TextBox ID="TBox2" runat="server" CssClass="form-control bg-light" ReadOnly="True"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Nº da Nota</label>
                            <asp:TextBox ID="TBox5" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TBox5" 
                                Display="Dynamic" ErrorMessage="N° da Nota deve ser informado." CssClass="text-danger small">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Nome do Reclamante</label>
                            <asp:TextBox ID="TBox14" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TBox14" 
                                Display="Dynamic" ErrorMessage="O Nome deve ser informado." CssClass="text-danger small">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Telefone</label>
                            <asp:TextBox ID="TBox15" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TBox15" 
                                Display="Dynamic" ErrorMessage="O Telefone deve ser informado." CssClass="text-danger small">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Email para Resposta</label>
                            <asp:TextBox ID="TBox17" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TBox17" 
                                Display="Dynamic" ErrorMessage="O Email deve ser informado." CssClass="text-danger small">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TBox17" 
                                Display="Dynamic" ErrorMessage="Informe o email corretamente." CssClass="text-danger small" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="card shadow-sm mb-4 h-100">
                    <div class="card-header bg-light">
                        <h5 class="mb-0 text-success">Detalhes do Produto</h5>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <label class="form-label">BK Number</label>
                            <asp:TextBox ID="TBox16" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TBox16" 
                                Display="Dynamic" ErrorMessage="O BK Number deve ser informado." CssClass="text-danger small">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Ocorrência</label>
                            <asp:DropDownList ID="TBox3" runat="server" CssClass="form-select" DataSourceID="SqlDataSource3" 
                                DataTextField="Ocorrencias" DataValueField="Ocorrencias">
                            </asp:DropDownList>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Produto</label>
                            <asp:DropDownList ID="Dl1" runat="server" CssClass="form-select" DataSourceID="SqlDataSource2" 
                                DataTextField="DESCRPROD" DataValueField="DESCRPROD">
                            </asp:DropDownList>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Qt. Entregue</label>
                                <asp:TextBox ID="TBox6" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TBox6" 
                                    Display="Dynamic" ErrorMessage="A Quantidade Entregue deve ser informada." CssClass="text-danger small">*</asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Qt. Reclamada</label>
                                <asp:TextBox ID="TBox7" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TBox7" 
                                    Display="Dynamic" ErrorMessage="A Quantidade Reclamada deve ser informada." CssClass="text-danger small">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Lote</label>
                            <asp:TextBox ID="TBox8" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TBox8" 
                                Display="Dynamic" ErrorMessage="O Lote deve ser informado." CssClass="text-danger small">*</asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card shadow-sm mb-4">
            <div class="card-header bg-light">
                <h5 class="mb-0 text-success">Datas e Documentação</h5>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-4 mb-3">
                        <label class="form-label">Dt. Produção</label>
                        <asp:TextBox ID="TBox9" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TBox9" 
                            Display="Dynamic" ErrorMessage="A Data de Produção deve ser informada." CssClass="text-danger small">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label class="form-label">Dt. Vencimento</label>
                        <asp:TextBox ID="TBox10" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TBox10" 
                            Display="Dynamic" ErrorMessage="A Data de Vencimento deve ser informada." CssClass="text-danger small">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label class="form-label">Relatório / Foto</label>
                        <asp:FileUpload ID="FileUp" runat="server" CssClass="form-control" />
                    </div>
                </div>
                <div class="mb-3">
                    <label class="form-label">Descrição da Ocorrência</label>
                    <asp:TextBox ID="TBox11" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" 
                        placeholder="Descreva aqui os detalhes da ocorrência..."></asp:TextBox>
                </div>
                
                <div class="d-flex justify-content-between align-items-center mt-4">
                    <asp:HyperLink ID="hplnkExibeImagem" runat="server" Target="_blank" Visible="False" CssClass="btn btn-outline-info">
                        <i class="bi bi-image"></i> Ver Foto Anexada
                    </asp:HyperLink>
                    <div>
                        <asp:Button ID="Bton1" runat="server" Text="Enviar CRM para Análise" CssClass="btn btn-success btn-lg px-5 shadow-sm" OnClick="Bton1_Click" />
                        <asp:Button ID="Button1" runat="server" Text="Voltar" CssClass="btn btn-outline-secondary btn-lg ms-2" CausesValidation="False" PostBackUrl="~/Paginas/Menucrm.aspx" />
                    </div>
                </div>
                
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="alert alert-danger mt-3" 
                    HeaderText="Por favor, corrija os seguintes erros:" DisplayMode="BulletList" />
            </div>
        </div>

        <!-- Hidden Grid for Data Binding -->
        <asp:GridView ID="Grid1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False">
            <Columns>
                <asp:BoundField DataField="NOMEPARC" HeaderText="NOMEPARC" SortExpression="NOMEPARC" />
                <asp:BoundField DataField="CGC_CPF" HeaderText="CGC_CPF" SortExpression="CGC_CPF" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            </Columns>
        </asp:GridView>

        <!-- DataSources -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            SelectCommand="SELECT DISTINCT [NOMEPARC], [CGC_CPF], [EMAIL] FROM [TGFPAR] WHERE ([CGC_CPF] = @CGC_CPF)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TBox12" Name="CGC_CPF" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            SelectCommand="SELECT DISTINCT [CODPROD], [DESCRPROD] FROM [VLISTPRO] WHERE ([CGC_CPF] = @CGC_CPF)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TBox12" Name="CGC_CPF" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            SelectCommand="SELECT [Ocorrencias] FROM [Ocorrencia] ORDER BY [Ocorrencias]"></asp:SqlDataSource>
    </div>
</asp:Content>