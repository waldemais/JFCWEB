<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Novo.aspx.cs" Inherits="JFCWEB.Paginas.Novo" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Novo Pedido</title>
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
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
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            color: #61AC00;
            background-color: #FFFFFF;
        }
        .auto-style15 {
            font-size: xx-large;
            color: #009933;
        }
        .auto-style18 {
            text-align: left;
            background-color: #FFFFFF;
            font-style: italic;
            height: 58px;
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
         .auto-style26 {
            font-size: small;
            color: #FF0000;
        }
         .auto-style27 {
            text-align: left;
        }
        .auto-style28 {
            width: 116px;
            text-align: left;
        }
        .auto-style29 {
            text-align: left;
            width: 165px;
        }
         .auto-style30 {
            font-size: medium;
        }
         .auto-style31 {
            width: 111px;
            text-align: left;
        }
         .auto-style32 {
            background-color: #FFFFFF;
            font-style: italic;
            height: 51px;
        }
        .auto-style33 {
            text-align: center;
            background-color: #FFFFFF;
            font-style: italic;
            height: 31px;
        }
         .auto-style34 {
            text-align: left;
            background-color: #FFFFFF;
            font-style: italic;
            width: 544px;
            height: 58px;
        }
        .auto-style35 {
            background-color: #FFFFFF;
            height: 58px;
        }
         .auto-style36 {
            text-align: center;
            background-color: #FFFFFF;
            font-style: italic;
            height: 108px;
        }
         </style>
    <link rel="Stylesheet""
     href=~/Imagem\Temporizador.gif />
    &nbsp;</head>
    <script src="Scripts/jquery-1.9.1.min.js"></script> 
    <script src="Scripts/bootstrap.min.js"></script> 
    <body style="background-color: #CECECE"><form id="form1" runat="server" 
    style="background-position: center; background-color: #FFFFFF;" class="auto-style8">
        <div class="auto-style4">
    <div style="text-align: center">
        <div>
            <table style="width: 100%; background-color: #77A364;">
                <tr>
                    <td class="auto-style28">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/grupo.png" 
                            Width="44px" Height="43px" />
                    </td>
                    <td class="auto-style31">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                    <td class="auto-style27">
                        <strong>
                        <asp:Label ID="Label6" runat="server" Text="Emissão de Pedido" Enabled="False" BorderStyle="None" CssClass="auto-style15" Height="30px" Width="269px" Font-Bold="True" Font-Italic="False" ForeColor="White"></asp:Label>
                        </strong>
                    </td>
                    <td class="auto-style1">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="29px" Height="30px" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table style="width: 99%; height: 97px;">
                <tr>
                    <td class="auto-style34">
                        <asp:Label ID="Label8" runat="server" style="font-size: medium" Text="CNPJ: " Enabled="False"></asp:Label>
                        <asp:TextBox ID="Lab7" runat="server" Enabled="False" CssClass="auto-style30" BorderStyle="None"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label13" runat="server" Text="Còdigo: "></asp:Label>
                        <asp:Label ID="Lab10" runat="server" Font-Size="Large" Text="CL" Font-Italic="False" style="font-size: medium"></asp:Label>
                        <br />
                        <asp:Label ID="Label14" runat="server" Text="Fantasia: "></asp:Label>
                <asp:Label ID="Lab6" runat="server" style="font-size: medium" Enabled="False">DESCRIÇAO</asp:Label>
                        <br />
                        <asp:Label ID="Label15" runat="server" Text="Email: "></asp:Label>
                <asp:TextBox ID="Text2" runat="server" OnTextChanged="Text2_TextChanged" BorderStyle="None" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label16" runat="server" Text="Unidade: "></asp:Label>
                        <asp:Label ID="Label12" runat="server" BorderStyle="None" Enabled="False" Text="Label"></asp:Label>
                        </td>
                    <td class="auto-style18">
                        <asp:Label ID="Label9" runat="server" style="font-size: large" Text="Solicitação: " Enabled="False"></asp:Label>
                        <asp:TextBox ID="TxtBox2" runat="server" BorderStyle="None" Enabled="False" style="font-size: large" Width="144px"></asp:TextBox>
                        <br />
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
               <asp:Label ID="lblHoraAtual" runat="server" Visible="False" />
                                        
                  <asp:Timer ID="Timer1" runat="server" Interval="60000" OnTick="Timer1_Tick" />
    </ContentTemplate>
                        </asp:UpdatePanel>
                        <br />
                        <asp:Label ID="Label10" runat="server" style="font-size: large" Text="Próximas Entrega: "></asp:Label>
                        &nbsp;
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
                    <td class="auto-style35" style="text-align: right">
                        </td>
                    <td class="auto-style35" style="text-align: right">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style21">
                <asp:Label ID="Label5" runat="server" 
                    
                    style="font-family: Arial, Helvetica, sans-serif; background-color: #00FF00; font-size: medium;" CssClass="auto-style26" Font-Size="Small" Font-Bold="False" Font-Italic="False" Visible="False"></asp:Label>
                <strong> 
                        <br />
                        <asp:Label ID="Label1" runat="server"
                        Style="text-align: left; color: #006600; background-color: #FFFFFF;" Visible="False"></asp:Label>
                        <br />
                </strong>
                        <asp:Label ID="Label2" runat="server" Style="color: #006600; font-size: large;" Visible="False"></asp:Label>
                    </td>
                    <td class="style9">
                        <asp:TextBox ID="TxtBox1" runat="server" Visible="False"></asp:TextBox>
                    </td>
                    <td class="style13" style="text-align: right">
                        &nbsp;</td>
                    <td class="style13" style="text-align: right">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style9" colspan="4" width="100">
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT CODPARC, DIASEM, ATIVO, LIMDIA, LIMHORA, IDSEM FROM TabProg WHERE (CODPARC = @CODPARC) AND (ATIVO = 1) ORDER BY IDSEM">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Lab10" Name="CODPARC" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style36" colspan="4">
        <asp:GridView ID="GrdV2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" Width="1000px" 
            
                   
        style="font-family: Verdana; font-size: large; color: #5F8F4C; background-color: #FFFFFF;" 
        Height="16px" GridLines="None" onload="GrdV2_Load" 
        onrowupdated="GrdV2_RowUpdated" onrowdatabound="GrdV2_RowDataBound" 
        CellPadding="4" 
        onrowediting="GrdV2_RowEditing" 
        onselectedindexchanged="GrdV2_SelectedIndexChanged" Font-Italic="False" OnDataBound="GrdV2_DataBound" Font-Size="Small" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="itemID" HeaderText="**" 
                    SortExpression="itemID" >
                <ItemStyle Font-Size="XX-Small" ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="CODPROD" HeaderText="CÓDIGO" 
                    SortExpression="CODPROD" ReadOnly="True" />
                <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRIÇÃO" 
                    SortExpression="DESCRPROD" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
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
                        <asp:TextBox ID="TxtB2" runat="server" Height="20px" 
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
                    <td class="auto-style33" colspan="4">
                        <asp:Label ID="Lbl11" runat="server" CssClass="auto-style11" Font-Bold="False" Font-Italic="False" ForeColor="#006600" style="text-align: right" Width="630px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32" colspan="4">
                        <strong>
                        <asp:Button ID="Btt2" runat="server" CssClass="auto-style12" Font-Bold="True" Font-Size="X-Large" Height="47px" Text="Sair" Width="130px" PostBackUrl="~/Cliente/Menu4.aspx" />
                        </strong>
                    <asp:Button ID="Butt1" runat="server" Font-Bold="True" Font-Size="X-Large" Height="47px" 
                            style="background-color: #FFFFFF; color: #61AC00;" Text="Gravar" 
                        Width="130px" onclick="Butt1_Click" />
                        <asp:Button ID="Butt2" runat="server" Font-Size="Large" 
                            ForeColor="White" Height="47px" 
                            style="font-weight: 700; background-color: #FFFFFF; color: #61AC00;" Text="Pedido" 
                            Width="150px" PostBackUrl="~/Paginas/Relatorio.aspx" Visible="False" BackColor="#009933" OnClick="Butt2_Click" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32" colspan="4">
        <asp:GridView ID="GrdV3" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource6" Width="1000px" 
            
                   
        style="font-family: Verdana; font-size: large; color: #5F8F4C; background-color: #FFFFFF;" 
        Height="16px" GridLines="None" onload="GrdV3_Load" 
        onrowupdated="GrdV3_RowUpdated" onrowdatabound="GrdV3_RowDataBound" 
        CellPadding="4" 
        onselectedindexchanged="GrdV3_SelectedIndexChanged" Font-Italic="False" OnDataBound="GrdV3_DataBound" Font-Size="Small" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="itemID" HeaderText="**" 
                    SortExpression="itemID" >
                <ItemStyle Font-Size="XX-Small" ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="CODPROD" HeaderText="CÓDIGO" 
                    SortExpression="CODPROD" ReadOnly="True" />
                <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRIÇÃO" 
                    SortExpression="DESCRPROD" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="QTDE" HeaderText="QTDE DO PEDIDO" 
                    SortExpression="QTDE" >
                <HeaderStyle HorizontalAlign="Right" />
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="QTDE SOLICITADA" SortExpression="QTDE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("QTDE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="TxtB3" runat="server" Height="22px" 
                            ontextchanged="TxtB2_TextChanged" Text=' ' Width="91px"></asp:TextBox>
                    </ItemTemplate>
                    <ControlStyle Font-Size="X-Large" ForeColor="#009933" />
                    <HeaderStyle HorizontalAlign="Right" />
                    <ItemStyle Font-Size="Large" ForeColor="#009933" HorizontalAlign="Right" />
                </asp:TemplateField>
                <asp:BoundField DataField="PADRAO1" HeaderText="VLR.UNITÁRIO" SortExpression="PADRAO1" DataFormatString="{0:n}" ShowHeader="False">
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
                    <td class="auto-style33" colspan="4" align="left">
                        <asp:Label ID="Lbl12" runat="server" ForeColor="#006600" style="text-align: right; font-size: x-large; font-weight: 700; margin-bottom: 0px" Width="630px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32" colspan="4">
                        <strong>
                        <asp:Button ID="Btt3" runat="server" CssClass="auto-style12" Font-Bold="True" Font-Size="X-Large" Height="47px" Text="Sair" Width="130px" PostBackUrl="~/Cliente/Menu4.aspx" />
                    <asp:Button ID="Butt3" runat="server" Font-Bold="True" Font-Size="X-Large" Height="47px" 
                            style="background-color: #FFFFFF; color: #61AC00;" Text="Gravar" 
                        Width="130px" onclick="Butt3_Click" />
                        <asp:Button ID="Butt4" runat="server" Font-Size="Large" 
                            ForeColor="White" Height="47px" 
                            style="font-weight: 700; background-color: #FFFFFF; color: #61AC00;" Text="Pedido" 
                            Width="150px" PostBackUrl="~/Paginas/Relatorio.aspx" Visible="False" BackColor="#009933" OnClick="Butt2_Click" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32" colspan="4" align="left">
                        <asp:Label ID="Label11" runat="server" Text="Dias para Entrega:" style="text-decoration: underline; font-weight: 700; font-size: large;"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32" colspan="4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Vertical" Height="115px" Width="385px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnLoad="GridView1_Load">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="CODPARC" HeaderText="CODPARC" SortExpression="CODPARC" Visible="False" />
                                <asp:BoundField DataField="DIASEM" HeaderText="Dias Entrega" SortExpression="DIASEM" />
                                <asp:BoundField DataField="LIMDIA" HeaderText="Dias Limite" SortExpression="LIMDIA" />
                                <asp:CheckBoxField DataField="ATIVO" HeaderText="ATIVO" SortExpression="ATIVO" Visible="False" />
                                <asp:BoundField DataField="LIMHORA" HeaderText="H.Limite" SortExpression="LIMHORA">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="style11" colspan="4">
                        <div>
                        </div>
        <asp:GridView ID="Grid4" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource4" onload="Grid4_Load" OnSelectedIndexChanged="Grid4_SelectedIndexChanged" Visible="False">
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
                <asp:BoundField DataField="NOMEPARC" HeaderText="NOMEPARC" SortExpression="NOMEPARC" />
                <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" />
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
                <br />
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT itemID, CODPROD, DESCRPROD, QTDE, CGC_CPF, STATUS, PADRAO1, TOTAL FROM VLISTPRO1 WHERE (pedidoID IS NULL) AND (CGC_CPF = @CGC_CPF) ORDER BY itemID">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
    <div style="background-color: #FFFFFF" class="auto-style1">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            
            
            
                        
                        
                        
                        SelectCommand="SELECT DISTINCT itemID, CODPROD, DESCRPROD, QTDE, CGC_CPF, STATUS, PADRAO, TOTAL FROM VLISTPRO WHERE (pedidoID IS NULL) AND (CGC_CPF = @CGC_CPF) ORDER BY itemID">
            <SelectParameters>
                <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            
                        SelectCommand="SELECT DISTINCT ENTREGA.DTENTREGA, ENTREGA.CGC_CPF, TabProg.ATIVO, TabProg.LIMDIA, TabProg.LIMHORA, ENTREGA.DIASEM, TabProg.DIA, TGFPAR.NOMEPARC, TGFPAR.UF FROM ENTREGA INNER JOIN TGFPAR ON ENTREGA.CGC_CPF = TGFPAR.CGC_CPF INNER JOIN TabProg ON TGFPAR.CODPARC = TabProg.CODPARC AND ENTREGA.DIASEM = TabProg.DIASEM WHERE (ENTREGA.CGC_CPF = @CGC_CPF) AND (TabProg.ATIVO = 1) ORDER BY ENTREGA.DTENTREGA">
            <SelectParameters>
                <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
                        
                        
                        
                        
                        
            
                        SelectCommand="SELECT DISTINCT DTENTREGA, ATIVO, CGC_CPF FROM PedEntrega WHERE (CGC_CPF = @CGC_CPF) AND (ATIVO = 'True') AND (DTENTREGA NOT IN ('25/12/2025', '01/01/2026')) ORDER BY DTENTREGA">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
                        
                        
                        
        
            
                        SelectCommand="SELECT DISTINCT NOMEPARC, CGC_CPF, EMAIL, CODPARC, UF FROM TGFPAR WHERE (CGC_CPF = @CGC_CPF)" ProviderName="System.Data.SqlClient">
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
