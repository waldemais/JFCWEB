<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tabproduto.aspx.cs" Inherits="JFCWEB.Tabproduto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Produtos&amp;Parceiros</title>
    <style type="text/css">
        #form1
        {
            background-color: #FFFFFF;
        }
        .style1
        {
            color: #FFFFFF;
            text-align: center;
        }
        .style2
        {
            text-align: left;
            color: #006600;
        }
        .style3
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            color: #009933;
        }
        .auto-style1 {
            color: #009933;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="Left" 
            ImageUrl="~/Imagem/icons8-menu-48.png" 
            PostBackUrl="~/Administrador/Menu1.aspx" />
    
        <strong style="text-align: center">
        <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Right" 
            ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="49px" />
        TABELA 
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/Logos _JFC.jpg" Height="80px" Width="90px" />
        DE PRODUTOS POR PARCEIRO <br />
        </strong>
        <div class="style2">
            <hr />
            <br />
            <span class="style3"><strong>Cadastro de Produtos por&nbsp; Parceiro</strong></span><hr />
            <br />
        </div>
    </div>
    <div>
        <asp:Label ID="LblProd" runat="server" Text="Parceiro.:" 
            style="font-weight: 700; color: #006600; font-size: large;"></asp:Label>
&nbsp;
        <asp:TextBox ID="TxtBxProd" runat="server" style="color: #006600"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="BttoProd" runat="server" Text="Pesquisar" 
            style="font-weight: 700; color: #009933; background-color: #FFFFFF;" 
            onclick="BttoProd_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <asp:Label ID="Lab0l2" runat="server" 
            style="font-size: large; color: #006600; font-weight: 700" Text="Produto.:"></asp:Label>
&nbsp;
        <asp:TextBox ID="TxtBxprod1" runat="server" style="color: #006600"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="color: #009933; font-weight: 700; background-color: #FFFFFF" 
            Text="Incluir" Width="80px" />
&nbsp;<strong><asp:Button ID="Butexc" runat="server" CssClass="auto-style1" Font-Bold="True" OnClick="Butexc_Click" Text="Excluir" Width="80px" />
        </strong><br />
        <div style="height: 10px">
            <hr style="height: -13px" />
            <br />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="259px" style="margin-top: 34px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" GridLines="None" style="color: #009933" CellPadding="2" ForeColor="Black" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="CODPROD" HeaderText="CODPROD" SortExpression="CODPROD" />
                    <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRPROD" SortExpression="DESCRPROD" />
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
            .<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
        </asp:Panel>
        <br />
&nbsp;
        <br />
        <br />
        <br />
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        
        
        
        
        
        
        
        
        
        SelectCommand="SELECT DISTINCT CODPROD, DESCRPROD FROM ItemParceiros WHERE (CODPARC = @CODPARC) ORDER BY DESCRPROD">
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtBxProd" Name="CODPARC" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
