<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRM2.aspx.cs" Inherits="JFCWEB.Paginas.CRM21" validateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-weight: bold;
        }
        .auto-style6 {
            width: 351px;
        }
        .auto-style7 {
            height: 23px;
            width: 351px;
        }
    </style>
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <div>
            <div>
                <div style="background-color: #E7EBEF">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Análise CRM"></asp:Label>
                </div>
            </div>
            <div>
                <div>
                    <div>
                        <table aria-multiline="True" class="auto-style1" style="border-style: ridge; border-width: thin">
                            <tr>
                                <td class="auto-style6">
                                    <br />
                                    <asp:Label ID="Lab7" runat="server" Enabled="False" Text="Nº da Ocorrência"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TB1" runat="server" BorderStyle="None"></asp:TextBox>
                                </td>
                                <td>
                                    <br />
                                    <asp:Label ID="Lab4" runat="server" Text="C.N.P.J"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>
                                    <br />
                                    <asp:Label ID="Lab5" runat="server" Text="Nome "></asp:Label>
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>
                                    <br />
                                    <asp:Label ID="Lab6" runat="server" Text="Dt. da Solicitação"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="Label6" runat="server" Text="Nº da Nota"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" BorderWidth="1px" Enabled="False" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td>
                                    <br />
                                </td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text="Contato"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" BorderWidth="1px" Enabled="False" ReadOnly="True" Width="145px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Telefone"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox7" runat="server" BorderStyle="Solid" BorderWidth="1px" Enabled="False" ReadOnly="True" TextMode="Phone"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                                    <asp:Label ID="Label7" runat="server" Text="Produto"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" BorderWidth="1px" Enabled="False" ReadOnly="True" Width="327px"></asp:TextBox>
                                </td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label8" runat="server" Text="Ocorrência"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Solid" BorderWidth="1px" Enabled="False" ReadOnly="True" Width="220px"></asp:TextBox>
                                </td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label9" runat="server" Text="Qt.Entregue"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox5" runat="server" BorderStyle="Solid" BorderWidth="1px" Enabled="False" ReadOnly="True" Width="95px"></asp:TextBox>
                                </td>
                                <td class="auto-style2">
                                    <asp:Label ID="Label10" runat="server" Text="Qt.Reclamada"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Solid" BorderWidth="1px" Enabled="False" ReadOnly="True" Width="95px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style2"></td>
                                <td class="auto-style2"></td>
                                <td class="auto-style2"></td>
                            </tr>
                        </table>
                    </div>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style4">
                                <div>
                                </div>
                                <asp:Label ID="Label11" runat="server" Text="Descrição detalhada da Ocorrência"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:TextBox ID="TextBox8" runat="server" Height="132px" ReadOnly="True" TextMode="MultiLine" Width="640px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table style="width:100%;">
                                    <tr>
                                        <td class="auto-style2">
                                            &nbsp;</td>
                                        <td class="auto-style2"></td>
                                        <td class="auto-style2"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4" colspan="3"><strong>
                                            <asp:Button ID="Button1" runat="server" BackColor="#E7F3D6" CssClass="auto-style5" ForeColor="#009933" Text="Procedente" Width="150px" PostBackUrl="~/Paginas/CrmProcedente.aspx" />
                                            <asp:Button ID="Button2" runat="server" BackColor="#E7F3D6" CssClass="auto-style5" ForeColor="#009933" Text="Não-Procedente" Width="150px" PostBackUrl="~/Paginas/CrmNaoProcede.aspx" OnClick="Button2_Click" />
                                            <asp:Button ID="Button3" runat="server" BackColor="#E7F3D6" CssClass="auto-style5" ForeColor="#009933" Text="Voltar" Width="150px" PostBackUrl="~/Paginas/CRM1.aspx" />
                                            </strong>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Paginas/ExibirImagem.aspx">Exibir Imagem</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <br />
                </div>
            </div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Visible="False">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Dtatual" HeaderText="Dtatual" SortExpression="Dtatual" />
                <asp:BoundField DataField="Numnota" HeaderText="Numnota" SortExpression="Numnota" />
                <asp:BoundField DataField="Ocor" HeaderText="Ocor" SortExpression="Ocor" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Produto" HeaderText="Produto" SortExpression="Produto" />
                <asp:BoundField DataField="Qentregue" HeaderText="Qentregue" SortExpression="Qentregue" />
                <asp:BoundField DataField="Qreclamada" HeaderText="Qreclamada" SortExpression="Qreclamada" />
                <asp:BoundField DataField="Lote" HeaderText="Lote" SortExpression="Lote" />
                <asp:BoundField DataField="Dtemb" HeaderText="Dtemb" SortExpression="Dtemb" />
                <asp:BoundField DataField="Dtvenc" HeaderText="Dtvenc" SortExpression="Dtvenc" />
                <asp:BoundField DataField="Ocorrencia" HeaderText="Ocorrencia" SortExpression="Ocorrencia" HtmlEncode="False" />
                <asp:BoundField DataField="CGC" HeaderText="CGC" SortExpression="CGC" />
                <asp:BoundField DataField="Nomepar" HeaderText="Nomepar" SortExpression="Nomepar" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" HtmlEncode="False" />
                <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT * FROM [CRM1] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TB1" Name="Id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT [Id], [Foto] FROM [CRM1] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TB1" Name="Id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField ApplyFormatInEditMode="True" DataField="Foto" HeaderText="Foto" HtmlEncode="False" HtmlEncodeFormatString="False" SortExpression="Foto" />
            </Columns>
        </asp:GridView>
        <br />
    </form>
</body>
</html>
