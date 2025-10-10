<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRM4.aspx.cs" Inherits="JFCWEB.Paginas.ConsultaPedido" %>

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
    </style>
</head>
<body style="background-color: #FFFFFF">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:Menu ID="Menu1" runat="server">
                        <Items>
                            <asp:MenuItem ImageUrl="~/Imagem/icons8-menu-48.png" 
                                NavigateUrl="~/Cliente/Menu4.aspx"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                <td style="text-align: center">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/Logos _JFC.jpg" 
                        Width="100px" Height="90px" />
                </td>
                <td style="text-align: right">
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="50px" />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <h2 class="titulo-pagina" 
                        style="color: rgb(63, 137, 40); font-weight: 100; font-size: 2em; margin: 5px 0px; float: left; font-family: Raleway, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                        Meus
                        Pedidos</h2>
                    <asp:TextBox ID="TBo1" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Filtrar:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td style="text-align: left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
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
        style="color: #006600; font-size: 22pt;" Width="883px" 
        Font-Size="X-Large" onrowdatabound="GridView1_RowDataBound" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        AllowSorting="True" DataKeyNames="pedidoID">
        <Columns>
            <asp:BoundField DataField="pedidoID" HeaderText="Pedido" 
                InsertVisible="False" ReadOnly="True" SortExpression="pedidoID" />
            <asp:BoundField DataField="DTEMISSAO" DataFormatString="{0:dd/MM/yyyy H:mm:ss}" 
                HeaderText="Emissão" SortExpression="DTEMISSAO" />
            <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MMMM/yyyy}" 
                HeaderText="Entrega" SortExpression="DTENTREGA" />
            <asp:BoundField DataField="STATUS" HeaderText="Status" 
                SortExpression="STATUS" />
            <asp:BoundField DataField="CGC_CPF" HeaderText="CGC_CPF" 
                SortExpression="CGC_CPF" Visible="False" />
            <asp:CommandField ButtonType="Button" SelectText="Selecione" 
                ShowSelectButton="True">
            <ControlStyle BackColor="#3F8928" ForeColor="White" />
            </asp:CommandField>
        </Columns>
        <HeaderStyle Font-Size="X-Large" ForeColor="Gray" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        
        
        SelectCommand="SELECT DISTINCT pedidoID, DTEMISSAO, DTENTREGA, STATUS, CGC_CPF FROM ListaPedido WHERE (CGC_CPF = @CGC_CPF) AND (DTENTREGA IS NOT NULL) ORDER BY pedidoID DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="Lbel1" Name="CGC_CPF" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
