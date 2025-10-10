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
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT [NOMEPARC], [CGC_CPF] FROM [TGFPAR] ORDER BY [NOMEPARC]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                    <div>
                    </div>
                </div>
            </div>
            <br />
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="N.º Ocorrência" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Dtatual" HeaderText="Dt.Solicitação" SortExpression="Dtatual" />
                        <asp:BoundField DataField="CGC" HeaderText="CGC" SortExpression="CGC" />
                        <asp:BoundField DataField="Nomepar" HeaderText="Nome Parceiro" SortExpression="Nomepar" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="Ocor" HeaderText="Ocorrência" SortExpression="Ocor" />
                        <asp:TemplateField ShowHeader="False"></asp:TemplateField>
                        <asp:CommandField ShowSelectButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT DISTINCT Id, Dtatual, CGC, Nomepar, Status, Ocor FROM CRM1 WHERE (Status = 'Aberto') ORDER BY Id DESC"></asp:SqlDataSource>
            </div>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
