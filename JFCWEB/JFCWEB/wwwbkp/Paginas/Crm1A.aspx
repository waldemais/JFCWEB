<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crm1A.aspx.cs" Inherits="JFCWEB.Paginas.Crm1A" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2" style="background-color: #E7EBEF"><strong>
                        <asp:Label ID="Label11" runat="server" BorderStyle="None" Enabled="False" Text="Consulta Status do CRM" BackColor="#CCFFCC" Font-Size="Large"></asp:Label>
                        </strong></td>
                </tr>
                </table>
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Visible="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Dtatual" HeaderText="Dtatual" SortExpression="Dtatual" />
                        <asp:BoundField DataField="Numnota" HeaderText="Numnota" SortExpression="Numnota" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="Nomeaprov" HeaderText="Nomeaprov" HtmlEncode="False" SortExpression="Nomeaprov" />
                        <asp:BoundField DataField="Emailaprov" HeaderText="Emailaprov" HtmlEncode="False" SortExpression="Emailaprov" />
                        <asp:BoundField DataField="Qreclamada" HeaderText="Qreclamada" SortExpression="Qreclamada" />
                        <asp:BoundField DataField="Qautoriz" HeaderText="Qautoriz" SortExpression="Qautoriz" />
                        <asp:BoundField DataField="Obser" HeaderText="Obser" HtmlEncode="False" SortExpression="Obser" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [Dtatual], [Numnota], [Status], [Nomeaprov], [Emailaprov], [Qreclamada], [Qautoriz], [Obser] FROM [CRM1] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="Id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <div>
            <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="1px">
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT [Qautoriz], [Nomeaprov], [Emailaprov], [Obser], [Produto], [Ocorrencia] FROM [CRM1] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <table style="width:100%;">
                    <tr>
                        <td><strong>
                            <asp:Label ID="Label1" runat="server" Text="Nº da Ocorrência"></asp:Label>
                            </strong>
                            <br />
                            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Width="150px" BorderStyle="None" Enabled="False" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td><strong>
                            <asp:Label ID="Label2" runat="server" Text="Dt.Abertura"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox3" runat="server" BorderStyle="None" Enabled="False" ReadOnly="True" Width="200px"></asp:TextBox>
                            </strong>
                        </td>
                        <td><strong>
                            <asp:Label ID="Label3" runat="server" Text="Nº da Nota"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox4" runat="server" BorderStyle="None" Enabled="False" ReadOnly="True" Width="150px"></asp:TextBox>
                            </strong>
                            <br />
                        </td>
                        <td><strong>
                            <asp:Label ID="Label6" runat="server" Text="Status"></asp:Label>
                            </strong>
                            <br />
                            <asp:TextBox ID="TextBox5" runat="server" BorderStyle="None" Enabled="False" ReadOnly="True" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td><strong>
                            <asp:Label ID="Label7" runat="server" Text="Nome"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox7" runat="server" BorderStyle="None" Enabled="False" ReadOnly="True" Width="156px"></asp:TextBox>
                            </strong></td>
                        <td><strong>
                            <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                            </strong>
                            <br />
                            <asp:TextBox ID="TextBox8" runat="server" BorderStyle="None" Enabled="False" ReadOnly="True" Width="215px"></asp:TextBox>
                        </td>
                        <td><strong>
                            <asp:Label ID="Label9" runat="server" Text="Qt. Reclamada"></asp:Label>
                            <br />
                            </strong>
                            <asp:TextBox ID="TextBox9" runat="server" BorderStyle="None" Enabled="False" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td><strong>
                            <asp:Label ID="Label10" runat="server" Text="Qt.Aprovada"></asp:Label>
                            <br />
                            </strong>
                            <asp:TextBox ID="TextBox10" runat="server" BorderStyle="None" Enabled="False" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" class="auto-style1">
                            <br />
                            <strong>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Justificativa"></asp:Label>
                            </strong>
                            <br />
                            <asp:TextBox ID="TextBox6" runat="server" Height="145px" TextMode="MultiLine" Width="518px" Enabled="False" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
            </asp:Panel>
        </div>
        <div class="auto-style1">
            <asp:Button ID="Button1" runat="server" BackColor="#E7EBEF" Font-Bold="True" PostBackUrl="~/Paginas/CRM3.aspx" Text="Voltar" Width="100px" />
            <asp:Button ID="Button2" runat="server" BackColor="#E7EBEF" Font-Bold="True" PostBackUrl="~/Default.aspx" Text="Sair" Width="100px" />
            </div>
    </form>
</body>
</html>
