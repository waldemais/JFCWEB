<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nfeemitidas.aspx.cs" Inherits="JFCWEB.Paginas.Nfeemitidas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <div>
                    <div>
                        PEDIDOS - CONSULTA</div>
                </div>
                <div>
                    <hr />
                </div>
                <asp:Label ID="Label4" runat="server" Text="Cnpj: "></asp:Label>
                        <asp:TextBox ID="TxtBox1" runat="server" BorderStyle="None"></asp:TextBox>
                    <br />
                <div>
                    <asp:Label ID="Labl1" runat="server" Text="Data Inicial:  "></asp:Label>
                    <asp:TextBox ID="TextB1" runat="server" TextMode="Date"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Filtrar" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" PostBackUrl="~/Paginas/MenuPedidos.aspx" Text="Sair" />
                </div>
            </div>
        </div>
        <div>
            <table style="width:100%;">
                <tr>
                    <td>
                        <div>
                            <hr />
                        </div>
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Faturados"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CaptionAlign="Top" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
                            <Columns>
                                <asp:BoundField DataField="pedidoID" HeaderText="Pedido" InsertVisible="False" ReadOnly="True" SortExpression="pedidoID" />
                                <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Dt. Entrega" SortExpression="DTENTREGA" />
                                <asp:BoundField DataField="Nota" HeaderText="Nº da Nota" SortExpression="Nota" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT PEDIDO.pedidoID, PEDIDO.DTENTREGA, NotasNFE.Nota FROM PEDIDO INNER JOIN NotasNFE ON PEDIDO.pedidoID = NotasNFE.Pedido WHERE (PEDIDO.CGC_CPF = @CGC_CPF) AND (PEDIDO.DTENTREGA &gt;= @DTENTREGA)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="TextB1" Name="DTENTREGA" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Abertos"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" HorizontalAlign="Center">
                        <Columns>
                            <asp:BoundField DataField="pedidoID" HeaderText="Pedido" InsertVisible="False" ReadOnly="True" SortExpression="pedidoID" />
                            <asp:BoundField DataField="DTEMISSAO" HeaderText="Emissão" SortExpression="DTEMISSAO" />
                            <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Entrega" SortExpression="DTENTREGA" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT pedidoID, DTEMISSAO, DTENTREGA FROM PEDIDO WHERE (CGC_CPF = @CGC_CPF) AND (DTENTREGA &gt;= @DTENTREGA) AND (STATUS = 'ABERTO')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextB1" DbType="Date" Name="DTENTREGA" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Cancelados"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" HorizontalAlign="Center">
                        <Columns>
                            <asp:BoundField DataField="pedidoID" HeaderText="Pedido" InsertVisible="False" ReadOnly="True" SortExpression="pedidoID" />
                            <asp:BoundField DataField="DTEMISSAO" HeaderText="Emissão" SortExpression="DTEMISSAO" />
                            <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Entrega" SortExpression="DTENTREGA" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT pedidoID, DTEMISSAO, DTENTREGA FROM PEDIDO WHERE (CGC_CPF = @CGC_CPF) AND (DTENTREGA &gt;= @DTENTREGA) AND (STATUS = 'CANCELADO')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextB1" DbType="Date" Name="DTENTREGA" PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
