<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRM1.aspx.cs" Inherits="JFCWEB.Paginas.CRM1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 203px;
        }
        .auto-style2 {
            width: 203px;
            height: 30px;
        }
        .auto-style3 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="background-color: #E7EBEF">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Consulta CRM" BackColor="#CCFFCC" Font-Size="Large"></asp:Label>
            </div>
            <div>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox ID="TBo1" runat="server" Visible="False"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="auto-style3">
                        </td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    </table>
                <div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT [NOMEPARC], [CGC_CPF] FROM [TGFPAR] ORDER BY [NOMEPARC]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                    <div>
                        <asp:Label ID="Label2" runat="server" Text="Filtro"></asp:Label>
                        :<br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Status Atual:"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Aberto</asp:ListItem>
                            <asp:ListItem>Procedente</asp:ListItem>
                            <asp:ListItem>Nao Procedente</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Data Inicial:"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" ToolTip="Data Inicial"></asp:TextBox>
                        <asp:Label ID="Label5" runat="server" Text="Data Final:"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" ToolTip="Data Final"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Filtrar" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" PostBackUrl="~/Administrador/Menu1.aspx" Text="Menu Principal" />
                        <br />
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
            </div>
            <br />
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="2px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="N.º Ocorrência" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Dtatual" HeaderText="Dt.Solicitação" SortExpression="Dtatual" />
                        <asp:BoundField DataField="CGC" HeaderText="CGC" SortExpression="CGC" />
                        <asp:BoundField DataField="Nomepar" HeaderText="Nome Parceiro" SortExpression="Nomepar" HtmlEncode="False" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="Ocor" HeaderText="Ocorrência" SortExpression="Ocor" />
                        <asp:TemplateField ShowHeader="False"></asp:TemplateField>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" Height="10px" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT Id, Dtatual, CGC, Nomepar, Status, Ocor FROM CRM1 WHERE (Status = @Status) AND (Dtatual BETWEEN @Dtatual1 AND DATEADD(Day, 1, @Dtatual2)) ORDER BY Dtatual">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Status" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox1" Name="Dtatual1" PropertyName="Text" Type="DateTime" />
                        <asp:ControlParameter ControlID="TextBox2" Name="Dtatual2" PropertyName="Text" Type="DateTime" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
