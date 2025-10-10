<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="Rastreamento._Default" uiCulture="pt-BR" Culture="pt-BR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rastreamento</title>
    <style type="text/css">
        .style1
        {
            color: #006600;
            font-size: larger;
            font-family: Verdana;
            height: 23px;
            text-align: center;
        }
        .style2
        {
            color: #006600;
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style3
        {
            width: 311px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-image: url('EDU1214.jpg'); background-repeat: no-repeat;">
    <div style="background-color: #00FF00">
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/logo.png" />
    
            <asp:Label ID="Label1" runat="server" 
                style="font-size: xx-large; color: #FFFFFF; font-weight: 700" 
                Text="Rastreabilidade de Produtos"></asp:Label>
    
    </div>
    <div style="height: 11px">
    </div>
    <div class="style1">
        <h2>
        <strong style="text-align: center">Selecione a data desejada</strong></h2>
    </div>
    <table align="center" frame="box">
        <tr>
            <td class="style3">
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
        BorderColor="Black" Font-Names="Verdana" 
        Font-Size="9pt" ForeColor="Black" Height="801px" NextPrevFormat="ShortMonth" 
        Width="836px" style="text-align: center" BorderStyle="Solid" CellSpacing="1">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
            Height="8pt" />
        <DayStyle BackColor="#CCCCCC" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="#006600" 
            Font-Bold="True" Font-Size="12pt" ForeColor="White" BorderStyle="Solid" 
            Height="12pt" />
        <TodayDayStyle BackColor="#999999" ForeColor="White" />
    </asp:Calendar>
            </td>
        </tr>
    </table>
    <div style="text-align: center; height: 24px;">
    </div>
    <div>
        <div class="style2" style="height: 27px; margin-top: 10px;" align="center">
            <asp:Label ID="Lbel2" runat="server" 
                style="font-family: Verdana; text-decoration: underline;" Font-Size="X-Large"></asp:Label>
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" HorizontalAlign="Center" 
            Font-Size="Larger" GridLines="Horizontal" 
            style="margin-top: 16px" BackColor="White" BorderColor="#336666" 
            BorderStyle="Double" BorderWidth="3px">
            <Columns>
                <asp:BoundField DataField="nome" HeaderText="Produto" 
                    SortExpression="nome" >
                <ItemStyle Font-Size="XX-Large" />
                </asp:BoundField>
                <asp:BoundField DataField="matricula" HeaderText="Data" 
                    SortExpression="matricula" DataFormatString="{0:dd/MMMM/yyyy}" 
                    Visible="False" />
                <asp:BoundField DataField="pontos" HeaderText="Url" SortExpression="pontos" 
                    Visible="False" />
                <asp:HyperLinkField DataNavigateUrlFields="pontos" 
                    DataNavigateUrlFormatString="{0}" DataTextField="pontos" HeaderText="detalhes" 
                    Target="_blank" Text="Detalhes" >
                <ControlStyle Font-Size="XX-Large" />
                </asp:HyperLinkField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
            
            SelectCommand="SELECT DISTINCT codigo, nome, matricula, pontos FROM Notas WHERE (matricula = @matricula) ORDER BY nome">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" Name="matricula" 
                    PropertyName="SelectedDate" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
