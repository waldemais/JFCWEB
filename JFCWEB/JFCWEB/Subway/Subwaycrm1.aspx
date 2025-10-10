<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subwaycrm1.aspx.cs" Inherits="JFCWEB.Subway.Subwaycrm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 141px;
        }
        .auto-style2 {
            width: 149px;
        }
        .auto-style3 {
            width: 170px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/ntsalads.png" Width="50px" />
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" BackColor="#CCFFCC" Text="Status CRM - Subway"></asp:Label>
        </div>
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:TextBox ID="TB1" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Aberto</asp:ListItem>
                            <asp:ListItem>Procedente</asp:ListItem>
                            <asp:ListItem>Não-Procedente</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Mostrar" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" Font-Size="X-Small" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1500px" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Nº Crm" InsertVisible="False" ReadOnly="True" SortExpression="Id" >
                        <ItemStyle Width="40px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Expr1" HeaderText="Entrada" SortExpression="Expr1" >
                        <ItemStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Nomepar" HeaderText="Loja" SortExpression="Nomepar" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="Produto" HeaderText="Produto" SortExpression="Produto" />
                    <asp:BoundField DataField="Ocor" HeaderText="Descrição" SortExpression="Ocor" />
                    <asp:BoundField DataField="Qentregue" HeaderText="Entregue" SortExpression="Qentregue" >
                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Qreclamada" HeaderText="Reclamada" SortExpression="Qreclamada" >
                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Qautoriz" HeaderText="Autorizada" SortExpression="Qautoriz">
                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Lote" HeaderText="Lote" SortExpression="Lote" />
                    <asp:BoundField DataField="BKNumber" HeaderText="SwNumber" SortExpression="BKNumber" >
                    <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Dtemb" HeaderText="Dt.Emb" SortExpression="Dtemb" DataFormatString="{0:dd/MM/yyyy}" >
                        <ItemStyle Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Dtvenc" HeaderText="Dt.venc" SortExpression="Dtvenc" DataFormatString="{0:dd/MM/yyyy}" >
                        <ItemStyle Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Ocorrencia" HeaderText="Ocorrencia" SortExpression="Ocorrencia" >
                    <ItemStyle Width="250px" />
                    </asp:BoundField>
                    <asp:CommandField SelectText="+ Detalhes..." ShowSelectButton="True">
                    <ItemStyle Width="50px" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="#F7F7DE" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT DISTINCT Id, Dtatual AS Expr1, CGC, Nomepar, Status, Ocor, Produto, Qentregue, Qreclamada, Lote, Dtemb, Ocorrencia, Dtvenc, Foto, BKNumber, Qautoriz, Nomeaprov, Emailaprov, Obser FROM CRM1 WHERE (Status = @Status) AND (Dtatual BETWEEN @Dtatual1 AND DATEADD(Day, 1, @Dtatual2)) AND (Nomepar LIKE '%SUBWAY%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DbType="String" Name="Status" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="TextBox1" DbType="DateTime" Name="Dtatual1" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" DbType="DateTime" Name="Dtatual2" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
