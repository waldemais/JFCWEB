<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExportaExcelSubway.aspx.cs" Inherits="JFCWEB.Administrador.ExportaExcelSubway" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            width: 827px;
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
            width: 827px;
            text-align: center;
        }
        .auto-style17 {
            width: 151px;
        }
        .auto-style18 {
            width: 542px;
        }
        .auto-style19 {
            width: 151px;
            height: 52px;
        }
        .auto-style20 {
            width: 542px;
            height: 52px;
        }
        .auto-style21 {
            height: 52px;
            text-align: center;
        }
        .auto-style22 {
            height: 31px;
            text-align: center;
        }
        .auto-style23 {
            height: 31px;
            text-align: center;
            width: 130px;
        }
        .auto-style24 {
            width: 130px;
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
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:Label ID="Label6" runat="server" Text="Exporta para Excel"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
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
                    <td class="auto-style16">&nbsp;</td>
                    <td style="text-align: center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style16">
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style23">
                                    <asp:Button ID="Button1" runat="server" Height="27px" PostBackUrl="~/Administrador/Menu1.aspx" Text="Menu Principal" Width="150px" />
                                </td>
                                <td class="auto-style22">
                                    <strong>
                        <asp:Button ID="BtnExcel" runat="server" BorderStyle="Solid" CssClass="auto-style7" Height="27px" OnClick="BtnExcel_Click" Text="Pedidos RJ-MG" Width="172px" />
                        </strong>
                        <asp:Button ID="BtnExcel1" runat="server" BorderStyle="Solid" CssClass="auto-style7" Height="27px" OnClick="BtnExcel1_Click" Text="Pedidos SP" Width="172px" />
                        <asp:Button ID="BtnExcel4" runat="server" BorderStyle="Solid" CssClass="auto-style7" Height="27px" Text="Pedidos PR" Width="172px" OnClick="BtnExcel4_Click" />
                                </td>
                                <td class="auto-style22"></td>
                            </tr>
                            <tr>
                                <td class="auto-style23">
                                    <asp:Button ID="Button2" runat="server" Height="27px" PostBackUrl="~/Administrador/AdmPedidos.aspx" Text="Pedidos" Width="150px" />
                                </td>
                                <td class="auto-style22">
                        <asp:Button ID="BtnExcel2" runat="server" BorderStyle="Solid" CssClass="auto-style7" Height="27px" OnClick="BtnExcel2_Click" Text=" SAP RJ/MG" Width="172px" />
                                    <asp:Button ID="BtnExcel3" runat="server" BorderStyle="Solid" CssClass="auto-style7" Height="27px" OnClick="BtnExcel3_Click" Text="SAP SP" Width="172px" />
                                    <asp:Button ID="BtnExcel5" runat="server" BorderStyle="Solid" CssClass="auto-style7" Height="27px" OnClick="BtnExcel5_Click" Text="SAP PR" Width="172px" />
                                </td>
                                <td class="auto-style22">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style24">
                                    <asp:Button ID="Button3" runat="server" Height="27px" PostBackUrl="~/Default.aspx" Text="Sair" Width="150px" />
                                </td>
                                <td>
                        <asp:Button ID="BtnPrevia" runat="server" BorderStyle="Solid" CssClass="auto-style7" Height="27px" OnClick="BtnPrevia_Click" Text="Prévia P/ Fábrica" Width="172px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3"><strong>
                        <asp:Label ID="Lbel01" runat="server" CssClass="auto-style8" Text="Label" Font-Size="Medium"></asp:Label>
                        </strong></td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Calendar ID="Calendar1" runat="server" BorderColor="#999999" OnSelectionChanged="Calendar1_SelectionChanged" Font-Size="8pt" BackColor="White" Font-Names="Verdana" ForeColor="Black" Height="180px" Width="200px" CellPadding="4" DayNameFormat="Shortest">
                            <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
                            <TodayDayStyle ForeColor="Black" BackColor="#CCCCCC" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" style="text-align: center" Text="Qtde. de lojas do dia"></asp:Label>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource8" Font-Size="Small" GridLines="Vertical" ForeColor="Black">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Dt.entrega" SortExpression="DTENTREGA" />
                                <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" />
                                <asp:BoundField DataField="STATUS" HeaderText="Status" SortExpression="STATUS" />
                                <asp:BoundField DataField="Expr1" HeaderText="Total" ReadOnly="True" SortExpression="Expr1" />
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
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <div>
                            <strong>
                        <asp:Label ID="Lbel2" runat="server" CssClass="auto-style8" Text="Prévia"></asp:Label>
                        </strong>
                        </div>
                        <div>
                        <asp:GridView ID="Gprev" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="480px" Font-Size="X-Small" ForeColor="Black">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="CODPROD" HeaderText="Código" SortExpression="CODPROD" />
                                <asp:BoundField DataField="DESCRPROD" HeaderText="Descrição" SortExpression="DESCRPROD" />
                                <asp:BoundField DataField="Expr1" HeaderText="Total" ReadOnly="True" SortExpression="Expr1" />
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
                        </div>
                        <strong>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text="Pedidos RJ / MG"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div>
            <asp:GridView ID="dgv" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" GridLines="Vertical" OnPageIndexChanging="dgv_PageIndexChanging" Width="800px" Font-Size="X-Small" ForeColor="Black">
                <AlternatingRowStyle BackColor="White" />
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
        </div>
        <div>
            <div>
                <strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="Pedidos São Paulo"></asp:Label>
                </strong>
            </div>
            <asp:GridView ID="dgv1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" GridLines="Vertical" OnPageIndexChanging="dgv1_PageIndexChanging" Width="800px" Font-Size="X-Small" ForeColor="Black">
                <AlternatingRowStyle BackColor="White" />
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
        </div>
        <div>
            <div>
                <strong>
                <br />
                <asp:Label ID="Label8" runat="server" style="font-size: large; color: #0000FF" Text="Pedidos PR"></asp:Label>
            <asp:GridView ID="dgv4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource6" GridLines="Vertical" Width="800px" Font-Size="X-Small" ForeColor="Black">
                <AlternatingRowStyle BackColor="White" />
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
                <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="SAP RJ / MG"></asp:Label>
                </strong>
            </div>
            <asp:GridView ID="dgv2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource4" GridLines="Vertical" Width="800px" Font-Size="X-Small" ForeColor="Black">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Data" SortExpression="DTENTREGA" />
                    <asp:BoundField DataField="pedidoID" HeaderText="Pedido" SortExpression="pedidoID" />
                    <asp:BoundField DataField="CODPARC" HeaderText="Cliente" SortExpression="CODPARC" />
                    <asp:BoundField DataField="CODPROSAP" HeaderText="Código" SortExpression="CODPROSAP" />
                    <asp:BoundField DataField="DESCRPROD" HeaderText="Descrição" SortExpression="DESCRPROD" />
                    <asp:BoundField DataField="QTDE" HeaderText="Qtd" SortExpression="QTDE" />
                    <asp:BoundField DataField="PADRAO" HeaderText="Preço" SortExpression="PADRAO" />
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
        </div>
        <div>
            <br />
            <asp:Label ID="Label5" runat="server" style="color: #0000FF; font-size: large; font-weight: 700" Text="SAP SP"></asp:Label>
            <asp:GridView ID="dgv3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource5" GridLines="Vertical" Width="800px" Font-Size="X-Small" ForeColor="Black">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Data" SortExpression="DTENTREGA" />
                    <asp:BoundField DataField="pedidoID" HeaderText="Pedido" SortExpression="pedidoID" />
                    <asp:BoundField DataField="CODPARC" HeaderText="Cliente" SortExpression="CODPARC" />
                    <asp:BoundField DataField="CODPROSAP" HeaderText="Código" SortExpression="CODPROSAP" />
                    <asp:BoundField DataField="DESCRPROD" HeaderText="Descrição" SortExpression="DESCRPROD" />
                    <asp:BoundField DataField="QTDE" HeaderText="Qtd" SortExpression="QTDE" />
                    <asp:BoundField DataField="PADRAO" HeaderText="Preço" SortExpression="PADRAO" />
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
            <div>
                <br />
            <asp:Label ID="Label9" runat="server" style="color: #0000FF; font-size: large; font-weight: 700" Text="SAP PR"></asp:Label>
            <asp:GridView ID="dgv5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource7" GridLines="Vertical" Width="800px" Font-Size="X-Small" ForeColor="Black">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Data" SortExpression="DTENTREGA" />
                    <asp:BoundField DataField="pedidoID" HeaderText="Pedido" SortExpression="pedidoID" />
                    <asp:BoundField DataField="CODPARC" HeaderText="Cliente" SortExpression="CODPARC" />
                    <asp:BoundField DataField="CODPROSAP" HeaderText="Código" SortExpression="CODPROSAP" />
                    <asp:BoundField DataField="DESCRPROD" HeaderText="Descrição" SortExpression="DESCRPROD" />
                    <asp:BoundField DataField="QTDE" HeaderText="Qtd" SortExpression="QTDE" />
                    <asp:BoundField DataField="PADRAO" HeaderText="Preço" SortExpression="PADRAO" />
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
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;Encrypt=False" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DTENTREGA, pedidoID, CODPARSAP, CODPARC, CODPROSAP, DESCRPROD, QTDE, PADRAO, STATUS, NOMEPARC, UF FROM ExportaSap WHERE (DTENTREGA = @DTENTREGA) AND (QTDE &gt; 0) AND (STATUS &lt;&gt; 'CANCELADO') AND (NOMEPARC LIKE '%SUBWAY%') AND (UF = 'PR') ORDER BY CODPARC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <br />
        <div>
        </div>
        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT CODPROD, DESCRPROD, SUM(QTDE) AS Expr1 FROM Previa WHERE (DTENTREGA = @DTENTREGA) AND (NOMEPARC LIKE '%SUBWAY%') GROUP BY CODPROD, DESCRPROD">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                            </SelectParameters>
                        </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DTENTREGA, pedidoID, CODPARSAP, CODPARC, CODPROSAP, DESCRPROD, QTDE, PADRAO, STATUS, NOMEPARC, UF FROM ExportaSap WHERE (DTENTREGA = @DTENTREGA) AND (QTDE &gt; 0) AND (STATUS &lt;&gt; 'CANCELADO') AND (NOMEPARC LIKE '%SUBWAY%') AND  (UF IN ('RJ', 'MG', 'NULL')) ORDER BY CODPARC">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DTENTREGA, pedidoID, CODPARSAP, CODPARC, CODPROSAP, DESCRPROD, QTDE, PADRAO, STATUS, NOMEPARC, UF FROM ExportaSap WHERE (DTENTREGA = @DTENTREGA) AND (QTDE &gt; 0) AND (STATUS &lt;&gt; 'CANCELADO') AND (NOMEPARC LIKE '%SUBWAY%') AND (UF = 'SP') ORDER BY CODPARC">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT pedidoID, DTENTREGA, NOMEPARC, CODPROD, DESCRPROD, QTDE, STATUS, CODPARC, UF, ROTA FROM Exporta WHERE (DTENTREGA = @DTENTREGA) AND (QTDE &lt;&gt; 0) AND (UF IN ('RJ', 'MG', 'NULL')) AND (NOMEPARC LIKE '%SUBWAY%') AND (STATUS = 'ABERTO') ORDER BY CODPARC">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT pedidoID, DTENTREGA, NOMEPARC, CODPROD, DESCRPROD, QTDE, STATUS, CODPARC, UF, ROTA FROM Exporta WHERE (DTENTREGA = @DTENTREGA) AND (STATUS = 'ABERTO') AND (QTDE &lt;&gt; 0) AND (UF = 'SP') AND (NOMEPARC LIKE '%SUBWAY%') ORDER BY CODPARC">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;Encrypt=False" ProviderName="System.Data.SqlClient" SelectCommand="SELECT COUNT(*) AS Expr1, DTENTREGA, UF, STATUS FROM ListaPedidos GROUP BY DTENTREGA, UF, Grupo, STATUS HAVING (Grupo = '02') AND (DTENTREGA = @DTENTREGA) AND (STATUS IN ('ABERTO', 'FINALIZADO'))">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
            </SelectParameters>
        </asp:SqlDataSource>
        <strong>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;Encrypt=False" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT pedidoID, DTENTREGA, NOMEPARC, CODPROD, DESCRPROD, QTDE, STATUS, CODPARC, UF, ROTA FROM Exporta WHERE (DTENTREGA = @DTENTREGA) AND (STATUS = 'ABERTO') AND (QTDE &lt;&gt; 0) AND (UF = 'PR') AND (NOMEPARC LIKE '%SUBWAY%') ORDER BY CODPARC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                    </SelectParameters>
        </asp:SqlDataSource>
                </strong>
    </form>
</body>
</html>
