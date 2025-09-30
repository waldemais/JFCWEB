<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRM.aspx.cs" Inherits="JFCWEB.Paginas.CRM" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 249px;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style15 {
            width: 98px;
            height: 23px;
        }
        .auto-style32 {
            text-align: left;
        }
        .auto-style33 {
            width: 325px;
            height: 48px;
        }
        .auto-style34 {
            width: 98px;
            height: 48px;
        }
        .auto-style35 {
            text-align: left;
            height: 48px;
        }
        .auto-style36 {
            width: 325px;
            height: 80px;
            text-align: left;
        }
        .auto-style37 {
            width: 98px;
            height: 80px;
            text-align: left;
        }
        .auto-style38 {
            text-align: left;
            height: 80px;
        }
        .auto-style39 {
            width: 325px;
            height: 164px;
            text-align: left;
        }
        .auto-style40 {
            width: 98px;
            height: 164px;
            text-align: left;
        }
        .auto-style41 {
            text-align: left;
            height: 164px;
        }
        .auto-style42 {
            width: 325px;
            height: 23px;
        }
        .auto-style43 {
            text-align: left;
            height: 23px;
        }
        .auto-style44 {
            text-align: center;
            height: 1134px;
        }
        .auto-style45 {
            width: 79px;
            height: 23px;
        }
        .auto-style46 {
            height: 28px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style44">
        <div>
            <div class="auto-style32" style="background-color: #E7EBEF">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Cadastro de CRM" BackColor="#CCFFCC" Font-Size="Large"></asp:Label>
            </div>
            <br />
            <h3>CADASTRO DE OCORRÊNCIAS</h3>
            <hr />
        </div>
        <div>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style33">
                        <br />
                        <asp:TextBox ID="TBox12" runat="server" Width="133px" Enabled="False" BorderStyle="None"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style34" colspan="2">
                        <asp:TextBox ID="TBox13" runat="server" Width="329px" ReadOnly="True" Enabled="False" BorderStyle="None"></asp:TextBox>
                    </td>
                    <td class="auto-style35">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style36">
                        <asp:Label ID="Label1" runat="server" Text="CRM Nro."></asp:Label>
                        <asp:TextBox ID="TBox1" runat="server" Width="88px" Enabled="False" BorderStyle="None"></asp:TextBox>
                    </td>
                    <td class="auto-style37" colspan="2">
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Status "></asp:Label>
                        <asp:TextBox ID="TBox4" runat="server" Width="150px" Enabled="False">Aberto</asp:TextBox>
                    </td>
                    <td class="auto-style38">
                        <asp:Label ID="Label22" runat="server" Text="Tipo de Ocorrência"></asp:Label>
                        <asp:TextBox ID="TBox" runat="server" Visible="False" Width="54px"></asp:TextBox>                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="RBList1" Display="Dynamic" ErrorMessage="Selecione Entrega ou Pós Entrega." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RadioButtonList ID="RBList1" runat="server" Height="44px" RepeatDirection="Horizontal" Width="244px" OnSelectedIndexChanged="RBList1_SelectedIndexChanged" BorderStyle="Solid" AutoPostBack="True">
                            <asp:ListItem Value="0">Entrega</asp:ListItem>
                            <asp:ListItem Value="1">Pós-Entrega</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style39">
                        <asp:Label ID="Label2" runat="server" Text="Data Abertura"></asp:Label>
                        <br />
                        <asp:TextBox ID="TBox2" runat="server" BackColor="#CCFFCC" Width="150px" Enabled="False" ReadOnly="True" ValidateRequestMode="Enabled"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Nº da Nota"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TBox5" Display="Dynamic" ErrorMessage="N° da Nota deve ser informado." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="TBox5" runat="server" BackColor="#CCFFCC" Width="150px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label15" runat="server" Text="Nome do Reclamante" ValidateRequestMode="Enabled"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TBox14" Display="Dynamic" ErrorMessage="O Nome deve ser informado." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="TBox14" runat="server" BackColor="#CCFFCC" Width="150px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label16" runat="server" Text="Telefone"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TBox15" Display="Dynamic" ErrorMessage="O Telefone deve ser informado." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="TBox15" runat="server" BackColor="#CCFFCC" Width="150px" TextMode="Phone"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label20" runat="server" Text="Email para enviar resposta"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TBox17" Display="Dynamic" ErrorMessage="O Email deve ser informado." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TBox17" Display="Dynamic" ErrorMessage="Informe o email corretamente." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        <br />
                        <asp:TextBox ID="TBox17" runat="server" BackColor="#CCFFCC" TextMode="Email" Width="261px"></asp:TextBox>
                    </td>
                    <td class="auto-style40" colspan="2">
                        <asp:Label ID="Label19" runat="server" Text="BK Number"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TBox16" Display="Dynamic" ErrorMessage="O BK Number deve ser informado." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="TBox16" runat="server" BackColor="#CCFFCC" Width="150px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Ocorrência"></asp:Label>
                        <br />
                        <asp:DropDownList ID="TBox3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Ocorrencias" DataValueField="Ocorrencias" BackColor="#CCFFCC" Width="150px">
                            <asp:ListItem Selected="True">xxxxxxx</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="Produto"></asp:Label>
                        <br />
                        <asp:DropDownList ID="Dl1" runat="server" BackColor="#CCFFCC" DataSourceID="SqlDataSource2" DataTextField="DESCRPROD" DataValueField="DESCRPROD" Width="150px">
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Qt.Entregue"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TBox6" Display="Dynamic" ErrorMessage="A Quantidade Entregue deve ser informada." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="TBox6" runat="server" BackColor="#CCFFCC" Width="150px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="Qt. Reclamada" Width="103px"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TBox7" Display="Dynamic" ErrorMessage="A Quantidade Reclamada deve ser informada." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="TBox7" runat="server" BackColor="#CCFFCC" Width="150px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label10" runat="server" Text="Lote"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TBox8" Display="Dynamic" ErrorMessage="O Lote deve ser informado." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="TBox8" runat="server" BackColor="#CCFFCC" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style41">
                        <asp:Label ID="Label11" runat="server" Text="Dt.Produção"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TBox9" Display="Dynamic" ErrorMessage="A Data de Produção deve ser informada." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="TBox9" runat="server" BackColor="#CCFFCC" TextMode="Date"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label12" runat="server" Text="Dt.Vencimento"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TBox10" Display="Dynamic" ErrorMessage="A Data de Vencimento deve ser informada." ForeColor="Red">*</asp:RequiredFieldValidator>
                            <br />
                            <asp:TextBox ID="TBox10" runat="server" BackColor="#CCFFCC" TextMode="Date"></asp:TextBox>
                        <br />
                        <br />
            <asp:Label ID="Label14" runat="server" Text="Anexar Foto"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUp" ErrorMessage="Obrigatório Anexar uma foto." ForeColor="Red" Width="16px" Enabled="True" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <br />
            <asp:FileUpload ID="FileUp" runat="server" BackColor="#CCFFCC" />
                        <br />
                        <br />
                <asp:HyperLink ID="hplnkExibeImagem" runat="server" NavigateUrl="~/Paginas/ExibirImagem.aspx" Visible="False" Target="_blank">Click aqui para exibir a Imagem</asp:HyperLink>
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style42">
                        <br />
                    </td>
                    <td class="auto-style15">
                        <br />
                    </td>
                    <td class="auto-style45">
                        <br />
                    </td>
                    <td class="auto-style43">
                        <br />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <h3 class="auto-style46">
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT [Ocorrencias] FROM [Ocorrencia] ORDER BY [Ocorrencias]"></asp:SqlDataSource>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ForeColor="Red" Height="35px" Enabled="True" ShowSummary="False" />
                <hr />
            <h3 class="auto-style46">
            <asp:Label ID="Label6" runat="server" Text="Descrição Detalhada"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Informe a descrição detalhada." ForeColor="Red" Width="16px" ControlToValidate="TBox11" Enabled="True" Display="Dynamic">*</asp:RequiredFieldValidator>
            </h3>
        </div>
        <div class="auto-style2">
            <br />
            <asp:TextBox ID="TBox11" runat="server" BackColor="#CCFFCC" Height="152px" TextMode="MultiLine" Width="714px" Font-Size="Small" CausesValidation="True" ValidateRequestMode="Enabled" ValidationGroup="Gravar"></asp:TextBox>
            <br />
            <div>
            </div>
            <asp:Button ID="Bton1" runat="server" BackColor="#CCFFCC" Text="Gravar" Width="114px" OnClick="Bton1_Click" Font-Bold="True" />
            
            <asp:Button ID="Button1" runat="server" BackColor="#CCFFCC" CausesValidation="False" EnableTheming="True" Font-Bold="True" PostBackUrl="~/Paginas/Menucrm.aspx" Text="Voltar" Width="114px" />
            
            <br />            <div>
            </div>
                      <br />
        </div>
        
        <asp:GridView ID="Grid1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False" BackColor="#CCFFCC">
            <Columns>
                <asp:BoundField DataField="NOMEPARC" HeaderText="NOMEPARC" SortExpression="NOMEPARC" />
                <asp:BoundField DataField="CGC_CPF" HeaderText="CGC_CPF" SortExpression="CGC_CPF" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT DISTINCT [NOMEPARC], [CGC_CPF], [EMAIL] FROM [TGFPAR] WHERE ([CGC_CPF] = @CGC_CPF)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TBox12" Name="CGC_CPF" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            <br />
            <br />
        </div>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT DISTINCT [CODPROD], [DESCRPROD] FROM [VLISTPRO] WHERE ([CGC_CPF] = @CGC_CPF)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TBox12" Name="CGC_CPF" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
    </form>
</body>
</html>
