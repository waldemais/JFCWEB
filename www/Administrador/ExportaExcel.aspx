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
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            text-align: left;
            width: 474px;
        }
        .auto-style13 {
            text-align: left;
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
        .auto-style30 {
            font-size: small;
        }
        .auto-style31 {
            width: 344px;
        }
        .auto-style38 {
            height: 46px;
            width: 768px;
        }
        .auto-style39 {
            height: 50px;
            width: 768px;
        }
        .auto-style40 {
            width: 768px;
        }
        .auto-style41 {
            width: 160px;
        }
        .auto-style42 {
            width: 446px;
        }
        .auto-style44 {
            height: 46px;
            width: 159px;
        }
        .auto-style45 {
            height: 50px;
            width: 159px;
        }
        .auto-style46 {
            width: 159px;
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
                    <td class="auto-style24">
                        <asp:Label ID="Label7" runat="server" Text="Exporta para Excel"></asp:Label>
                    </td>
                    <td class="auto-style28">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <hr />
        </div>
        <h2 class="style3">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style46">
                        <asp:Button ID="Button1" runat="server" Height="27px" PostBackUrl="~/Administrador/Menu1.aspx" Text="Menu Principal" Width="150px" />
                    </td>
                    <td class="auto-style40">
                        <strong>
                <asp:Button ID="btnExcel" runat="server" onclick="btnExcel_Click" 
                        Text="Pedidos RJ-MG" 
                        
                        style="color: #009933; font-weight: 700; font-family: Verdana; background-color: #CCCCCC" 
                        Height="27px" Width="150px" Font-Bold="False" />
                        <asp:Button ID="btnExcel1" runat="server" CssClass="auto-style15" Font-Bold="True" Height="27px" OnClick="btnExcel1_Click" Text="Pedidos SP" Width="150px" />
                        <asp:Button ID="btnExcel3" runat="server" BorderColor="#009933" Font-Bold="True" ForeColor="#009933" Height="27px" OnClick="btnExcel3_Click" Text="Pedidos PR" Width="181px" style="background-color: #CCCCCC" />
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style44">
                        <asp:Button ID="Button2" runat="server" Height="27px" PostBackUrl="~/Administrador/AdmPedidos.aspx" Text="Pedidos" Width="150px" />
                    </td>
                    <td class="auto-style38">
                        <asp:Button ID="btnExcel2" runat="server" Font-Bold="False" Text=" SAP RJ &amp; Minas" Height="27px" OnClick="btnExcel2_Click" Width="150px" style="color: #003366; font-weight: 700; background-color: #999999" />
                        <asp:Button ID="btnExcel4" runat="server" Font-Bold="False" Height="27px" OnClick="btnExcel4_Click" style="color: #003366; font-weight: 700; background-color: #999999" Text="SAP Sao Paulo" Width="150px" />
                        <asp:Button ID="BtnExcel5" runat="server" Height="27px" OnClick="BtnExcel5_Click" style="color: #003366; font-weight: 700; background-color: #999999" Text="SAP Paraná" Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style45">
                        <asp:Button ID="Button3" runat="server" Height="27px" Text="Sair" Width="150px" />
                    </td>
                    <td class="auto-style39">
                    <asp:Button ID="BtnPrevia" runat="server" Height="27px" 
                        onclick="BtnPrevia_Click" 
                        style="color: #003300; font-weight: 700; font-family: Verdana; background-color: #999999; text-align: center;" 
                        Text="Prévia p/ Fábrica" Width="150px" />
                    </td>
                </tr>
                </table>
        </h2>
            <hr />
        <h2 class="style3">
            <p>
            </p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style41" style="text-align: center">
                        <strong>
                <asp:Label ID="Lbel01" runat="server" 
                    style="font-family: Arial, Helvetica, sans-serif; " CssClass="auto-style17" Font-Size="Medium"></asp:Label>
                </strong>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="Black" Height="180px" Width="200px" CaptionAlign="Top" 
                    FirstDayOfWeek="Sunday" 
                    onselectionchanged="Calendar1_SelectionChanged" CellPadding="4" DayNameFormat="Shortest" Font-Bold="False">
                    <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" 
                        Font-Bold="True" BorderColor="Black" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
                        <br />
                    </td>
                    <td class="auto-style42" style="text-align: left">
                        <asp:Label ID="Label9" runat="server" Font-Size="Small" style="text-align: left" Text="Qtde. lojas do dia" Width="201px"></asp:Label>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource8" Font-Size="Small" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Font-Bold="False">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Dtentrega" SortExpression="DTENTREGA" />
                                <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" />
                                <asp:BoundField DataField="STATUS" HeaderText="Status" SortExpression="STATUS" />
                                <asp:BoundField DataField="Expr1" HeaderText="Total" ReadOnly="True" SortExpression="Expr1" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </h2>
    
    </div>
    <table style="width:100%;">
        <tr>
            <td class="auto-style5" align="char">
                <div class="auto-style12">
                    <strong>
                <asp:Label ID="Lbel2" runat="server" 
                    style="color: #009933; font-family: Arial, Helvetica, sans-serif; " CssClass="auto-style11" Visible="False" Font-Size="X-Small">Prévia de Total de Pedidos</asp:Label>
                    </strong>
                </div>
                <asp:GridView ID="Gprev" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource2" style="color: #009933" Width="500px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Font-Size="X-Small" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
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
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </td>
            <td class="auto-style8" align="char">
                <div class="auto-style13">
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <div class="auto-style21">
                </div>
                <strong>
                <asp:Label ID="Label1" runat="server" ForeColor="#1C5E55" Text="PEDIDOS RIO DE JANEIRO" Visible="False" CssClass="auto-style16" Font-Size="X-Small"></asp:Label>
                </strong>
                <asp:GridView ID="dgv" runat="server" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" 
                    ForeColor="Black" GridLines="Vertical" 
                    onpageindexchanging="dgv_PageIndexChanging" CaptionAlign="Top" 
                    Width="800px" Font-Size="X-Small" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
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
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <div class="auto-style18">
                </div>
                <br />
                <strong>
                <asp:Label ID="Label2" runat="server" ForeColor="#4A3C8C" Text="PEDIDOS SÃO PAULO" Visible="False" CssClass="auto-style11" Font-Size="X-Small"></asp:Label>
                </strong>
                <br />
                <asp:GridView ID="dgv1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Font-Size="X-Small" Width="800px" ForeColor="Black">
                    <AlternatingRowStyle BackColor="White" />
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
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <div class="auto-style19">
                </div>
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Small" ForeColor="#000084" Text="PEDIDOS PARANÁ"></asp:Label>
                <asp:GridView ID="dgv3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style30" DataSourceID="SqlDataSource5" Font-Size="X-Small" GridLines="Vertical" Width="800px" ForeColor="Black">
                    <AlternatingRowStyle BackColor="White" />
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
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <br />
                <br />
                <strong>
                <asp:Label ID="Label3" runat="server" Text="BK SAP RJ &amp; Minas" CssClass="auto-style16" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                </strong>
                <br />
                <asp:GridView ID="dgv2" runat="server" DataSourceID="SqlDataSource4" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="800px" CssClass="auto-style30" Font-Size="X-Small" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
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
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <div class="auto-style20">
                    <br />
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#0033CC" Text="BK SAP São Paulo"></asp:Label>
                </div>
                <asp:GridView ID="dgv4" runat="server" DataSourceID="SqlDataSource6" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="800px" CssClass="auto-style30" Font-Size="X-Small" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
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
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#0033CC" Text="BK SAP Paraná"></asp:Label>
                <asp:GridView ID="dgv5" runat="server" DataSourceID="SqlDataSource7" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="800px" CssClass="auto-style30" Font-Size="X-Small" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
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
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
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
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT [pedidoID], [DTENTREGA], [CODPARC], [NOMEPARC], [CODPROD], [DESCRPROD], [QTDE], [UF], [ROTA] FROM [Exporta] WHERE ([DTENTREGA] = @DTENTREGA) AND (STATUS = 'ABERTO') AND (QTDE &lt;&gt; 0) AND (UF = 'PR') AND (NOMEPARC LIKE '%BK%') ORDER BY CODPARC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="DTENTREGA" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;Encrypt=False" ProviderName="System.Data.SqlClient" SelectCommand="SELECT COUNT(*) AS Expr1, DTENTREGA, UF, STATUS FROM ListaPedidos GROUP BY DTENTREGA, UF, Grupo, STATUS HAVING (Grupo = '01') AND (DTENTREGA = @DTENTREGA) AND (STATUS IN ('ABERTO', 'FINALIZADO'))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
        <br />
    </div>
    </form>
    </body>
</html>
