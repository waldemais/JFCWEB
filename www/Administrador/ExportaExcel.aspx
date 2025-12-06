<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExportaExcel.aspx.cs" Inherits="JFCWEB.Administrador.ExportaExcel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exportar Pedidos</title>
    <style type="text/css">
        .style2
        {
            font-family: Verdana;
        }
        .style3
        {
            color: #000066;
        }
        .style4
        {
            width: 367px;
            color: #009900;
            text-align: center;
            height: 36px;
        }
        .style5
        {
            width: 266px;
            color: #009933;
            text-align: center;
            height: 36px;
        }
        .style7
        {
            width: 379px;
            color: #009933;
            text-align: right;
            height: 36px;
        }
        .style10
        {
            width: 379px;
            height: 157px;
        }
        .style11
        {
            width: 266px;
            text-align: center;
            height: 157px;
        }
        .style12
        {
            width: 367px;
            text-align: center;
            height: 157px;
        }
        .style13
        {
            width: 379px;
            text-align: center;
        }
        .auto-style3 {
            width: 279px;
            height: 157px;
        }
        .auto-style4 {
            width: 279px;
            text-align: center;
        }
        .auto-style5 {
            width: 130px;
            height: 157px;
        }
        .auto-style8 {
            width: 240px;
            height: 157px;
        }
        .auto-style10 {
            color: #006600;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            text-align: left;
            width: 474px;
        }
        .auto-style13 {
            text-align: justify;
        }
        .auto-style14 {
            height: 33px;
            text-align: center;
        }
        .auto-style15 {
            color: #009933;
            font-weight: bold;
            background-color: #CCCCCC;
        }
        .auto-style16 {
            color: #009933;
            font-size: small;
        }
        .auto-style17 {
            color: #003366;
            font-size: large;
            text-decoration: underline;
        }
        .auto-style18 {
            width: 794px;
        }
        .auto-style19 {
            width: 797px;
        }
        .auto-style20 {
            width: 800px;
        }
        .auto-style21 {
            width: 801px;
        }
        .auto-style22 {
            text-align: left;
            width: 344px;
            height: 40px;
        }
        .auto-style23 {
            text-align: center;
            height: 40px;
        }
        .auto-style24 {
            width: 535px;
        }
        .auto-style26 {
            width: 535px;
            text-align: center;
            height: 40px;
        }
        .auto-style27 {
            text-align: center;
            height: 40px;
            width: 254px;
        }
        .auto-style28 {
            width: 254px;
        }
        .auto-style29 {
            margin-right: 0px;
        }
        .auto-style30 {
            font-size: small;
        }
        .auto-style31 {
            width: 344px;
        }
        .auto-style32 {
            width: 16px;
        }
        .auto-style33 {
            height: 46px;
        }
        .auto-style34 {
            width: 16px;
            height: 46px;
        }
        .auto-style35 {
            height: 50px;
        }
        .auto-style36 {
            width: 16px;
            height: 50px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style2" style="text-align: center">
    
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style22">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/logojfc.png" Width="60px" style="text-align: left" />
                    </td>
                    <td class="auto-style26">
                        <asp:Label ID="Label5" runat="server" style="font-size: x-large; color: #009231; font-weight: 700" Text="Burger King"></asp:Label>
                    </td>
                    <td class="auto-style27">
                    </td>
                    <td class="auto-style23">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Right" 
                ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="30px" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td>
                        <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style29" ImageAlign="Right" ImageUrl="~/Imagem/Voltar.png" OnClientClick="JavaScript:window.history.back(1); return false" Width="30px" />
                    </td>
                </tr>
            </table>
            <hr />
        </div>
        <h2 class="style3">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style14">
                        </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label7" runat="server" Text="Planilhas para o SAP"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        </td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <strong>
                <asp:Button ID="btnExcel" runat="server" onclick="btnExcel_Click" 
                        Text="Pedidos RJ-MG" 
                        
                        style="color: #009933; font-weight: 700; font-family: Verdana; background-color: #CCCCCC" 
                        Height="27px" Width="150px" Font-Bold="False" />
                        <asp:Button ID="btnExcel1" runat="server" CssClass="auto-style15" Font-Bold="True" Height="27px" OnClick="btnExcel1_Click" Text="Pedidos SP" Width="150px" />
                        <asp:Button ID="btnExcel3" runat="server" BorderColor="#009933" Font-Bold="True" ForeColor="#009933" Height="27px" OnClick="btnExcel3_Click" Text="Pedidos PR" Width="181px" style="background-color: #CCCCCC" />
                        </strong>
                    </td>
                    <td class="auto-style32">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style33">
                        <asp:Button ID="btnExcel2" runat="server" Font-Bold="False" Text=" SAP RJ &amp; Minas" Height="27px" OnClick="btnExcel2_Click" Width="150px" style="color: #003366; font-weight: 700; background-color: #999999" />
                        <asp:Button ID="btnExcel4" runat="server" Font-Bold="False" Height="27px" OnClick="btnExcel4_Click" style="color: #003366; font-weight: 700; background-color: #999999" Text="SAP Sao Paulo" Width="150px" />
                        <asp:Button ID="BtnExcel5" runat="server" Height="27px" OnClick="BtnExcel5_Click" style="color: #003366; font-weight: 700; background-color: #999999" Text="SAP Paraná" Width="150px" />
                    </td>
                    <td class="auto-style34"></td>
                </tr>
                <tr>
                    <td class="auto-style35"></td>
                    <td class="auto-style35">
                    <asp:Button ID="BtnPrevia" runat="server" Height="27px" 
                        onclick="BtnPrevia_Click" 
                        style="color: #003300; font-weight: 700; font-family: Verdana; background-color: #999999; text-align: center;" 
                        Text="Prévia p/ Fábrica" Width="150px" />
                    </td>
                    <td class="auto-style36"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" 
                    ForeColor="Black" Height="250px" Width="330px" CaptionAlign="Top" 
                    FirstDayOfWeek="Sunday" style="text-align: center" 
                    onselectionchanged="Calendar1_SelectionChanged" BorderStyle="Solid" CellSpacing="1" NextPrevFormat="ShortMonth">
                    <DayHeaderStyle ForeColor="#333333" Height="8pt" Font-Bold="True" Font-Size="8pt" />
                    <DayStyle BackColor="#CCCCCC" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" Font-Bold="True" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="#333399" 
                        Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" BorderStyle="Solid" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                </asp:Calendar>
                <strong>
                <asp:Label ID="Lbel01" runat="server" 
                    style="font-family: Arial, Helvetica, sans-serif; " CssClass="auto-style17" Font-Size="X-Large"></asp:Label>
                </strong>
                        <br />
                    </td>
                    <td class="auto-style32">&nbsp;</td>
                </tr>
            </table>
        </h2>
    
    </div>
    <table style="width:100%;">
        <tr>
            <td class="auto-style5" align="char">
                <br />
                <span class="auto-style10"><strong><br />
                <br />
                </strong></span>
                <br />
            </td>
            <td class="auto-style8" align="char">
                <div class="auto-style12">
                    <strong>
                <asp:Label ID="Lbel2" runat="server" 
                    style="color: #009933; font-family: Arial, Helvetica, sans-serif; " CssClass="auto-style11" Visible="False" Font-Size="X-Small">Prévia de Total de Pedidos</asp:Label>
                    </strong>
                    <br />
                </div>
                <div class="auto-style13">
                <asp:GridView ID="Gprev" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource2" style="color: #009933" Width="500px" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="X-Small">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="CODPROD" HeaderText="CÓDIGO" 
                            SortExpression="CODPROD" />
                        <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRIÇÃO" 
                            SortExpression="DESCRPROD" >
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Expr1" HeaderText="TOTAL" ReadOnly="True" 
                            SortExpression="Expr1" >
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <div class="auto-style21">
                    <hr />
                </div>
                <strong>
                <asp:Label ID="Label1" runat="server" ForeColor="#1C5E55" Text="PEDIDOS RIO DE JANEIRO" Visible="False" CssClass="auto-style16" Font-Size="X-Small"></asp:Label>
                </strong>
                <asp:GridView ID="dgv" runat="server" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" 
                    onpageindexchanging="dgv_PageIndexChanging" CaptionAlign="Top" 
                    Width="800px" Font-Size="X-Small">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="pedidoID" HeaderText="Nº Ped." 
                            SortExpression="pedidoID" />
                        <asp:BoundField DataField="DTENTREGA" 
                            HeaderText="Dt.Entrega" SortExpression="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="CODPARC" HeaderText="Cliente" SortExpression="CODPARC" />
                        <asp:BoundField DataField="NOMEPARC" HeaderText="Nome" 
                            SortExpression="NOMEPARC" />
                        <asp:BoundField DataField="CODPROD" HeaderText="Código" 
                            SortExpression="CODPROD" />
                        <asp:BoundField DataField="DESCRPROD" HeaderText="Descricao" 
                            SortExpression="DESCRPROD" >
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="QTDE" HeaderText="Qtde" SortExpression="QTDE" DataFormatString="{0:n}" />
                        <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" />
                        <asp:BoundField DataField="ROTA" HeaderText="Rota" SortExpression="ROTA" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <div class="auto-style18">
                    <hr />
                </div>
                <br />
                <strong>
                <asp:Label ID="Label2" runat="server" ForeColor="#4A3C8C" Text="PEDIDOS SÃO PAULO" Visible="False" CssClass="auto-style11" Font-Size="X-Small"></asp:Label>
                </strong>
                <br />
                <asp:GridView ID="dgv1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource3" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Font-Size="X-Small" Width="800px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="pedidoID" HeaderText="Nº Ped" SortExpression="pedidoID" />
                        <asp:BoundField DataField="DTENTREGA" HeaderText="Dt.Entrega" SortExpression="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="CODPARC" HeaderText="Cliente" SortExpression="CODPARC" />
                        <asp:BoundField DataField="NOMEPARC" HeaderText="Nome" SortExpression="NOMEPARC" />
                        <asp:BoundField DataField="CODPROD" HeaderText="Código" SortExpression="CODPROD" />
                        <asp:BoundField DataField="DESCRPROD" HeaderText="Descrição" SortExpression="DESCRPROD" >
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="QTDE" HeaderText="Qtde" SortExpression="QTDE" />
                        <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" />
                        <asp:BoundField DataField="ROTA" HeaderText="Rota" SortExpression="ROTA" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                <div class="auto-style19">
                    <hr />
                </div>
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Small" ForeColor="#000084" Text="PEDIDOS PARANÁ"></asp:Label>
                <asp:GridView ID="dgv3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style30" DataSourceID="SqlDataSource5" Font-Size="X-Small" GridLines="Vertical" Width="800px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="pedidoID" HeaderText="Nº Ped" SortExpression="pedidoID" />
                        <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Dt.Entrega" SortExpression="DTENTREGA" />
                        <asp:BoundField DataField="CODPARC" HeaderText="Cliente" SortExpression="CODPARC" />
                        <asp:BoundField DataField="NOMEPARC" HeaderText="Nome" SortExpression="NOMEPARC" />
                        <asp:BoundField DataField="CODPROD" HeaderText="Código" SortExpression="CODPROD" />
                        <asp:BoundField DataField="DESCRPROD" HeaderText="Descrição" SortExpression="DESCRPROD" />
                        <asp:BoundField DataField="QTDE" HeaderText="Qtde" SortExpression="QTDE" />
                        <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" />
                        <asp:BoundField DataField="ROTA" HeaderText="Rota" SortExpression="ROTA" />
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
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT [pedidoID], [DTENTREGA], [CODPARC], [NOMEPARC], [CODPROD], [DESCRPROD], [QTDE], [UF], [ROTA] FROM [Exporta] WHERE ([DTENTREGA] = @DTENTREGA) AND (STATUS = 'ABERTO') AND (QTDE &lt;&gt; 0) AND (UF = 'PR') AND (NOMEPARC LIKE '%BK%') ORDER BY CODPARC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="DTENTREGA" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <hr style="width: 806px" />
                <br />
                <strong>
                <asp:Label ID="Label3" runat="server" Text="BK SAP RJ &amp; Minas" CssClass="auto-style16" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                </strong>
                <br />
                <asp:GridView ID="dgv2" runat="server" DataSourceID="SqlDataSource4" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="800px" CssClass="auto-style30" Font-Size="X-Small">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="DATA" SortExpression="DTENTREGA" />
                        <asp:BoundField DataField="pedidoID" HeaderText="Nº PED." SortExpression="pedidoID">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CODPARC" HeaderText="CLIENTE" SortExpression="CODPARC" />
                        <asp:BoundField DataField="CODPROSAP" HeaderText="CODIGO" SortExpression="CODPROSAP">
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRICAO" SortExpression="DESCRPROD" />
                        <asp:BoundField DataField="QTDE" DataFormatString="{0:n}" HeaderText="QTD" SortExpression="QTDE" />
                        <asp:BoundField DataField="PADRAO" DataFormatString="{0:n}" HeaderText="PRECO" SortExpression="PADRAO">
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <div class="auto-style20">
                    <hr />
                    <br />
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#0033CC" Text="BK SAP São Paulo"></asp:Label>
                </div>
                <asp:GridView ID="dgv4" runat="server" DataSourceID="SqlDataSource6" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="800px" CssClass="auto-style30" Font-Size="X-Small">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="DATA" SortExpression="DTENTREGA" />
                        <asp:BoundField DataField="pedidoID" HeaderText="Nº PED." SortExpression="pedidoID">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CODPARC" HeaderText="CLIENTE" SortExpression="CODPARC" />
                        <asp:BoundField DataField="CODPROSAP" HeaderText="CODIGO" SortExpression="CODPROSAP">
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRICAO" SortExpression="DESCRPROD" />
                        <asp:BoundField DataField="QTDE" DataFormatString="{0:n}" HeaderText="QTD" SortExpression="QTDE" />
                        <asp:BoundField DataField="PADRAO" DataFormatString="{0:n}" HeaderText="PRECO" SortExpression="PADRAO">
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <hr style="height: 0px; width: 800px" />
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#0033CC" Text="BK SAP Paraná"></asp:Label>
                <asp:GridView ID="dgv5" runat="server" DataSourceID="SqlDataSource7" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="800px" CssClass="auto-style30" Font-Size="X-Small">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="DATA" SortExpression="DTENTREGA" />
                        <asp:BoundField DataField="pedidoID" HeaderText="Nº PED." SortExpression="pedidoID">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CODPARC" HeaderText="CLIENTE" SortExpression="CODPARC" />
                        <asp:BoundField DataField="CODPROSAP" HeaderText="CODIGO" SortExpression="CODPROSAP">
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRICAO" SortExpression="DESCRPROD" />
                        <asp:BoundField DataField="QTDE" DataFormatString="{0:n}" HeaderText="QTD" SortExpression="QTDE" />
                        <asp:BoundField DataField="PADRAO" DataFormatString="{0:n}" HeaderText="PRECO" SortExpression="PADRAO">
                        <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <hr style="width: 800px" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
                    SelectCommand="SELECT CODPROD, DESCRPROD, SUM(QTDE) AS Expr1 FROM Previa WHERE (DTENTREGA = @DTENTREGA) AND (NOMEPARC LIKE '%BK%') GROUP BY CODPROD, DESCRPROD">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="DTENTREGA" 
                            PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            
            
            SelectCommand="SELECT DISTINCT pedidoID, DTENTREGA, NOMEPARC, CODPROD, DESCRPROD, QTDE, STATUS, CODPARC, UF, ROTA FROM Exporta WHERE (DTENTREGA = @DTENTREGA) AND (QTDE &lt;&gt; 0) AND (UF IN ('RJ', 'MG', 'NULL')) AND (NOMEPARC LIKE '%BK%') AND (STATUS = 'ABERTO') ORDER BY CODPARC">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="DTENTREGA" 
                    PropertyName="SelectedDate" DefaultValue="" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            
            
            SelectCommand="SELECT DISTINCT pedidoID, DTENTREGA, NOMEPARC, CODPROD, DESCRPROD, QTDE, STATUS, CODPARC, UF, ROTA FROM Exporta WHERE (DTENTREGA = @DTENTREGA) AND (STATUS = 'ABERTO') AND (QTDE &lt;&gt; 0) AND (UF = 'SP') AND (NOMEPARC LIKE '%BK%') ORDER BY CODPARC">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="DTENTREGA" 
                    PropertyName="SelectedDate" DefaultValue="" />
            </SelectParameters>
        </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <div>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DTENTREGA, pedidoID, CODPARSAP, CODPARC, CODPROSAP, DESCRPROD, QTDE, PADRAO, STATUS, NOMEPARC, UF FROM ExportaSap WHERE (DTENTREGA = @DTENTREGA) AND (QTDE &gt; 0) AND (STATUS &lt;&gt; 'CANCELADO') AND (NOMEPARC LIKE '%BK%') AND (UF IN ('RJ', 'MG')) ORDER BY CODPARC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="DTENTREGA" PropertyName="SelectedDate" />
                    </SelectParameters>
        </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DTENTREGA, pedidoID, CODPARSAP, CODPARC, CODPROSAP, DESCRPROD, QTDE, PADRAO, STATUS, NOMEPARC, UF FROM ExportaSap WHERE (DTENTREGA = @DTENTREGA) AND (QTDE &gt; 0) AND (STATUS &lt;&gt; 'CANCELADO') AND (NOMEPARC LIKE '%BK%') AND UF = 'SP' ORDER BY CODPARC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DTENTREGA, pedidoID, CODPARSAP, CODPARC, CODPROSAP, DESCRPROD, QTDE, PADRAO, STATUS, NOMEPARC, UF FROM ExportaSap WHERE (DTENTREGA = @DTENTREGA) AND (QTDE &gt; 0) AND (STATUS &lt;&gt; 'CANCELADO') AND (NOMEPARC LIKE '%BK%') AND UF = 'PR' ORDER BY CODPARC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
        <br />
    </div>
    </form>
    </body>
</html>
