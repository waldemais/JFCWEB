<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZampCrm1.aspx.cs" Inherits="JFCWEB.Zamp.ZampCrm1" Theme="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>zamp</title>
    <style type="text/css">
        .auto-style1 {
            width: 120px;
        }
        .auto-style2 {
            width: 150px;
        }
        .auto-style3 {
            width: 186px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/ntsalads.png" Width="60px" />
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" BackColor="#CCFFCC" Text="Status CRM - BK"></asp:Label>
        </div>
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:TextBox ID="TBo1" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Status"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Data Inicial"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Data Final"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Aberto</asp:ListItem>
                            <asp:ListItem>Procedente</asp:ListItem>
                            <asp:ListItem>Nao Procedente</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Procurar" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Font-Size="X-Small" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1500px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Nº Crm" InsertVisible="False" ReadOnly="True" SortExpression="Id">
                    <ItemStyle Font-Size="Small" Width="40px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Expr1" HeaderText="Entrada" SortExpression="Expr1">
                    <ItemStyle Font-Size="Small" Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Nomepar" HeaderText="Loja" SortExpression="Nomepar">
                    </asp:BoundField>
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status">
                    <ItemStyle Font-Size="Small" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Produto" HeaderText="Produto" SortExpression="Produto">
                    <ItemStyle Font-Size="Small" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Ocor" HeaderText="Descrição" SortExpression="Ocor">
                    <ItemStyle Font-Size="Small" Width="300px" />
                    <ItemStyle Font-Size="Small" Width="250px" Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Qentregue" HeaderText="Entregue" SortExpression="Qentregue" DataFormatString="{0:dd/MM/yyyy}">
                    <ItemStyle Font-Size="Small" HorizontalAlign="Right" Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Qautoriz" HeaderText="Autorizada" SortExpression="Qautoriz">
                    <ItemStyle Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Qreclamada" HeaderText="Reclamada" SortExpression="Qreclamada" DataFormatString="{0:dd/MM/yyyy}">
                    <ItemStyle Font-Size="Small" HorizontalAlign="Right" Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Lote" HeaderText="Lote" SortExpression="Lote">
                    <ItemStyle Font-Size="Small" Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="BKNumber" HeaderText="BKNumber" SortExpression="BKNumber">
                    <ItemStyle Font-Size="Small" Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Dtemb" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Dt.Emb" SortExpression="Dtemb">
                    <ItemStyle Font-Size="Small" Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Dtvenc" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Dt.Venc" SortExpression="Dtvenc">
                    <ItemStyle Font-Size="Small" Width="50px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Ocorrencia" HeaderText="Ocorrência" SortExpression="Ocorrencia">
                    <ControlStyle Width="500px" />
                    </asp:BoundField>
                    <asp:CommandField SelectText="+ Detahes..." ShowSelectButton="True">
                    <ItemStyle Width="50px" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT DISTINCT Id, Dtatual AS Expr1, CGC, Nomepar, Status, Ocor, Produto, Qentregue, Qreclamada, Lote, Dtemb, Ocorrencia, Dtvenc, Foto, BKNumber, Qautoriz FROM CRM1 WHERE (Status = @Status) AND (Dtatual BETWEEN @Dtatual1 AND DATEADD(Day, 1, @Dtatual2)) AND (Nomepar LIKE '%BK%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Status" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox1" Name="Dtatual1" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" DbType="DateTime2" Name="Dtatual2" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
