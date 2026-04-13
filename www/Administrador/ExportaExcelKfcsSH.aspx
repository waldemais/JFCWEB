<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExportaExcelKfcsSH.aspx.cs" Inherits="JFCWEB.Administrador.ExportaExcelKfcsSH" %>

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
            color: #009933;
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
        .auto-style14 {
            height: 33px;
        }
        .auto-style15 {
            color: #009933;
            font-weight: bold;
        }
        .auto-style16 {
            color: #009933;
            font-size: large;
        }
        .auto-style17 {
            color: #009933;
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
            width: 355px;
            height: 52px;
        }
        .auto-style23 {
            text-align: center;
            height: 52px;
        }
        .auto-style24 {
            width: 645px;
        }
        .auto-style25 {
            width: 355px;
            text-align: left;
        }
        .auto-style26 {
            width: 645px;
            text-align: center;
            height: 52px;
        }
        .auto-style27 {
            text-align: right;
            height: 52px;
            width: 254px;
        }
        .auto-style28 {
            width: 254px;
        }
        .auto-style30 {
            font-size: small;
        }
        .auto-style31 {
            height: 33px;
            width: 106px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" title="Exporta kfc">
    <div class="style2" style="text-align: center">
    
        <h2 class="style3">
            &nbsp;</h2>
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style22">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/logojfc.png" Width="60px" style="text-align: left" />
                    </td>
                    <td class="auto-style26">
            <asp:Label ID="Label5" runat="server" Text="KFC/SH" ForeColor="#009532" style="font-size: x-large; font-weight: 700"></asp:Label>
                    </td>
                    <td class="auto-style27">
                        &nbsp;</td>
                    <td class="auto-style23">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25" align="center">
                        &nbsp;</td>
                    <td class="auto-style24">
            <asp:Label ID="Label6" runat="server" Text="Exportar para Excel" Font-Bold="True" ForeColor="#009532"></asp:Label>
                    </td>
                    <td class="auto-style28">&nbsp;</td>
                    <td>
            <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Right" 
                ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="30px" />
                    </td>
                </tr>
            </table>
            <hr />
        </div>
        <h2 class="style3">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style31">
                        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Administrador/Menu1.aspx" Text="Menu Principal" Width="150px" Height="27px" ToolTip="Menu" />
                        </td>
                    <td class="auto-style14">
                <asp:Button ID="btnExcel" runat="server" onclick="btnExcel_Click" 
                        Text="Pedidos RJ-MG" 
                        
                        style="color: #009933; font-weight: 700; font-family: Verdana; background-color: #FFFFFF" 
                        Height="27px" Width="150px" BorderStyle="Solid" Font-Bold="False" ToolTip="RJ" />
                        <strong>
                        <asp:Button ID="btnExcel1" runat="server" BorderStyle="Solid" CssClass="auto-style15" Font-Bold="True" Height="27px" OnClick="btnExcel1_Click" Text="Pedidos SP" Width="150px" ToolTip="SP" />
                        <asp:Button ID="btnExcel3" runat="server" BorderColor="#009933" BorderStyle="Solid" Font-Bold="True" ForeColor="#009933" Height="27px" OnClick="btnExcel3_Click" Text="Pedidos PR" Width="150px" ToolTip="PR" />
                        </strong>
                    </td>
                    <td class="auto-style14">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style31">
                        <asp:Button ID="Button2" runat="server" Height="27px" PostBackUrl="~/Administrador/AdmPedidos.aspx" Text="Pedidos" ToolTip="Pedido" Width="150px" />
                    </td>
                    <td class="auto-style14">
                        <strong>
                        <asp:Button ID="btnExcel2" runat="server" BorderStyle="Solid" Font-Bold="True" Text="Pedidos p/ SAP RJ" Height="27px" OnClick="btnExcel2_Click" Width="150px" CssClass="style3" />
                        <asp:Button ID="btnExcel4" runat="server" BorderStyle="Solid" Font-Bold="True" Text="Pedidos p/ SAP SP" Height="27px" OnClick="btnExcel4_Click" Width="150px" CssClass="style3" />
                        <asp:Button ID="btnExcel5" runat="server" BorderStyle="Solid" Font-Bold="True" Text="Pedidos p/ SAP PR" Height="27px" Width="150px" CssClass="style3" OnClick="btnExcel5_Click" />
                        </strong>
                    </td>
                    <td class="auto-style14">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style31">
                        <asp:Button ID="Button3" runat="server" Height="27px" PostBackUrl="~/Default.aspx" Text="Sair" Width="150px" />
                    </td>
                    <td class="auto-style14">
                    <asp:Button ID="BtnPrevia" runat="server" Height="27px" 
                        onclick="BtnPrevia_Click" 
                        style="color: #009933; font-weight: 700; font-family: Verdana; background-color: #FFFFFF; text-align: center;" 
                        Text="Prévia" Width="150px" BorderStyle="Solid" />
                    </td>
                    <td class="auto-style14">
                        &nbsp;</td>
                </tr>
                </table>
        </h2>
    
                <hr />
    
    </div>
    <table style="width:100%;">
        <tr>
            <td class="auto-style5" align="char">
                <span class="auto-style10"><strong>
                <asp:Label ID="Lbel01" runat="server" 
                    style="font-family: Arial, Helvetica, sans-serif; " CssClass="auto-style17" ForeColor="#666666" Font-Size="Medium"></asp:Label>
                </strong></span>
                <br />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="Black" Height="180px" Width="200px" CaptionAlign="Top" style="text-align: center" 
                    onselectionchanged="Calendar1_SelectionChanged" CellPadding="4" DayNameFormat="Shortest">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" 
                        Font-Bold="True" BorderColor="Black" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </td>
            <td class="auto-style8" align="char">
                <div class="auto-style12">
                    <asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="Qtde de lojas do dia"></asp:Label>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource8" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Size="Small" ForeColor="Black" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="DTENTREGA" HeaderText="DTentrega" SortExpression="DTENTREGA" DataFormatString="{0:dd/MM/yyyy}" />
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
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <div class="auto-style21">
                    <div>
                <hr />
                    </div>
                </div>
                <div>
                    <strong>
                    <br />
                <asp:Label ID="Lbel2" runat="server" 
                    style="color: #009933; font-family: Arial, Helvetica, sans-serif; " CssClass="auto-style11" Visible="False" Font-Size="X-Small" ForeColor="#666666">Prévia de Total de Pedidos </asp:Label>
                    </strong>
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
                </div>
                <div>
                </div>
                <strong>
                <asp:Label ID="Label1" runat="server" ForeColor="#666666" Text="PEDIDOS RJ" Visible="False" CssClass="auto-style16" Font-Size="X-Small"></asp:Label>
                </strong>
                <asp:GridView ID="dgv" runat="server" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" 
                    ForeColor="Black" GridLines="Vertical" 
                    onpageindexchanging="dgv_PageIndexChanging" CaptionAlign="Top" 
                    Width="800px" Font-Size="X-Small" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="dgv_SelectedIndexChanged" OnSelectedIndexChanging="dgv_SelectedIndexChanging">
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
                    <hr />
                </div>
                <br />
                <strong>
                <asp:Label ID="Label2" runat="server" ForeColor="#666666" Text="PEDIDOS SÃO PAULO" Visible="False" CssClass="auto-style11" Font-Size="X-Small"></asp:Label>
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
                    <hr />
                </div>
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Small" ForeColor="#666666" Text="PEDIDOS PARANÁ"></asp:Label>
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
                <strong>
                <asp:Label ID="Label3" runat="server" Text="EXPORTAÇÃO PARA O SAP RJ" CssClass="auto-style16" Font-Size="X-Small" ForeColor="#666666"></asp:Label>
                &nbsp;
                </strong>
                <br />
                <asp:GridView ID="dgv2" runat="server" DataSourceID="SqlDataSource4" AutoGenerateColumns="False" Width="800px" CssClass="auto-style30" Font-Size="X-Small" OnPageIndexChanging="dgv2_PageIndexChanging" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
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
                    <hr />
                </div>
                <div>

                    <div>
                    </div>

                <strong>
                <asp:Label ID="Label7" runat="server" Text="EXPORTAÇÃO PARA O SAP SP" CssClass="auto-style16" Font-Size="X-Small" ForeColor="#666666"></asp:Label>
                </strong>

                </div>
                <asp:GridView ID="dgv4" runat="server" DataSourceID="SqlDataSource6" AutoGenerateColumns="False" Width="800px" CssClass="auto-style30" Font-Size="X-Small" OnPageIndexChanging="dgv4_PageIndexChanging" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="dgv4_SelectedIndexChanged">
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
                <div>

                <strong>
                <asp:Label ID="Label8" runat="server" Text="EXPORTAÇÃO PARA O SAP PR" CssClass="auto-style16" Font-Size="X-Small" ForeColor="#666666"></asp:Label>
                </strong>

                </div>
                <asp:GridView ID="dgv5" runat="server" DataSourceID="SqlDataSource7" AutoGenerateColumns="False" Width="800px" CssClass="auto-style30" Font-Size="X-Small" OnPageIndexChanging="dgv5_PageIndexChanging" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="dgv5_SelectedIndexChanged">
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
                    SelectCommand="SELECT CODPROD, DESCRPROD, SUM(QTDE) AS Expr1 FROM Previa WHERE (DTENTREGA = @DTENTREGA) AND (Grupo = '05') GROUP BY CODPROD, DESCRPROD" ProviderName="System.Data.SqlClient">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="DTENTREGA" 
                            PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            
            
            SelectCommand="SELECT DISTINCT pedidoID, DTENTREGA, NOMEPARC, CODPROD, DESCRPROD, QTDE, STATUS, CODPARC, UF, ROTA, Grupo FROM Exporta WHERE (DTENTREGA = @DTENTREGA) AND (QTDE &lt;&gt; 0) AND (UF IN ('RJ', 'MG', 'NULL')) AND (STATUS = 'ABERTO') AND (Grupo = '05')" ProviderName="System.Data.SqlClient">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="DTENTREGA" 
                    PropertyName="SelectedDate" DefaultValue="" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
            
            
            SelectCommand="SELECT DISTINCT pedidoID, DTENTREGA, NOMEPARC, CODPROD, DESCRPROD, QTDE, STATUS, CODPARC, UF, ROTA, Grupo FROM Exporta WHERE (DTENTREGA = @DTENTREGA) AND (STATUS = 'ABERTO') AND (QTDE &lt;&gt; 0) AND (UF = 'SP') AND (ROTA = '28') AND (Grupo = '05') ORDER BY CODPARC" ProviderName="System.Data.SqlClient">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="DTENTREGA" 
                    PropertyName="SelectedDate" DefaultValue="" />
            </SelectParameters>
        </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <div>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DTENTREGA, pedidoID, CODPARSAP, CODPARC, CODPROSAP, DESCRPROD, QTDE, PADRAO, STATUS, NOMEPARC, Grupo, UF FROM ExportaSap WHERE (DTENTREGA = @DTENTREGA) AND (QTDE &gt; 0) AND (STATUS &lt;&gt; 'CANCELADO') AND (Grupo = '05') AND (UF = 'RJ') ORDER BY CODPARC" ProviderName="System.Data.SqlClient">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="DTENTREGA" PropertyName="SelectedDate" />
                    </SelectParameters>
        </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" SelectCommand="SELECT DISTINCT pedidoID, DTENTREGA, CODPARC, NOMEPARC, CODPROD, DESCRPROD, QTDE, UF, ROTA, Grupo FROM Exporta WHERE (DTENTREGA = @DTENTREGA) AND (STATUS = 'ABERTO') AND (QTDE &lt;&gt; 0) AND (UF = 'PR') AND (Grupo = '05') ORDER BY CODPARC" ProviderName="System.Data.SqlClient">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="DTENTREGA" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;Encrypt=False" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DTENTREGA, pedidoID, CODPARSAP, CODPARC, CODPROSAP, DESCRPROD, QTDE, PADRAO, STATUS, NOMEPARC, Grupo, UF FROM ExportaSap WHERE (DTENTREGA = @DTENTREGA) AND (QTDE &gt; 0) AND (STATUS &lt;&gt; 'CANCELADO') AND (Grupo = '05') AND (UF = 'SP') ORDER BY CODPARC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;Encrypt=False" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DTENTREGA, pedidoID, CODPARSAP, CODPARC, CODPROSAP, DESCRPROD, QTDE, PADRAO, STATUS, NOMEPARC, Grupo, UF FROM ExportaSap WHERE (DTENTREGA = @DTENTREGA) AND (QTDE &gt; 0) AND (STATUS &lt;&gt; 'CANCELADO') AND (Grupo = '05') AND (UF = 'PR') ORDER BY CODPARC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;Encrypt=False" ProviderName="System.Data.SqlClient" SelectCommand="SELECT COUNT(*) AS Expr1, DTENTREGA, UF, STATUS FROM ListaPedidos GROUP BY DTENTREGA, UF, Grupo, STATUS HAVING (Grupo = '05') AND (DTENTREGA = @DTENTREGA) AND (STATUS IN ('ABERTO', 'FINALIZADO'))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Calendar1" Name="DTENTREGA" PropertyName="SelectedDate" />
                            </SelectParameters>
                        </asp:SqlDataSource>
        <br />
    </div>
    </form>
    </body>
</html>
