<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Novo.aspx.cs" Inherits="JFCWEB.Paginas.Novo" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Novo Pediso</title>
    <style type="text/css">
        .style2
        {
            color: #5F8F4C;
            font-size: xx-large;
            height: 28px;
        }
        .style7
        {
            font-size: x-large;
            color: #5F8F4C;
            height: 106px;
            background-color: #FFFFFF;
            width: 344px;
        }
        .style8
        {
            height: 7px;
        }
        .style9
        {
            text-align: center;
            background-color: #FFFFFF;
            font-style: italic;
        }
        .style11
        {
            text-align: left;
            font-family: Verdana;
            font-size: x-large;
            color: #5F8F4C;
        }
        #form1
        {
            height: 715px;
            width: 1303px;
            margin-right: 297px;
        }
        .style12
        {
            font-size: x-large;
            color: #5F8F4C;
            height: 106px;
            background-color: #FFFFFF;
            width: 303px;
        }
        .style13
        {
            background-color: #FFFFFF;
        }
        .style14
        {
            font-size: larger;
            font-family: "Courier New", Courier, monospace;
        }
        .auto-style1 {
            text-align: right;
        }
        .auto-style4 {
            text-align: justify;
        }
        .auto-style8 {
            width: 1265px;
            height: 709px;
        }
        .auto-style9 {
            text-align: left;
            background-color: #FFFFFF;
            height: 25px;
            width: 544px;
        }
        .auto-style10 {
            background-color: #FFFFFF;
            height: 25px;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            color: #61AC00;
            background-color: #FFFFFF;
        }
        .auto-style13 {
            text-align: center;
            background-color: #FFFFFF;
            font-style: italic;
            height: 44px;
        }
        .auto-style14 {
            background-color: #FFFFFF;
            height: 44px;
        }
        .auto-style15 {
            font-size: xx-large;
        }
        .auto-style17 {
            text-align: left;
            background-color: #FFFFFF;
            font-style: italic;
            height: 44px;
            width: 544px;
        }
        .auto-style18 {
            text-align: left;
            background-color: #FFFFFF;
            font-style: italic;
        }
        .auto-style19 {
            text-align: center;
            background-color: #FFFFFF;
            height: 25px;
        }
        .auto-style20 {
            text-align: center;
            background-color: #FFFFFF;
            font-style: italic;
            width: 544px;
        }
        .auto-style21 {
            text-align: left;
            background-color: #FFFFFF;
            font-style: italic;
            width: 544px;
        }
        .load {
            width:100px;
      height:100px;
      position:absolute;
      top:30%;
      left:45%;
      color:blue;
        }
         .auto-style22 {
            text-align: right;
            background-color: #FFFFFF;
            font-style: italic;
            width: 544px;
        }
        .auto-style23 {
            background-color: #CCFFCC;
        }
        .auto-style24 {
            text-align: right;
            background-color: #FFFFFF;
            font-style: italic;
        }
         </style>
    <link rel="Stylesheet""
     href=~/Imagem\Temporizador.gif />
    &nbsp;</head><body style="background-color: #CECECE"><form id="form1" runat="server" 
    style="background-position: center; background-color: #FFFFFF;" class="auto-style8">
        <div class="auto-style4">
    <div style="text-align: center">
        <div>
        </div>
        <div>
            <table style="width: 99%; height: 97px;">
                <tr>
                    <td class="auto-style21">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/Logos _JFC.jpg" 
                            Width="91px" Height="74px" />
                    </td>
                    <td class="auto-style18">
                        <strong>
                        <asp:Label ID="Label6" runat="server" Text="Novo Pedido" Enabled="False" BorderStyle="None" CssClass="auto-style15" Height="30px" Width="200px" Font-Bold="True" Font-Italic="False"></asp:Label>
                        </strong>
                    </td>
                    <td class="style13" style="text-align: right">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="50px" />
                    </td>
                    <td class="style13" style="text-align: right">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label7" runat="server" style="font-size: large" Text="Cliente: " Enabled="False"></asp:Label>
                <asp:Label ID="Lab6" runat="server" style="font-size: large" Enabled="False"></asp:Label>
                        <br />
                        <asp:Label ID="Label8" runat="server" style="font-size: large" Text="CGC: " Enabled="False"></asp:Label>
                <asp:Label ID="Lab7" runat="server" Text="Label" style="font-size: large" Enabled="False"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="Label9" runat="server" style="font-size: large" Text="Data da Solicitação: " Enabled="False"></asp:Label>
                        <asp:TextBox ID="TxtBox2" runat="server" BorderStyle="None" Enabled="False" style="font-size: large" Width="144px"></asp:TextBox>
                    </td>
                    <td class="auto-style14" style="text-align: right">
                        </td>
                    <td class="auto-style14" style="text-align: right">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style21">
                <asp:TextBox ID="Text2" runat="server" Visible="False" OnTextChanged="Text2_TextChanged"></asp:TextBox>
                        <br />
                    </td>
                    <td class="style9">
                        <asp:Label ID="Label10" runat="server" style="font-size: large" Text="Data da Entrega: "></asp:Label>
                    <asp:DropDownList ID="DpLi1" runat="server" 
                        DataSourceID="SqlDataSource3" DataTextField="DTENTREGA" 
                        DataValueField="DTENTREGA" Height="40px" 
                        
                        
                        style="font-size: medium; color: #006600; font-family: Verdana; margin-top: 0px" 
                        AutoPostBack="True" DataTextFormatString="{0:dd/MM/yyyy}" 
                    ForeColor="#006600" Width="145px" 
                    onselectedindexchanged="DpLi1_SelectedIndexChanged" onload="DpLi1_Load">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    </td>
                    <td class="style13" style="text-align: right">
                        &nbsp;</td>
                    <td class="style13" style="text-align: right">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:TextBox ID="TxtBox1" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <asp:Label ID="Label2" runat="server" style="color: #006600; font-size: large;"></asp:Label>
                <asp:Label ID="Label5" runat="server" 
                    
                    style="color: #006600; font-size: large; font-family: Arial, Helvetica, sans-serif; font-weight: 700;"></asp:Label>
                <strong> <asp:Label ID="Label1" runat="server" 
                    style="text-align: left; color: #006600; background-color: #FFFFFF;"></asp:Label>
                </strong>
                    </td>
                    <td class="auto-style10" style="text-align: right">
                        </td>
                    <td class="auto-style10" style="text-align: right">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Overline="False" Font-Size="Small" Height="104px" OnTextChanged="TextBox3_TextChanged" TextMode="MultiLine" Width="463px" Visible="False">Prezados Parceiros do Rio de Janeiro.
Não teremos entregas nos dia 17/10 (Segunda-feira) – Feriado do Comércio.
Por favor, Reforçar seu estoque nos próximos pedidos, que antecedem o feriado</asp:TextBox>
                    </td>
                    <td class="auto-style24">
                        <strong> 
                            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Font-Bold="True" Height="122px" TextMode="MultiLine" Width="483px" Enabled="False" OnTextChanged="TextBox2_TextChanged">Somente para as Lojas de São Paulo!
Para entregas D2, o pedido tem que ser finalizado ate as 16:00 horas.
Ex:
Pedido finalizado Quarta as 15:55 entrega Sexta.
Pedido finalizado Quarta as 16:01 entrega S&#225;bado.</asp:TextBox>
                </strong>
                    </td>
                    <td class="style13" style="text-align: right">
                        &nbsp;</td>
                    <td class="style13" style="text-align: right">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9" colspan="4">
                <asp:GridView ID="GrdView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" BorderStyle="None" ShowHeader="False" 
                        style="font-family: Verdana; font-size: x-large" GridLines="None" 
                    CaptionAlign="Left" Width="85px" onload="GrdView1_Load" 
                    onselectedindexchanged="GrdView1_SelectedIndexChanged" Visible="False">
                        <Columns>
                            <asp:BoundField DataField="NOMEPARC" HeaderText="NOMEPARC" 
                                SortExpression="NOMEPARC" />
                            <asp:BoundField DataField="CGC_CPF" HeaderText="CGC_CPF" 
                                SortExpression="CGC_CPF" />
                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                            <asp:BoundField DataField="CODPARC" HeaderText="CODPARC" SortExpression="CODPARC" />
                            <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" />
                        </Columns>
                    </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style13" style="text-align: right">
                        &nbsp;</td>
                    <td class="style13" style="text-align: right">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9" colspan="4">
        <asp:GridView ID="GrdV2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" Width="1000px" 
            
                   
        style="font-family: Verdana; font-size: large; color: #5F8F4C; background-color: #FFFFFF;" 
        Height="16px" GridLines="None" onload="GrdV2_Load" 
        onrowupdated="GrdV2_RowUpdated" onrowdatabound="GrdV2_RowDataBound" 
        CellPadding="4" ForeColor="#333333" BorderStyle="None" 
        onrowediting="GrdV2_RowEditing" 
        onselectedindexchanged="GrdV2_SelectedIndexChanged" Font-Italic="False" OnDataBound="GrdV2_DataBound">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="itemID" HeaderText="Sequência" 
                    SortExpression="itemID" >
                <ItemStyle Font-Size="Smaller" />
                </asp:BoundField>
                <asp:BoundField DataField="CODPROD" HeaderText="CÓDIGO" 
                    SortExpression="CODPROD" ReadOnly="True" />
                <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRIÇÃO" 
                    SortExpression="DESCRPROD" ReadOnly="True" />
                <asp:BoundField DataField="QTDE" HeaderText="QTDE DO PEDIDO" 
                    SortExpression="QTDE" >
                <HeaderStyle HorizontalAlign="Right" />
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="QTDE SOLICITADA" SortExpression="QTDE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("QTDE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="TxtB2" runat="server" Height="22px" 
                            ontextchanged="TxtB2_TextChanged" Text=' ' Width="91px"></asp:TextBox>
                    </ItemTemplate>
                    <ControlStyle Font-Size="X-Large" ForeColor="#009933" />
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle Font-Size="Large" ForeColor="#009933" HorizontalAlign="Right" />
                </asp:TemplateField>
                <asp:BoundField DataField="PADRAO" HeaderText="VLR.UNITÁRIO" SortExpression="PADRAO" DataFormatString="{0:n}">
                <HeaderStyle HorizontalAlign="Right" />
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="TOTAL" DataFormatString="{0:n}" HeaderText="TOTAL" SortExpression="TOTAL">
                <HeaderStyle HorizontalAlign="Right" />
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:CommandField ButtonType="Button" SelectText="OK" 
                    ShowSelectButton="True">
                <ControlStyle BackColor="White" ForeColor="#006600" Font-Size="Small" 
                    Height="25px" Width="30px" />
                </asp:CommandField>
                <asp:BoundField DataField="CGC_CPF" HeaderText="CGC_CPF" SortExpression="CGC_CPF" Visible="False" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle Font-Size="XX-Small" HorizontalAlign="Left" BackColor="#1C5E55" 
                Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="style9" colspan="4">
                        <asp:Label ID="Lbl11" runat="server" CssClass="auto-style11" Font-Bold="False" Font-Italic="False" ForeColor="#006600" style="text-align: right" Width="630px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style9" colspan="4">
                        <strong>
                        <asp:Button ID="Btt2" runat="server" CssClass="auto-style12" Font-Bold="True" Font-Size="X-Large" Height="47px" Text="Cancelar" Width="130px" PostBackUrl="~/Cliente/Menu4.aspx" />
                        </strong>
                    <asp:Button ID="Butt1" runat="server" Font-Bold="True" Font-Size="X-Large" Height="47px" 
                            style="background-color: #FFFFFF; color: #61AC00;" Text="Finalizar" 
                        Width="130px" onclick="Butt1_Click" />
                        <asp:Button ID="Butt2" runat="server" Font-Size="Large" 
                            ForeColor="White" Height="47px" 
                            style="font-weight: 700; background-color: #FFFFFF; color: #61AC00;" Text="Pedido" 
                            Width="150px" PostBackUrl="~/Paginas/Relatorio.aspx" Visible="False" BackColor="#009933" OnClick="Butt2_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="style11" colspan="4">
    <div class="style2">
    </div>
        <asp:GridView ID="Grid4" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource4" onload="Grid4_Load" Visible="False">
            <Columns>
                <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" 
                    HeaderText="DTENTREGA" SortExpression="DTENTREGA" />
                <asp:BoundField DataField="CGC_CPF" HeaderText="CGC_CPF" 
                    SortExpression="CGC_CPF" />
                <asp:CheckBoxField DataField="ATIVO" HeaderText="ATIVO" 
                    SortExpression="ATIVO" />
                <asp:BoundField DataField="LIMDIA" HeaderText="LIMDIA" 
                    SortExpression="LIMDIA" />
                <asp:BoundField DataField="LIMHORA" HeaderText="LIMHORA" 
                    SortExpression="LIMHORA" />
                <asp:BoundField DataField="DIASEM" HeaderText="DIASEM" 
                    SortExpression="DIASEM" />
                <asp:BoundField DataField="DIA" HeaderText="DIA" SortExpression="DIA" />
            </Columns>
    </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
        </div>
    
        </div>
            <div>
                <hr style="height: 0px" />
            </div>     
            <div class="auto-style1">
            </div>
    <div style="background-color: #FFFFFF" class="auto-style1">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
            
            
            
                        
                        
                        
                        SelectCommand="SELECT DISTINCT itemID, CODPROD, DESCRPROD, QTDE, CGC_CPF, STATUS, PADRAO, TOTAL FROM VLISTPRO WHERE (pedidoID IS NULL) AND (CGC_CPF = @CGC_CPF) ORDER BY itemID">
            <SelectParameters>
                <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
            
                        SelectCommand="SELECT DISTINCT ENTREGA.DTENTREGA, ENTREGA.CGC_CPF, TabProg.ATIVO, TabProg.LIMDIA, TabProg.LIMHORA, ENTREGA.DIASEM, TabProg.DIA FROM ENTREGA INNER JOIN TGFPAR ON ENTREGA.CGC_CPF = TGFPAR.CGC_CPF INNER JOIN TabProg ON TGFPAR.CODPARC = TabProg.CODPARC AND ENTREGA.DIASEM = TabProg.DIASEM WHERE (ENTREGA.CGC_CPF = @CGC_CPF) AND (TabProg.ATIVO = 1)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
                        
                        
                        
                        
                        
            
                        SelectCommand="SELECT DISTINCT DTENTREGA, ATIVO, CGC_CPF FROM PedEntrega WHERE (CGC_CPF = @CGC_CPF) AND (ATIVO = 'True') ORDER BY DTENTREGA">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
                        
                        
                        
        
            
                        SelectCommand="SELECT DISTINCT NOMEPARC, CGC_CPF, EMAIL, CODPARC, UF FROM TGFPAR WHERE (CGC_CPF = @CGC_CPF)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
    </div>
    <div>
        <br />
    </div>
        </div>
    </form>
</body>
</html>
