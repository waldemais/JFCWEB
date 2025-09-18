<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExportaExcelSubway.aspx.cs" Inherits="JFCWEB.Administrador.ExportaExcelSubway" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            width: 782px;
        }
        .auto-style2 {
            width: 311px;
        }
        .auto-style3 {
            width: 311px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style7 {
            color: #0033CC;
            text-align: center;
        }
        .auto-style8 {
            font-size: large;
            color: #0000FF;
        }
        .auto-style9 {
            text-align: center;
            width: 13px;
        }
        .auto-style10 {
            width: 13px;
        }
        .auto-style15 {
            font-size: large;
            color: #0033CC;
            text-align: center;
        }
        .auto-style16 {
            width: 782px;
        }
        .auto-style17 {
            width: 151px;
        }
        .auto-style18 {
            width: 574px;
        }
        .auto-style19 {
            width: 151px;
            height: 52px;
        }
        .auto-style20 {
            width: 574px;
            height: 52px;
        }
        .auto-style21 {
            height: 52px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style15">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19" style="text-align: left">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/logojfc.png" Width="60px" />
                    </td>
                    <td class="auto-style20">
                        <asp:Label ID="Label4" runat="server" style="font-size: x-large; font-weight: 700" Text="Subway"></asp:Label>
                    </td>
                    <td class="auto-style21">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="30px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Imagem/Voltar.png" OnClientClick="JavaScript:window.history.back(1); return false" Width="30px" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style1">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style16"><strong>
                        <asp:Button ID="BtnExcel" runat="server" BorderStyle="Solid" CssClass="auto-style7" Height="27px" OnClick="BtnExcel_Click" Text="Pedidos RJ-MG" Width="172px" />
                        </strong>
                        <asp:Button ID="BtnPrevia" runat="server" BorderStyle="Solid" CssClass="auto-style7" Height="27px" OnClick="BtnPrevia_Click" Text="Prévia" Width="172px" />
                        <asp:Button ID="BtnExcel1" runat="server" BorderStyle="Solid" CssClass="auto-style7" Height="27px" OnClick="BtnExcel1_Click" Text="Pedidos SP" Width="172px" />
                        <asp:Button ID="BtnExcel2" runat="server" BorderStyle="Solid" CssClass="auto-style7" Height="27px" OnClick="BtnExcel2_Click" Text="Pedidos p/ SAP" Width="172px" />
                    </td>
                    <td style="text-align: center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3"><strong>
                        <asp:Label ID="Lbel01" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
                        </strong></td>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Lbel2" runat="server" CssClass="auto-style8" Text="Prévia"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Calendar ID="Calendar1" runat="server" BorderColor="Blue" OnSelectionChanged="Calendar1_SelectionChanged" Font-Size="Small">
                            <TitleStyle ForeColor="#000099" />
                            <TodayDayStyle ForeColor="Blue" />
                        </asp:Calendar>
                    </td>
                    <td>
                        <asp:GridView ID="Gprev" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="480px" Font-Size="X-Small">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="CODPROD" HeaderText="Código" SortExpression="CODPROD" />
                                <asp:BoundField DataField="DESCRPROD" HeaderText="Descrição" SortExpression="DESCRPROD" />
                                <asp:BoundField DataField="Expr1" HeaderText="Total" ReadOnly="True" SortExpression="Expr1" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT CODPROD, DESCRPROD, SUM(QTDE) AS Expr1 FROM Previa WHERE (DTENTREGA = @DTENTREGA) AND (NOMEPARC LIKE '%SUBWAY%') GROUP BY CODPROD, DESCRPROD">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text="Pedidos Rio de Janeiro"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div>
            <asp:GridView ID="dgv" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Vertical" OnPageIndexChanging="dgv_PageIndexChanging" Width="800px" Font-Size="X-Small">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    <asp:BoundField DataField="pedidoID" HeaderText="Nº Ped." SortExpression="pedidoID" />
                    <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Dt.Entrega" SortExpression="DTENTREGA" />
                    <asp:BoundField DataField="CODPARC" HeaderText="Cliente" SortExpression="CODPARC" />
                    <asp:BoundField DataField="NOMEPARC" HeaderText="Nome" SortExpression="NOMEPARC" />
                    <asp:BoundField DataField="CODPROD" HeaderText="Código" SortExpression="CODPROD" />
                    <asp:BoundField DataField="DESCRPROD" HeaderText="Descrição" SortExpression="DESCRPROD" />
                    <asp:BoundField DataField="QTDE" HeaderText="Qtde" SortExpression="QTDE" />
                    <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" />
                    <asp:BoundField DataField="ROTA" HeaderText="Rota" SortExpression="ROTA" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT DISTINCT pedidoID, DTENTREGA, NOMEPARC, CODPROD, DESCRPROD, QTDE, STATUS, CODPARC, UF, ROTA FROM Exporta WHERE (DTENTREGA = @DTENTREGA) AND (QTDE &lt;&gt; 0) AND (UF IN ('RJ', 'MG', 'NULL')) AND (NOMEPARC LIKE '%SUBWAY%') AND (STATUS = 'ABERTO') ORDER BY CODPARC">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div>
            <div>
                <strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="Pedidos São Paulo"></asp:Label>
                </strong>
            </div>
            <asp:GridView ID="dgv1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource3" GridLines="Vertical" OnPageIndexChanging="dgv1_PageIndexChanging" Width="800px" Font-Size="X-Small">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="pedidoID" HeaderText="Nº Ped" SortExpression="pedidoID" />
                    <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Dt. Entrega" SortExpression="DTENTREGA" />
                    <asp:BoundField DataField="CODPARC" HeaderText="Cliente" SortExpression="NOMEPARC" />
                    <asp:BoundField DataField="NOMEPARC" HeaderText="Nome" SortExpression="NOMEPARC" />
                    <asp:BoundField DataField="CODPROD" HeaderText="Código" SortExpression="CODPROD" />
                    <asp:BoundField DataField="DESCRPROD" HeaderText="Descrição" SortExpression="DESCRPROD" />
                    <asp:BoundField DataField="QTDE" HeaderText="Qtde" SortExpression="QTDE" />
                    <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" />
                    <asp:BoundField DataField="ROTA" HeaderText="Rota" SortExpression="ROTA" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT DISTINCT pedidoID, DTENTREGA, NOMEPARC, CODPROD, DESCRPROD, QTDE, STATUS, CODPARC, UF, ROTA FROM Exporta WHERE (DTENTREGA = @DTENTREGA) AND (STATUS = 'ABERTO') AND (QTDE &lt;&gt; 0) AND (UF = 'SP') AND (NOMEPARC LIKE '%SUBWAY%') ORDER BY CODPARC">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div>
            <div>
                <strong>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="Exportação para o SAP"></asp:Label>
                </strong>
            </div>
            <asp:GridView ID="dgv2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource4" GridLines="Vertical" Width="800px" Font-Size="X-Small">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Data" SortExpression="DTENTREGA" />
                    <asp:BoundField DataField="pedidoID" HeaderText="Pedido" SortExpression="pedidoID" />
                    <asp:BoundField DataField="CODPARC" HeaderText="Cliente" SortExpression="CODPARC" />
                    <asp:BoundField DataField="CODPROSAP" HeaderText="Código" SortExpression="CODPROSAP" />
                    <asp:BoundField DataField="DESCRPROD" HeaderText="Descrição" SortExpression="DESCRPROD" />
                    <asp:BoundField DataField="QTDE" HeaderText="Qtd" SortExpression="QTDE" />
                    <asp:BoundField DataField="PADRAO" HeaderText="Preço" SortExpression="PADRAO" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT DTENTREGA, pedidoID, CODPARSAP, CODPARC, CODPROSAP, DESCRPROD, QTDE, PADRAO, STATUS, NOMEPARC FROM ExportaSap WHERE (DTENTREGA = @DTENTREGA) AND (QTDE &gt; 0) AND (STATUS &lt;&gt; 'CANCELADO') AND (NOMEPARC LIKE '%SUBWAY%') ORDER BY CODPARC">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
