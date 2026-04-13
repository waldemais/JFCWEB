<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parceiro.aspx.cs" Inherits="JFCWEB.Parceiro" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

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
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 227px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" method="get" defaultbutton="Button1">
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
                        &nbsp;</td>
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
                        &nbsp;</td>
                    <td class="style3">
                    &nbsp;
                        &nbsp;<asp:Button ID="Btton02" runat="server" onclick="Btton02_Click" Text="Novo" 
                            Width="100px" 
                            style="color: #006600; font-weight: 700; background-color: #FFFFFF" />
                            <asp:Button ID="Btton04" runat="server" OnClick="Btton04_Click" Text="Alterar" Width="100px" Visible="False" />
                        &nbsp;<div>
                        </div>
                        <br />
                        <div style="width: 546px">
                        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                            Width="95px" onload="TextBox1_Load"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="PESQUISAR" 
                            style="color: #006600; font-weight: 700; background-color: #FFFFFF" 
                            Width="99px" OnClick="Button1_Click1" />
                        </div>
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
                                Cadasttro de Parceiro<br />
                                <br />
                                <asp:Label ID="Lbel01" runat="server" ForeColor="#006600" Text="Código"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox2" runat="server" Width="191px"></asp:TextBox>
                                <br />
                                <asp:Label ID="Lbel02" runat="server" style="color: #006600" Text="Cnpj/Cpf"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox3" runat="server" 
                                    Width="191px"></asp:TextBox>
                                <br />
                                <asp:Label ID="Lbel03" runat="server" style="color: #006600" Text="Descrição"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox4" runat="server" Width="392px"></asp:TextBox>
                                <br />
                                Email<br />
                                <asp:TextBox ID="TextBox5" runat="server" Width="392px"></asp:TextBox>
                                <table style="width:100%;">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="UF"></asp:Label>
                                        </td>
                                        <td class="auto-style3">
                                            <asp:Label ID="Label2" runat="server" Text="Rota"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="Grupo"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="TextBox6" runat="server" Width="52px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style5">
                                            <asp:TextBox ID="TextBox7" runat="server" Width="57px"></asp:TextBox>
                                        </td>
                                        <td class="auto-style4">
                                            <asp:DropDownList ID="DDList1" runat="server">
                                                <asp:ListItem Value="0">Selecione</asp:ListItem>
                                                <asp:ListItem Value="01">Burger King</asp:ListItem>
                                                <asp:ListItem Value="02">Subway</asp:ListItem>
                                                <asp:ListItem Value="03">Bob´s</asp:ListItem>
                                                <asp:ListItem Value="04">Mania</asp:ListItem>
                                                <asp:ListItem Value="05">Kfc/SH</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6"></td>
                                        <td class="auto-style7"></td>
                                        <td class="auto-style6"></td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <asp:Button ID="Button02" runat="server" onclick="Button02_Click" style="color: #006600; font-weight: 700; background-color: #FFFFFF" Text="Confirma" />
                                            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Gravar" />
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
                        <asp:GridView ID="GridView1" runat="server" 
                            DataSourceID="SqlDataSource1" Width="900px" Height="30px" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" GridLines="Vertical" Font-Size="Small" ForeColor="Black" BorderStyle="None">
                            <AlternatingRowStyle BackColor="White" />
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        <div>
                        </div>
                        <div>
                        </div>
                        <asp:Label ID="Label4" runat="server" Text="Itens deste Cliente"></asp:Label>
                        <br />
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource2" GridLines="Horizontal" ShowHeader="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Size="Small">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="CODPROD" HeaderText="CODPROD" 
                                    SortExpression="CODPROD" />
                                <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRPROD" 
                                    SortExpression="DESCRPROD" />
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
                    </td>
                </tr>
            </table>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
                
                
                SelectCommand="SELECT DISTINCT [CODPROD], [DESCRPROD] FROM [ItemParceiros] WHERE ([CODPARC] = @CODPARC) ORDER BY [CODPROD]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="CODPARC" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
        SelectCommand="SELECT CODPARC, NOMEPARC, CGC_CPF, EMAIL, UF, ROTA, CODPARSAP, Grupo FROM TGFPAR WHERE (CODPARC = @CODPARC)" ProviderName="System.Data.SqlClient">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="CODPARC" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
