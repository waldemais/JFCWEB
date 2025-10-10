<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdmPedidos.aspx.cs" Inherits="JFCWEB.Usuario.AdmPedidos" %>

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
        .auto-style2 {
            text-align: center;
            color: #009933;
            font-size: x-large;
        }
        .auto-style3 {
            font-size: large;
            color: #333333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td style="text-align: center">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="Left" 
                        ImageUrl="~/Imagem/icons8-menu-48.png" 
                        PostBackUrl="~/Administrador/Menu1.aspx" />
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/Logos _JFC.jpg" Width="100px" />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Right" 
                        ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="49px" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:TextBox ID="TBo1" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="style1" style="text-align: center">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="auto-style2">
                    <strong>PEDIDOS REGISTRADOS</strong></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Height="20px" Text="Data Entrega:" Width="96px"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Status: "></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="ABERTO">ABERTO</asp:ListItem>
                        <asp:ListItem>CANCELADO</asp:ListItem>
                        <asp:ListItem>FINALIZADO</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" Text="Localizar" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Font-Size="X-Large" 
        onrowdatabound="GridView1_RowDataBound" style="color: #006600" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="pedidoID" HeaderText="Pedido" 
                SortExpression="pedidoID" />
            <asp:BoundField DataField="NOMEPARC" HeaderText="Parceiro" 
                SortExpression="NOMEPARC" />
            <asp:BoundField DataField="DTEMISSAO" HeaderText="Emissão" 
                SortExpression="DTEMISSAO" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="DTENTREGA" HeaderText="Entrega" 
                SortExpression="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="STATUS" HeaderText="Status" 
                SortExpression="STATUS" />
            <asp:CommandField ButtonType="Button" SelectText="Selecione" 
                ShowSelectButton="True">
            <ControlStyle BackColor="White" ForeColor="#006600" />
            <ItemStyle ForeColor="#006600" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        SelectCommand="SELECT * FROM [ListaPedidos] WHERE (([DTENTREGA] = @DTENTREGA) AND ([STATUS] = @STATUS)) ORDER BY [NOMEPARC], [pedidoID]">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="DTENTREGA" PropertyName="Text" />
            <asp:ControlParameter ControlID="DropDownList1" Name="STATUS" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
