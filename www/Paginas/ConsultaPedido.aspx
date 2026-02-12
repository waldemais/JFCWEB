<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaPedido.aspx.cs" Inherits="JFCWEB.Paginas.ConsultaPedido" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 204px;
            color: #006600;
            font-size: medium;
        }
        .style2
        {
            width: 204px;
            color: #006600;
            font-size: large;
        }
        .auto-style1 {
            text-align: left;
            height: 36px;
        }
        .auto-style2 {
            width: 199px;
            color: #006600;
            font-size: medium;
            height: 36px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 438px;
            color: #006600;
            font-size: medium;
            height: 36px;
        }
        .auto-style5 {
            width: 438px;
            color: #006600;
            font-size: medium;
        }
        .auto-style6 {
            width: 438px;
            color: #006600;
            font-size: large;
        }
        .auto-style7 {
            width: 199px;
            color: #006600;
            font-size: medium;
        }
        .auto-style8 {
            width: 199px;
            color: #006600;
            font-size: large;
        }
    </style>
</head>
<body style="background-color: #FFFFFF">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style2" style="background-color: #77A364">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/Logos _JFC.jpg" 
                        Width="35px" Height="40px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style3" PostBackUrl="~/Paginas/MenuPedidos.aspx" Text="Menu Pedidos" />
                </td>
                <td class="auto-style4" style="background-color: #77A364">
                    &nbsp;</td>
                <td style="background-color: #77A364;" class="auto-style1">
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="35px" Height="40px" ImageAlign="Right" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:TextBox ID="TBo1" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <h2 class="titulo-pagina" 
                        style="color: rgb(63, 137, 40); font-weight: 100; font-size: 2em; margin: 5px 0px; float: left; font-family: Raleway, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                        Meus
                        Pedidos</h2>
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Text="Digite o Pedido"></asp:Label>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:TextBox ID="Box1" runat="server" OnLoad="TextBox1_Load" OnTextChanged="TextBox1_TextChanged" style="text-align: center" Width="88px"></asp:TextBox>
                    <asp:Button ID="Botao2" runat="server" Text="LOCALIZAR" Width="91px" />
                </td>
                <td class="auto-style6">
                    &nbsp;&nbsp; </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <div>
        <asp:Label ID="Lbel1" runat="server" Visible="False"></asp:Label>
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" GridLines="None" 
        style="color: #006600; font-size: 22pt;" 
        Font-Size="Small" onrowdatabound="GridView1_RowDataBound" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" DataKeyNames="pedidoID" CellPadding="2" Font-Overline="False" ForeColor="Black" PageSize="100" EnableViewState="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="pedidoID" HeaderText="Pedido" ReadOnly="True" SortExpression="pedidoID" >
            <ControlStyle BorderStyle="None" />
            <ItemStyle Font-Size="Small" Wrap="True" />
            </asp:BoundField>
            <asp:BoundField DataField="DTEMISSAO" DataFormatString="{0:dd/MM/yyyy}" 
                HeaderText="Emissão" SortExpression="DTEMISSAO" >
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" 
                HeaderText="Entrega" SortExpression="DTENTREGA" >
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="STATUS" HeaderText="Status" 
                SortExpression="STATUS" >
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:BoundField DataField="CGC_CPF" HeaderText="CGC_CPF" 
                SortExpression="CGC_CPF" Visible="False" >
            <ItemStyle Font-Size="Small" />
            </asp:BoundField>
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle Font-Size="Medium" BackColor="Tan" Font-Bold="True" Wrap="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        
        
        
        SelectCommand="SELECT DISTINCT pedidoID, DTEMISSAO, DTENTREGA, STATUS, CGC_CPF FROM ListaPedido WHERE (CGC_CPF = @CGC_CPF) AND (DTENTREGA IS NOT NULL) ORDER BY pedidoID DESC" ProviderName="System.Data.SqlClient" ConnectionString="Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025">
        <SelectParameters>
            <asp:ControlParameter ControlID="Lbel1" Name="CGC_CPF" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
