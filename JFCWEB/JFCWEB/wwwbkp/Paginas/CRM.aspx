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
        .auto-style3 {
            text-align: center;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style15 {
            width: 98px;
            height: 23px;
        }
        .auto-style23 {
            width: 935px;
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
        .auto-style47 {
            color: #FF0000;
        }
        .auto-style48 {
            width: 24px;
        }
        .auto-style49 {
            width: 460px;
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
            <h3>Informações e Reclamações</h3>
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
                        <asp:Label ID="Label22" runat="server" Text="Ocorrências"></asp:Label>
                        <asp:TextBox ID="TBox" runat="server" Visible="False" Width="54px"></asp:TextBox>
                        <asp:RadioButtonList ID="RBList1" runat="server" Height="44px" RepeatDirection="Horizontal" Width="244px" AutoPostBack="True" OnSelectedIndexChanged="RBList1_SelectedIndexChanged">
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
                        <asp:TextBox ID="TBox2" runat="server" BackColor="#CCFFCC" Width="150px" Enabled="False" ReadOnly="True"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Nº da Nota"></asp:Label>
                        <br />
                        <asp:TextBox ID="TBox5" runat="server" BackColor="#CCFFCC" Width="150px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label15" runat="server" Text="Contato"></asp:Label>
                        <br />
                        <asp:TextBox ID="TBox14" runat="server" BackColor="#CCFFCC" Width="150px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label16" runat="server" Text="Telefone"></asp:Label>
                        <br />
                        <asp:TextBox ID="TBox15" runat="server" BackColor="#CCFFCC" Width="150px" TextMode="Phone"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label20" runat="server" Text="Email Solicitante"></asp:Label>
                        <br />
                        <asp:TextBox ID="TBox17" runat="server" BackColor="#CCFFCC" TextMode="Email" Width="261px"></asp:TextBox>
                    </td>
                    <td class="auto-style40" colspan="2">
                        <asp:Label ID="Label19" runat="server" Text="BK Number"></asp:Label>
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
                        <br />
                        <asp:TextBox ID="TBox6" runat="server" BackColor="#CCFFCC" Width="150px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="Qt. Reclamada"></asp:Label>
                        <br />
                        <asp:TextBox ID="TBox7" runat="server" BackColor="#CCFFCC" Width="150px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label10" runat="server" Text="Lote"></asp:Label>
                        <br />
                        <asp:TextBox ID="TBox8" runat="server" BackColor="#CCFFCC" Width="150px"></asp:TextBox>
                    </td>
                    <td class="auto-style41">
                        <asp:Label ID="Label11" runat="server" Text="Dt.Produção"></asp:Label>
                        <br />
                        <asp:TextBox ID="TBox9" runat="server" BackColor="#CCFFCC" TextMode="Date"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label12" runat="server" Text="Dt.Vencimento"></asp:Label>
                            <br />
                            <asp:TextBox ID="TBox10" runat="server" BackColor="#CCFFCC" TextMode="Date"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label21" runat="server" ForeColor="Red" Text="(*)"></asp:Label>
            <asp:Label ID="Label14" runat="server" Text="Anexar Foto"></asp:Label>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUp" ErrorMessage="Obrigatótio Anexar uma foto." ForeColor="Red" Width="200px">(*) Campo Obrigatório</asp:RequiredFieldValidator>
            <asp:FileUpload ID="FileUp" runat="server" BackColor="#CCFFCC" />
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
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ForeColor="Red" Height="35px" />
            <hr />
            <h3 class="auto-style46">
                        <span class="auto-style47">(*) </span>
            <asp:Label ID="Label6" runat="server" Text="Descrição Detalhada do CRM"></asp:Label>
            &nbsp;</h3>
        </div>
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Informe a descrição detalhada." ForeColor="Red" Width="200px" ControlToValidate="TBox11">(*)  Preenchimento Obrigatório</asp:RequiredFieldValidator>
        </div>
        <div class="auto-style2">
            <br />
            <asp:TextBox ID="TBox11" runat="server" BackColor="#CCFFCC" Height="152px" TextMode="MultiLine" Width="714px" Font-Size="Small" CausesValidation="True" ValidateRequestMode="Enabled" ValidationGroup="Gravar"></asp:TextBox>
            <br />
            <div>
            </div>
            <asp:Button ID="Bton1" runat="server" BackColor="#CCFFCC" Text="Gravar" Width="114px" OnClick="Bton1_Click" Font-Bold="True" />
            <br />
            <div>
            </div>
            <br />
        </div>
        <div class="auto-style3">
            <table class="auto-style23">
                <tr>
                    <td>
                        <h3>
                            <asp:Label ID="Label17" runat="server" Enabled="False" Font-Bold="True" Font-Size="Large" ForeColor="#009900" Text="Gravado com Sucesso!" Visible="False"></asp:Label>
                        </h3>
                    </td>
                </tr>
            </table>
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
        </div>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT DISTINCT [CODPROD], [DESCRPROD] FROM [VLISTPRO] WHERE ([CGC_CPF] = @CGC_CPF)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TBox12" Name="CGC_CPF" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
    </form>
</body>
</html>
