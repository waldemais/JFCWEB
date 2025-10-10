<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="JFCWEB.Paginas.Pedidos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            font-family: Verdana;
            font-size: x-large;
            color: #009933;
        }
        .style4
        {
            color: #009933;
            font-family: Verdana;
        }
        .style6
        {
            font-size: x-large;
            color: #3F8949;
        }
        .style8
        {
            width: 109px;
        }
        .style9
        {
            font-family: Verdana;
            font-size: xx-large;
            color: #009933;
            width: 295px;
        }
        .style10
        {
            width: 541px;
        }
        .style13
        {
            color: #003300;
        }
        .style14
        {
            color: #009933;
            font-size: xx-large;
            font-family: Verdana;
        }
        .style15
        {
            width: 109px;
            height: 46px;
        }
        .style16
        {
            width: 541px;
            height: 46px;
        }
        .style17
        {
            height: 46px;
        }
        .style18
        {
            width: 109px;
            height: 23px;
        }
        .style19
        {
            width: 541px;
            height: 23px;
        }
        .style20
        {
            height: 23px;
        }
        .style22
        {
            width: 295px;
        }
        .style23
        {
            width: 622px;
        }
        .auto-style1 {
            width: 388px;
        }
        .auto-style2 {
            width: 388px;
            text-align: center;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 231px;
        }
        .auto-style4 {
            width: 231px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        ,<br />
    
        <table style="width:100%;">
            <tr>
                <td class="style22">
                    <asp:Menu ID="Menu1" runat="server">
                        <Items>
                            <asp:MenuItem ImageUrl="~/Imagem/icons8-menu-48.png" 
                                NavigateUrl="~/Cliente/Menu4.aspx" Enabled="False"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                <td class="style23" style="text-align: center">
                    <asp:Image ID="Image1" runat="server" Height="90px" 
                        ImageUrl="~/Imagem/Logos _JFC.jpg" Width="100px" />
                </td>
                <td style="text-align: right">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" 
                        ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="50px" />
                </td>
            </tr>
            <tr>
                <td class="style22">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    Pedido</td>
                <td class="style23">
                    &nbsp;</td>
                <td style="text-align: right">
                    <asp:Button ID="Btt3" runat="server" Text="Visualizar" onclick="Btt3_Click" 
                        style="color: #61AC00; font-size: x-large; background-color: #D4D0C8" 
                        Height="40px" Width="120px" />
                    <asp:Button ID="Btt4" runat="server" Text="Cancelar" Height="40px" 
                        ONClientClick="Javascript:return confirm('Confirma o Cancelamento do Pedido?');" 
                        onclick="Btt4_Click" style="font-size: x-large; color: #61AC00" Width="120px" />
                    <asp:Button ID="Btt5" runat="server" Text="Duplicar" Height="40px" 
                        style="font-size: x-large; color: #61AC00" Width="120px" 
                        onclick="Btt5_Click" Visible="False" />
                </td>
            </tr>
        </table>
    
    </div>
    <asp:Panel ID="Panel1" runat="server" Height="201px">
        <table style="width:100%; height: 140px;">
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:TextBox ID="TBox5" runat="server" Enabled="False" Font-Size="Small" 
                        ForeColor="White" Height="50px" 
                        style="color: #FFFFFF; text-align: center; font-weight: 700; background-color: #AA9100; font-size: medium;" 
                        Width="130px"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TBox6" runat="server" Font-Size="Small" ForeColor="White" 
                        Height="50px" 
                        style="font-size: medium; text-align: center; font-weight: 700; background-color: #AA9100" 
                        Width="130px"></asp:TextBox>
                    <br />
                </td>
                <td class="style16">
                    <span class="style3">Cliente<br />
                    <asp:Label ID="Lbel8" runat="server" 
                        style="font-family: Verdana; font-size: x-large; color: #639050" Text="Label"></asp:Label>
                    </span>
                    <br />
                    &nbsp;<span class="style4">CNPJ:</span>
                    <asp:TextBox ID="TxtBox5" runat="server" BorderStyle="None" ReadOnly="True" 
                        style="font-size: large; color: #009933"></asp:TextBox>
                    <br />
                </td>
                <td class="style17">
                    <span class="style6">Data de Entrega</span><br />
                    <asp:Label ID="Lbel7" runat="server" Font-Size="X-Large" ForeColor="#3F8949" 
                        style="color: #3F8964"></asp:Label>
                    <br />
                    <span class="style13">&nbsp;</span><asp:Label ID="Lbel9" runat="server" 
                        style="color: #3F8949; font-size: large;"></asp:Label>
                    :
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style18">
                    </td>
                <td class="style19">
                    <asp:Label ID="Label1" runat="server" 
                        style="font-family: Verdana; color: #FF0000"></asp:Label>
                </td>
                <td class="style20">
                    </td>
            </tr>
        </table>
    </asp:Panel>
    <table style="width: 100%; height: 46px;">
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: left" class="style14">
                Itens do Pedido</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
    
            
            
        SelectCommand="SELECT DISTINCT [pedidoID], [NOMEPARC], [CGC_CPF], [DTEMISSAO], [DTENTREGA], [STATUS] FROM [PEDIDOS] WHERE ([pedidoID] = @pedidoID) ORDER BY [pedidoID] DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="TBox5" Name="pedidoID" PropertyName="Text" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" BorderStyle="None" 
        onrowdatabound="GridView2_RowDataBound" Width="727px">
        <Columns>
            <asp:BoundField DataField="itemID" HeaderText="ID" 
                SortExpression="itemID" ShowHeader="False" >
            <ControlStyle Font-Size="8pt" />
            <HeaderStyle Font-Size="Smaller" />
            <ItemStyle Font-Size="1pt" />
            </asp:BoundField>
            <asp:BoundField DataField="pedidoID" HeaderText="pedidoID" 
                SortExpression="pedidoID" Visible="False" ReadOnly="True" />
            <asp:BoundField DataField="CODPROD" HeaderText="Código" 
                SortExpression="CODPROD" ReadOnly="True" >
            <ItemStyle Font-Size="Large" />
            </asp:BoundField>
            <asp:BoundField DataField="DESCRPROD" HeaderText="Descrição" 
                SortExpression="DESCRPROD" ReadOnly="True" >
            <ItemStyle Font-Size="Large" />
            </asp:BoundField>
            <asp:BoundField DataField="QTDE" HeaderText="Qtde" 
                SortExpression="QTDE" >
            <ControlStyle Font-Size="Large" />
            <ItemStyle Font-Size="Large" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="PADRAO" HeaderText="Unid." SortExpression="PADRAO">
            <ControlStyle Font-Size="Large" />
            <ItemStyle Font-Size="Large" HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="TOTAL" HeaderText="Total" SortExpression="TOTAL">
            <ControlStyle Font-Size="Large" />
            <ItemStyle Font-Size="Large" HorizontalAlign="Right" />
            </asp:BoundField>
        </Columns>
        <HeaderStyle Font-Size="Small" />
        <RowStyle BorderStyle="None" Font-Size="X-Large" ForeColor="#003300" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        
        SelectCommand="SELECT DISTINCT itemID, pedidoID, CODPROD, QTDE, DESCRPROD, PADRAO, TOTAL FROM VLISTPRO WHERE (pedidoID = @pedidoID) AND (QTDE &gt;= 0) ORDER BY DESCRPROD" 
        
        UpdateCommand="UPDATE ITENS_PEDIDO SET QTDE = @QTDE WHERE (itemID =@itemID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TBox5" Name="pedidoID" PropertyName="Text" 
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="QTDE" />
            <asp:Parameter Name="itemID" />
        </UpdateParameters>
    </asp:SqlDataSource>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style3"></td>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td class="style20"></td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
        </table>
        <div>
        </div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" 
        Visible="False" onrowdatabound="GridView1_RowDataBound">
                        <Columns>
                            <asp:BoundField DataField="pedidoID" HeaderText="pedidoID" 
                                SortExpression="pedidoID" />
                            <asp:BoundField DataField="NOMEPARC" HeaderText="NOMEPARC" 
                                SortExpression="NOMEPARC" />
                            <asp:BoundField DataField="CGC_CPF" HeaderText="CGC_CPF" 
                                SortExpression="CGC_CPF" />
                            <asp:BoundField DataField="DTEMISSAO" HeaderText="DTEMISSAO" 
                                SortExpression="DTEMISSAO" DataFormatString="{0:dd/MM/yyyy H:mm:ss}" />
                            <asp:BoundField DataField="DTENTREGA" HeaderText="DTENTREGA" 
                                SortExpression="DTENTREGA" DataFormatString="{0:dd/MMMM/yyyy}" />
                            <asp:BoundField DataField="STATUS" HeaderText="STATUS" 
                                SortExpression="STATUS" />
                        </Columns>
                    </asp:GridView>
    </form>
</body>
</html>
