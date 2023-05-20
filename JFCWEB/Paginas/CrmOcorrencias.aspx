<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrmOcorrencias.aspx.cs" Inherits="JFCWEB.Paginas.CRM_Ocorrencias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="CRM - Abertos" BackColor="#CCFFCC" Font-Size="Large"></asp:Label>
        </div>
        <div>
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <hr />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TBox1" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Label ID="Label19" runat="server" Font-Size="Large" ForeColor="Green" Text="Exibição de Ocorrências em Aberto"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Exportar Pdf" Font-Bold="True" ForeColor="Green" />
                        <hr />
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#3A973A" NavigateUrl="~/Paginas/Menucrm.aspx">Voltar</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Nº Ocor." InsertVisible="False" ReadOnly="True" SortExpression="Id" >
                <HeaderStyle Font-Size="10pt" HorizontalAlign="Center" />
                <ItemStyle Font-Size="10pt" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Numnota" HeaderText="Nº Nota" SortExpression="Numnota" >
                <HeaderStyle Font-Size="10pt" HorizontalAlign="Center" />
                <ItemStyle Font-Size="10pt" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Dtatual" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Data" SortExpression="Dtatual" >
                <HeaderStyle Font-Size="10pt" HorizontalAlign="Center" />
                <ItemStyle Font-Size="10pt" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" >
                <HeaderStyle Font-Size="10pt" HorizontalAlign="Center" />
                <ItemStyle Font-Size="10pt" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Qentregue" HeaderText="Entregue" SortExpression="Qentregue" >
                <HeaderStyle Font-Size="10pt" HorizontalAlign="Center" />
                <ItemStyle Font-Size="10pt" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Qreclamada" HeaderText="Reclamada" SortExpression="Qreclamada" >
                <HeaderStyle Font-Size="10pt" HorizontalAlign="Center" />
                <ItemStyle Font-Size="10pt" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Produto" HeaderText="Produto" SortExpression="Produto" >
                <HeaderStyle Font-Size="10pt" HorizontalAlign="Center" />
                <ItemStyle Font-Size="10pt" />
                </asp:BoundField>
                <asp:BoundField DataField="Ocor" HeaderText="Motivo" SortExpression="Ocor" >
                <HeaderStyle Font-Size="10pt" HorizontalAlign="Center" />
                <ItemStyle Font-Size="10pt" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT [Id], [Dtatual], [Status], [Produto], [Ocor], [Qentregue], [Qreclamada], [Numnota] FROM [CRM1] WHERE (([CGC] = @CGC) AND ([Status] = @Status))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TBox1" Name="CGC" PropertyName="Text" Type="String" />
                <asp:Parameter DefaultValue="Aberto" Name="Status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
