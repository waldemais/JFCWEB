<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrmNaoProcede.aspx.cs" Inherits="JFCWEB.Paginas.CrmNaoProcede" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 936px;
        }
        .auto-style8 {
            height: 26px;
            width: 467px;
            text-align: center;
        }
        .auto-style9 {
            width: 467px;
            text-align: center;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            width: 935px;
        }
        .auto-style15 {
            width: 311px;
        }
        .auto-style16 {
            width: 441px;
        }
        .auto-style17 {
            width: 441px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style12">
            <h3>
                <asp:TextBox ID="TB1" runat="server"></asp:TextBox>
            </h3>
            <div style="background-color: #E7EBEF">
            <asp:Label ID="Label4" runat="server" Enabled="False" Font-Bold="True" Text="Justificativa Não Procedente: " ViewStateMode="Disabled" BackColor="#CCFFCC" Font-Size="Large"></asp:Label>
                <hr />
            </div>
        </div>
        <div>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label1" runat="server" Text="Nome Aprovador (*)"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label2" runat="server" Text="Email do Aprovador (*)"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#E1FFC4" Width="226px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox2" runat="server" BackColor="#E1FFC4" TextMode="Email" Width="319px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" ForeColor="Red" Width="200px">(*) Preenchimento Obrigatório.</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2" ForeColor="Red" Width="200px">(*) Preenchimento Obrigatório.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="Label3" runat="server" Text="Justificativa (*)"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:TextBox ID="TextBox3" runat="server" BackColor="#E1FFC4" Height="200px" TextMode="MultiLine" Width="600px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table class="auto-style13">
                <tr>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3" ForeColor="Red" Width="200px">(*) Preenchimento Obrigatório.</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style15">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Button ID="Button1" runat="server" Text="Gravar" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Voltar" PostBackUrl="~/Paginas/CRM1.aspx" />
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Crm nº" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Numnota" HeaderText="Nota nº" SortExpression="Numnota" />
                <asp:BoundField DataField="Produto" HeaderText="Produto" SortExpression="Produto" />
                <asp:BoundField DataField="Qreclamada" HeaderText="Reclamado" SortExpression="Qreclamada" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Nomeaprov" HeaderText="Nome" SortExpression="Nomeaprov" />
                <asp:BoundField DataField="Emailsol" HeaderText="Solicitante" SortExpression="Emailsol" />
                <asp:BoundField DataField="Obser" HeaderText="Justificativa" SortExpression="Obser" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [Numnota], [Produto], [Qreclamada], [Nomeaprov], [Obser], [Emailsol] FROM [CRM1] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TB1" Name="Id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
