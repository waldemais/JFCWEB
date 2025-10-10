<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="Rastreamento._Default" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="Stylesheet" href="Default.aspx" />
    <script src=jquery-3.5.0.js></script>
    <script src=bootstrap.min.js></script>   
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    
    style="background-image: none; background-repeat: no-repeat; background-attachment: inherit;">
    <div align="center">
        <table class="auto-style5">
            <tr>
                <td align="center">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logos _JFC.jpg" ImageAlign="Baseline" Width="142px" Height="99px" />
        &nbsp;<br />
        <asp:Label ID="Lbel1" runat="server" Text="Rastreabilidade de Produtos" 
            Font-Bold="True" Font-Names="Lucida Bright" Font-Size="X-Large" 
            ForeColor="#006600"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Nossos produtos são distribuidos por José Ferreira Campanha"></asp:Label>
                    <hr />
                </td>
            </tr>
            <tr>
                <td align="center" style="background-image: url('Images/5026563.jpg')">
                    <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Escolha a data que deseja rastrear:   "></asp:Label>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                    <br />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
        </table>
    </div>
    <div align="center" style="background-image: url('Images/5026563.jpg')">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
            DataSourceID="SqlDataSource1" GridLines="None" 
            AutoGenerateColumns="False" ForeColor="#333333" BorderStyle="Groove">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="codigo" HeaderText="codigo" SortExpression="codigo" 
                    Visible="False" />
                <asp:BoundField DataField="nome" HeaderText="Produtos" SortExpression="nome" HtmlEncode="False" >
                <ControlStyle Width="300px" />
                <ItemStyle Font-Size="Medium" />
                </asp:BoundField>
                <asp:BoundField DataField="matricula" HeaderText="matricula" 
                    SortExpression="matricula" Visible="False" />
                <asp:BoundField DataField="pontos" HeaderText="pontos" 
                    SortExpression="pontos" Visible="False" />
                <asp:TemplateField HeaderText="Rastrear">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/Lupa.gif" NavigateUrl='<%# Eval("pontos", "{0}") %>' Target="_blank" Text='<%# Eval("pontos") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
            SelectCommand="SELECT DISTINCT [codigo], [nome], [matricula], [pontos] FROM [Notas] WHERE ([matricula] = @matricula) ORDER BY [nome]">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" Name="matricula" PropertyName="SelectedDate" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
    </body>
</html>
