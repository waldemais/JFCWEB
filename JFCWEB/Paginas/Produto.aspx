<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produto.aspx.cs" Inherits="JFCWEB.Produto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Produto</title>
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
            text-align: left;
            background-color: #FFFFFF;
            height: 37px;
        }
        .style2
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            color: #006600;
        }
        .style3
        {
            font-size: large;
            color: #006600;
        }
        .style4
        {
            color: #006600;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #FFFFFF">
    <div>
    
        <div class="style2">
            <asp:Image ID="Image1" runat="server" Height="54px" 
                ImageUrl="~/Imagem/logojfc.png" Width="67px" />
            <strong>
            <br />
            Cadastro de Produtos</strong></div>
    
        <h1 class="style1">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="Left" 
                ImageUrl="~/Imagem/icons8-menu-48.png" 
                PostBackUrl="~/Administrador/Menu1.aspx" />
            <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Right" 
                ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="48px" />
        </h1>
        <h1 class="style1">
            <asp:Button ID="Btnovo" runat="server" OnClick="Btnovo_Click" Text="Novo" Width="100px" />
        </h1>
    
    </div>
    <div>
        <br class="style4" />
        <span class="style3">Código do Produto:</span>
        <asp:TextBox ID="ttxPesquisa" runat="server" 
            style="font-size: large; color: #006600" Width="149px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" 
            style="font-size: large; color: #006600; font-weight: 700" Text="Filtrar" />
&nbsp;<br />
        <br />
        <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="CODPROSAP" HeaderText="Cód_SAP" SortExpression="CODPROSAP">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField ApplyFormatInEditMode="True" DataField="CODPROD" HeaderText="Cód_Antigo" ReadOnly="True" SortExpression="CODPROD">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="DESCRPROD" HeaderText="Descrição" SortExpression="DESCRPROD" />
                <asp:BoundField DataField="PADRAO" HeaderText="Vlr.Unit" SortExpression="PADRAO">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <br />
    </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
        
        SelectCommand="SELECT DISTINCT [CODPROSAP], [DESCRPROD], [PADRAO], [CODPROD] FROM [TGFPRO] WHERE ([CODPROSAP] = @CODPROSAP)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ttxPesquisa" Name="CODPROSAP" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
        <br />
        <asp:Panel ID="Panel1" runat="server" BorderColor="Gray" BorderStyle="Solid" Height="250px" Width="570px">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Código: " Width="75px"></asp:Label>
            <br />
            <asp:TextBox ID="TB1" runat="server" Width="100px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Descrição: " Width="75px"></asp:Label>
            <asp:TextBox ID="TB2" runat="server" Width="500px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Valor SAP: " Width="75px"></asp:Label>
            <br />
            <asp:TextBox ID="TB3" runat="server" Width="100px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Bt2" runat="server" OnClick="Bt2_Click" style="text-align: center" Text="Grava" Width="100px" />
            <asp:Button ID="Bt3" runat="server" Text="Cancela" Width="100px" />
            <br />
        </asp:Panel>
        <br />
    </form>
</body>
</html>
