<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRM3.aspx.cs" Inherits="JFCWEB.Paginas.CRM3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 692px;
        }
        .auto-style2 {
            width: 243px;
        }
        .auto-style3 {
            width: 243px;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TBox1" runat="server" Visible="False"></asp:TextBox>
            <asp:TextBox ID="TBo1" runat="server" Visible="False"></asp:TextBox>
        </div>
        <div style="background-color: #E7EBEF">
            <strong>
            <asp:Label ID="Label1" runat="server" Text="CRM - Consulta" BackColor="#CCFFCC" Font-Size="Large"></asp:Label>
            </strong>
        </div>
        <div>
            <hr />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3">
                        <strong>Status das Reclamações</strong></td>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" ForeColor="Green" BorderStyle="Solid">
                            <asp:ListItem Value="1">Entrega</asp:ListItem>
                            <asp:ListItem Value="2">Pós-Entrega</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style1">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Filtrar" Width="70px" />
                        <asp:Button ID="Button2" runat="server" PostBackUrl="~/Paginas/Menucrm.aspx" Text="Voltar" Width="70px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <div>
                <hr />
            </div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" HorizontalAlign="Center" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Dtatual" HeaderText="Dt.Emissão" SortExpression="Dtatual" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Produto" HeaderText="Produto" SortExpression="Produto" />
                <asp:BoundField DataField="CGC" HeaderText="CGC" SortExpression="CGC" Visible="False" />
                <asp:BoundField DataField="Ocor" HeaderText="Motivo" SortExpression="Ocor" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
            <HeaderStyle BackColor="#E7EBEF" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT Id, Dtatual, Status, Produto, CGC, Ocor FROM CRM1 WHERE (CGC = @CGC) AND (Classe = @Classe) ORDER BY Id DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="TBox1" Name="CGC" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="RadioButtonList1" Name="Classe" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
