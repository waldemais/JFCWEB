<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Relatorio.aspx.cs" Inherits="JFCWEB.Paginas.Relatorio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            text-align: center;
        }
        .style1
        {
            width: 428px;
            text-align: left;
        }
        .style4
        {
            font-size: x-large;
            font-family: Verdana;
            color: #2A6137;
            }
        .style6
        {
            font-size: x-large;
            font-family: Verdana;
        }
        .style7
        {
            text-align: left;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 33px;
        }
        .auto-style3 {
            width: 437px;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 295px;
            text-align: right;
            height: 23px;
        }
        .auto-style12 {
            width: 116px;
            text-align: right;
            height: 23px;
        }
        .auto-style13 {
            width: 33px;
            height: 23px;
        }
        .auto-style14 {
            width: 124px;
            text-align: right;
            height: 23px;
        }
        .auto-style15 {
            width: 132px;
            text-align: right;
            height: 23px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style7">
    
        <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" ForeColor="#666666" StaticSubMenuIndent="10px" Orientation="Horizontal">
            <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#E3EAEB" />
            <DynamicSelectedStyle BackColor="#1C5E55" />
            <Items>
                <asp:MenuItem NavigateUrl="~/Cliente/Menu4.aspx" Text="Principal" Value="Principal"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Paginas/Pedido.aspx" Text="Pedidos" Value="Pedidos"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Sair" Value="Sair"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#666666" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#1C5E55" />
        </asp:Menu>
    
    </div>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/Logos _JFC.jpg" Height="90px" Width="120px" />
    <br />
    <br />
    <h1 class="style4">
    Pedido nº:
                <asp:TextBox ID="TextBx1" runat="server" BorderStyle="None" Enabled="False" 
                    Height="23px" 
            style="font-size: x-large; color: #006600; font-family: Verdana;" Width="117px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </h1>
    <table style="width:100%;">
        <tr class="style7">
            <td class="style1" 
                style="text-align: left; font-size: medium; color: #006600; font-weight: 700;">
                &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Click para receber uma cópia  no email." />
            </td>
            <td style="text-align: left">
                <asp:Label ID="Labe2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
        <div class="style7">
            <asp:Label ID="Labe1" runat="server" Text="Label" 
            style="font-size: large" Visible="False"></asp:Label>
    <br />
        </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" BorderStyle="None" GridLines="None" 
        style="font-size: small" Width="744px" 
        onload="GridView1_Load" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="CGC_CPF" HeaderText="CNPJ:" 
                SortExpression="CGC_CPF" />
            <asp:BoundField DataField="NOMEPARC" HeaderText="Cliente" 
                SortExpression="NOMEPARC" />
            <asp:BoundField DataField="DTEMISSAO" HeaderText="Data do Pedido" 
                SortExpression="DTEMISSAO" DataFormatString="{0:dd/MM/yyyy H:mm:ss}" />
            <asp:BoundField DataField="DTENTREGA" HeaderText=" Data da Entrega" 
                SortExpression="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="STATUS" HeaderText="STATUS" 
                SortExpression="STATUS" />
        </Columns>
        <HeaderStyle Font-Size="Medium" />
    </asp:GridView>
    <div class="style7">
        <br />
        <asp:Label ID="Label1" runat="server" 
            style="font-weight: 700; color: #006600; font-size: large; font-family: Arial, Helvetica, sans-serif" 
            Text="Produtos Solicitados"></asp:Label>
        <span class="style4"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Itens do Pedido<br />
        </span><br class="style6" />
    </div>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="#003300" 
        GridLines="None" style="font-size: small" Width="606px" OnDataBound="GridView2_DataBound">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="itemID" 
                SortExpression="itemID" ShowHeader="False" >
            <HeaderStyle BackColor="White" BorderStyle="None" />
            <ItemStyle BackColor="White" ForeColor="White" />
            </asp:BoundField>
            <asp:BoundField 
                SortExpression="pedidoID" >
            <HeaderStyle BackColor="White" />
            <ItemStyle BackColor="White" ForeColor="White" />
            </asp:BoundField>
            <asp:BoundField DataField="CODPROD" HeaderText="Código" 
                SortExpression="CODPROD" />
            <asp:BoundField DataField="DESCRPROD" HeaderText="Descrição" 
                SortExpression="DESCRPROD" HtmlEncode="False" >
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="QTDE" HeaderText="Qtde" 
                SortExpression="QTDE" />
            <asp:BoundField DataField="PADRAO" HeaderText="Unit." SortExpression="PADRAO" />
            <asp:BoundField DataField="TOTAL" HeaderText="Total" SortExpression="TOTAL" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="#97FF97" Font-Bold="True" ForeColor="#003300" 
            HorizontalAlign="Left" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
        <div class="auto-style1">
            <table class="auto-style9">
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style10">
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Small"></asp:Label>
                    </td>
                    <td class="auto-style15">
                        <asp:Label ID="Label3" runat="server" Font-Size="Small"></asp:Label>
                    </td>
                    <td class="auto-style12">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3" colspan="4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <hr />
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource3" onload="GridView3_Load" 
        onselectedindexchanged="GridView3_SelectedIndexChanged" Visible="False">
        <Columns>
            <asp:BoundField DataField="CGC_CPF" HeaderText="CGC_CPF" 
                SortExpression="CGC_CPF" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        SelectCommand="SELECT DISTINCT [CGC_CPF], [EMAIL] FROM [TGFPAR] WHERE ([CGC_CPF] = @CGC_CPF)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Labe1" Name="CGC_CPF" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        
        SelectCommand="SELECT DISTINCT itemID, pedidoID, CODPROD, QTDE, DESCRPROD, PADRAO, TOTAL FROM VLISTPRO WHERE (pedidoID = @pedidoID) AND (QTDE &lt;&gt; 0) ORDER BY DESCRPROD">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBx1" Name="pedidoID" PropertyName="Text" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        SelectCommand="SELECT DISTINCT [CGC_CPF], [NOMEPARC], [DTENTREGA], [DTEMISSAO], [STATUS] FROM [PEDIDOS] WHERE ([pedidoID] = @pedidoID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBx1" Name="pedidoID" PropertyName="Text" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
    </body>
</html>
