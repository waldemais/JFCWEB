<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parceiro.aspx.cs" Inherits="JFCWEB.Parceiro" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Parceiro</title>
    <style type="text/css">
        .style1
        {
            color: #000099;
            width: 1055px;
            text-align: center;
            margin-top: 9px;
            background-color: #FFFFFF;
            height: 135px;
        }
        .style2
        {
            width: 47px;
        }
        .style3
        {
            width: 354px;
        }
        .style5
        {
            color: #003300;
            width: 1055px;
            text-align: left;
            margin-top: 9px;
            background-color: #FFFFFF;
            font-size: x-large;
        }
        .style6
        {
            height: 30px;
        }
        .style8
        {
            color: #006600;
        }
        .style13
        {
            width: 263px;
        }
        .auto-style1 {
            width: 263px;
            height: 80px;
        }
        .auto-style2 {
            width: 832px;
            height: 392px;
        }
        .auto-style3 {
            width: 227px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 227px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" method="get">
    <div>    
        <h1 class="style1" title="Parceiro">
            <table style="width:100%;">
                <tr>
                    <td style="text-align: left">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/Imagem/icons8-menu-48.png" 
                            PostBackUrl="~/Administrador/Menu1.aspx" />
                    </td>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/Logos _JFC.jpg" Height="108px" Width="182px" />
                    </td>
                    <td style="text-align: right">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="62px" 
                            ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="55px" />
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                    </td>
                    <td class="style6">
                        <p class="style5" title="Parceiro">
                            <strong>&nbsp;<span class="style8">Cadastro de Parceiros</span></strong></p>
                    </td>
                    <td class="style6">
                    </td>
                </tr>
                </table>
        </h1>
        </div>
        <div class="auto-style2">
            <table style="width:92%;">
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label1" runat="server" Text="Código do Parceiro: " 
                            style="color: #009933; font-size: large"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                            Width="95px" onload="TextBox1_Load"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="PESQUISAR" 
                            style="color: #006600; font-weight: 700; background-color: #FFFFFF" 
                            Width="99px" />
                    &nbsp;
                        <asp:Button ID="Btton02" runat="server" onclick="Btton02_Click" Text="Novo Parceiro" 
                            Width="106px" 
                            style="color: #006600; font-weight: 700; background-color: #FFFFFF" />
                    &nbsp;
                        <asp:Label ID="Lbel04" runat="server" style="color: #006600"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style3" height="1">
                        <asp:Panel ID="Pnel01" runat="server" BorderStyle="Groove" Height="335px" 
                            style="text-align: left" Width="456px" BorderColor="#33CC33" 
                            Font-Bold="False">
                            <div class="style8">
                                Novo Parceiro<br />
                                <br />
                                <asp:Label ID="Lbel01" runat="server" ForeColor="#006600" Text="Código"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox2" runat="server" Width="191px"></asp:TextBox>
                                <br />
                                <asp:Label ID="Lbel02" runat="server" style="color: #006600" Text="Cnpj/Cpf"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox3" runat="server" 
                                    Width="203px"></asp:TextBox>
                                <br />
                                <asp:Label ID="Lbel03" runat="server" style="color: #006600" Text="Descrição"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox4" runat="server" Width="392px"></asp:TextBox>
                                <br />
                                Email<br />
                                <asp:TextBox ID="TextBox5" runat="server" Width="392px"></asp:TextBox>
                                <table style="width:100%;">
                                    <tr>
                                        <td>UF</td>
                                        <td class="auto-style3">Rota</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="TextBox6" runat="server" Width="52px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style5">
                                            <asp:TextBox ID="TextBox7" runat="server" Width="57px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style4"></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style3">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <asp:Button ID="Button02" runat="server" onclick="Button02_Click" style="color: #006600; font-weight: 700; background-color: #FFFFFF" Text="Confirma" />
                                        </td>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button03" runat="server" style="color: #006600; font-weight: 700" Text="Cancela" />
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                            </div>
                            <table style="width: 100%;">
                                <tr>
                                    <td style="text-align: left" class="auto-style1">
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style13" style="text-align: left">
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource1" Width="400px" Height="30px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:BoundField DataField="CODPARC" HeaderText="Cód.Antigo" 
                                    SortExpression="CODPARC" />
                                <asp:BoundField DataField="CODPARSAP" HeaderText="Cód.SAP" SortExpression="CODPARSAP" />
                                <asp:BoundField DataField="CGC_CPF" HeaderText="Cgc/Cpf" 
                                    SortExpression="CGC_CPF" />
                                <asp:BoundField DataField="NOMEPARC" HeaderText="Descrição" 
                                    SortExpression="NOMEPARC" />
                                <asp:BoundField DataField="EMAIL" HeaderText="Email" SortExpression="EMAIL" />
                                <asp:BoundField DataField="UF" DataFormatString="{0:@}" HeaderText="UF" SortExpression="UF" />
                                <asp:BoundField DataField="ROTA" HeaderText="ROTA" SortExpression="ROTA" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource2" GridLines="None" ShowHeader="False">
                            <Columns>
                                <asp:BoundField DataField="CODPROD" HeaderText="CODPROD" 
                                    SortExpression="CODPROD" />
                                <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRPROD" 
                                    SortExpression="DESCRPROD" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
                
                
                SelectCommand="SELECT DISTINCT [CODPROD], [DESCRPROD] FROM [ItemParceiros] WHERE ([CODPARC] = @CODPARC) ORDER BY [CODPROD]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="CODPARC" PropertyName="Text" 
                        Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        DeleteCommand="DELETE FROM TGFPAR WHERE (CODPARC = @CODPARC)" 
        InsertCommand="INSERT INTO TGFPAR(CODPARC, NOMEPARC, CGC_CPF, CODPARSAP) VALUES (@CODPARC, @NOMEPARC, @CGC_CPF, @CODPARSAP)" 
        SelectCommand="SELECT DISTINCT CODPARC, CGC_CPF, NOMEPARC, EMAIL, UF, ROTA, CODPARSAP FROM TGFPAR WHERE (CODPARC = @CODPARC)" 
        
        
        
        
        
                
                
                UpdateCommand="UPDATE TGFPAR SET CODPARC = @CODPARC, NOMEPARC = @NOMEPARC, CGC_CPF = @CGC_CPF, EMAIL = @EMAIL, UF = @UF, ROTA = @ROTA, CODPARSAP = @CODPARSAP WHERE (CODPARC = @CODPARC)">
        <DeleteParameters>
            <asp:Parameter Name="CODPARC" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CODPARC" />
            <asp:Parameter Name="NOMEPARC" />
            <asp:Parameter Name="CGC_CPF" />
            <asp:Parameter Name="CODPARSAP" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="CODPARC" PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CODPARC" />
            <asp:Parameter Name="NOMEPARC" />
            <asp:Parameter Name="CGC_CPF" />
            <asp:Parameter Name="EMAIL" />
            <asp:Parameter Name="UF" />
            <asp:Parameter Name="ROTA" />
            <asp:Parameter Name="CODPARSAP" />
        </UpdateParameters>
    </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
