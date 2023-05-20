<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdmPedidos.aspx.cs" Inherits="JFCWEB.Usuario.AdmPedidos" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #006600;
            font-size: large;
        }
        .style2
        {
            text-align: left;
            color: #009933;
            font-size: x-large;
        }
        .style3
        {
            width: 29px;
        }
        .auto-style3 {
            color: #333333;
        }
        .auto-style4 {
            width: 306px;
        }
        .auto-style5 {
            width: 311px;
            height: 43px;
        }
        .auto-style6 {
            color: #006600;
            font-size: large;
            width: 311px;
            }
        .auto-style10 {
            width: 306px;
            height: 43px;
        }
        .auto-style11 {
            height: 43px;
        }
        .auto-style13 {
            font-size: medium;
            color: #000000;
        }
        .auto-style15 {
            width: 378px;
        }
        .auto-style18 {
            width: 224px;
        }
        .auto-style19 {
            width: 200px;
        }
        .auto-style20 {
            width: 223px;
        }
        .auto-style22 {
            background-color: #95FF95;
        }
        .auto-style23 {
            width: 378px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="Button1">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style10">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="Left" 
                        ImageUrl="~/Imagem/icons8-menu-48.png" 
                        PostBackUrl="~/Administrador/Menu1.aspx" />
                    <br />
                    <asp:TextBox ID="TBo1" runat="server" Visible="False"></asp:TextBox>
                    <br />
                    <br />
                    </td>
                <td style="text-align: center" class="auto-style5">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/grupo.png" Width="100px" />
                    </td>
                <td class="auto-style11">
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Right" 
                        ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="49px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                </td>
                <td class="auto-style6" style="text-align: center">
                    </td>
                <td>
                    </td>
            </tr>
            </table>
    
    </div>
        <div class="auto-style22">
            <strong>
            <asp:Label ID="Label9" runat="server" Text="FILTROS PARA PESQUISA DE PEDIDOS"></asp:Label>
            </strong>
        </div>
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style23">
                    <asp:Label ID="Label1" runat="server" Height="19px" Text="Dt Inicial: " Width="112px"></asp:Label>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Dt Final:" Font-Bold="False" Width="112px"></asp:Label>
                    </td>
                    <td align="center" class="auto-style18">
                    <asp:Label ID="Label4" runat="server" Text="Código do Cliente:" CssClass="auto-style13"></asp:Label>
                    </td>
                    <td align="center" class="auto-style19">
            <asp:Label ID="Label8" runat="server" Text="Pedido Nº"></asp:Label>
                    </td>
                    <td align="center" class="auto-style20">Resumo de Pedidos por Cliente</td>
                    <td align="center">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center" class="auto-style15" style="border-style: groove">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" Height="22px" Width="100px"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Height="22px" Width="100px"></asp:TextBox>
                        <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="120px">
                        <asp:ListItem Value="RJ">Rio de Janeiro</asp:ListItem>
                        <asp:ListItem Value="SP">São Paulo</asp:ListItem>
                        <asp:ListItem Value="PR">Paraná</asp:ListItem>
                    </asp:DropDownList>
                        <br />
                    <asp:Button ID="Button1" runat="server" Text="Localizar" Height="26px" Width="75px" />
                    </td>
                    <td align="center" class="auto-style18" height="66" style="border-style: groove">
            <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="100px"></asp:TextBox>
                        <br />
            <asp:Button ID="Button2" runat="server" Text="Localizar" Height="26px" Width="75px" />
                    </td>
                    <td align="center" class="auto-style19" height="66" style="border-style: groove">
            <asp:TextBox ID="TextBox4" runat="server" Height="22px" Width="100px"></asp:TextBox>
                        <br />
            <asp:Button ID="Button3" runat="server" Text="Localizar" Height="26px" Width="75px" />
                    </td>
                    <td align="center" class="auto-style20" height="66" style="border-style: groove">
                        <asp:TextBox ID="TextBox5" runat="server" Height="22px" Width="100px"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button4" runat="server" Height="26px" Text="Localizar" Width="75px" />
                    </td>
                    <td align="center" height="66" width="260">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center" class="auto-style15">
                        &nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Font-Size="Small" 
        onrowdatabound="GridView1_RowDataBound" style="color: #006600" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="pedidoID" HeaderText="Pedido" 
                SortExpression="pedidoID" />
            <asp:BoundField DataField="CODPARC" HeaderText="Cliente" 
                SortExpression="CODPARC" />
            <asp:BoundField DataField="NOMEPARC" HeaderText="Nome" SortExpression="NOMEPARC" />
            <asp:BoundField DataField="DTEMISSAO" HeaderText="Emissão" 
                SortExpression="DTEMISSAO" />
            <asp:BoundField DataField="DTENTREGA" HeaderText="Entrega" 
                SortExpression="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="STATUS" HeaderText="Situação" 
                SortExpression="STATUS" />
            <asp:CommandField ButtonType="Button" 
                ShowSelectButton="True" HeaderText="Ver Pedido">
            <ControlStyle BackColor="White" ForeColor="#006600" Font-Size="Small" />
            <ItemStyle ForeColor="#006600" Font-Size="Small" />
            </asp:CommandField>
        </Columns>
        <EmptyDataRowStyle Font-Size="Small" />
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
        <br />
        <div>
            <hr />
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        SelectCommand="SELECT pedidoID, NOMEPARC, DTEMISSAO, DTENTREGA, STATUS, UF, CODPARC FROM ListaPedidos WHERE (UF = @UF) AND (DTEMISSAO BETWEEN @DTEMISSAO1 AND DATEADD(Day, 1, @DTEMISSAO2)) AND (UF = @UF) ORDER BY pedidoID">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="UF" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="TextBox1" Name="DTEMISSAO1" PropertyName="Text" Type="DateTime" />
            <asp:ControlParameter ControlID="TextBox2" Name="DTEMISSAO2" PropertyName="Text" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
        <div>
            <div>
            </div>
            <br />
        </div>
        <div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" Font-Size="Small" GridLines="Vertical" AllowPaging="True" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="pedidoID" HeaderText="Pedido" SortExpression="pedidoID"></asp:BoundField>
                    <asp:BoundField DataField="CODPARC" HeaderText="Cliente" SortExpression="CODPARC"></asp:BoundField>
                    <asp:BoundField DataField="NOMEPARC" HeaderText="Nome" SortExpression="NOMEPARC"></asp:BoundField>
                    <asp:BoundField DataField="DTEMISSAO" HeaderText="Emissão" SortExpression="DTEMISSAO"></asp:BoundField>
                    <asp:BoundField DataField="DTENTREGA" HeaderText="Entrega" SortExpression="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundField>
                    <asp:BoundField DataField="STATUS" HeaderText="Situação" SortExpression="STATUS"></asp:BoundField>
                    <asp:CommandField ButtonType="Button" HeaderText="Ver Pedido" ShowSelectButton="True">
                        <controlstyle forecolor="#006600" />
                        <ItemStyle ForeColor="#006600" />
                    </asp:CommandField>
                </Columns>
                <EmptyDataRowStyle Font-Size="Small" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <sortedascendingcellstyle backcolor="#F1F1F1" />
                <sortedascendingheaderstyle backcolor="#0000A9" />
                <sorteddescendingcellstyle backcolor="#CAC9C9" />
                <sorteddescendingheaderstyle backcolor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT DISTINCT [pedidoID], [CODPARC], [NOMEPARC], [DTEMISSAO], [DTENTREGA], [STATUS] FROM [ListaPedidos] WHERE ([CODPARC] = @CODPARC) ORDER BY [DTEMISSAO] DESC">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox3" Name="CODPARC" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div>
            <hr />
        </div>
        <div>
            <br />
        </div>
        <div>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource3" Font-Size="Small" GridLines="Vertical" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="pedidoID" HeaderText="Pedido" SortExpression="pedidoID" />
                    <asp:BoundField DataField="CODPARC" HeaderText="Cliente" SortExpression="CODPARC" />
                    <asp:BoundField DataField="NOMEPARC" HeaderText="Nome" SortExpression="NOMEPARC" />
                    <asp:BoundField DataField="DTEMISSAO" HeaderText="Emissão" SortExpression="DTEMISSAO" />
                    <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Entrega" SortExpression="DTENTREGA" />
                    <asp:BoundField DataField="STATUS" HeaderText="Situação" SortExpression="STATUS" />
                    <asp:CommandField ButtonType="Button" HeaderText="Ver Pedido" ShowSelectButton="True">
                        <controlstyle forecolor="#006600" />
                        <ItemStyle ForeColor="#006600" />
                    </asp:CommandField>
                </Columns>
                <EmptyDataRowStyle Font-Size="Small" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT DISTINCT [pedidoID], [CODPARC], [NOMEPARC], [DTEMISSAO], [DTENTREGA], [STATUS] FROM [ListaPedidos] WHERE ([pedidoID] = @pedidoID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox4" Name="pedidoID" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div>
        </div>
    <div>
        <hr />
    </div>
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource4" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="pedidoID" HeaderText="Pedido" SortExpression="pedidoID" />
                <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Dt.Entrega" SortExpression="DTENTREGA" />
                <asp:BoundField DataField="CODPROD" HeaderText="Código" SortExpression="CODPROD" />
                <asp:BoundField DataField="DESCRPROD" HeaderText="Produto" SortExpression="DESCRPROD" />
                <asp:BoundField DataField="QTDE" HeaderText="Total" SortExpression="QTDE">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="CODPARC" HeaderText="CODPARC" SortExpression="CODPARC" Visible="False" />
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
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT ITENS_PEDIDO.pedidoID, ITENS_PEDIDO.CODPROD, ITENS_PEDIDO.QTDE, PEDIDO.DTENTREGA, TGFPRO.DESCRPROD, ITENS_PEDIDO.CODPARC FROM ITENS_PEDIDO INNER JOIN PEDIDO ON ITENS_PEDIDO.pedidoID = PEDIDO.pedidoID INNER JOIN TGFPRO ON ITENS_PEDIDO.CODPROD = TGFPRO.CODPROD WHERE (ITENS_PEDIDO.CODPARC = @CODPARC) ORDER BY ITENS_PEDIDO.pedidoID DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox5" Name="CODPARC" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
    </body>
</html>
