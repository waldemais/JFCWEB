<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="JFCWEB.Paginas.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 248px;
            text-align: left;
        }
        .style2
        {
            width: 497px;
        }
        .style3
        {
            width: 160px;
            text-align: left;
        }
        .style4
        {
            width: 159px;
            text-align: left;
        }
        .style5
        {
            width: 207px;
            text-align: left;
        }
        .auto-style6 {
            width: 501px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%; height: 267px;">
        <tr>
            <td class="style1">
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Left" 
                        ImageUrl="~/Imagem/Voltar.png" PostBackUrl="~/Cliente/Menu4.aspx" 
                        Width="50px" />
            </td>
            <td class="auto-style6">
                <h2 class="titulo-pagina" 
                    
                    style="color: rgb(63, 137, 40); font-weight: 100; font-size: 2.4em; margin: 5px 0px; font-family: Raleway, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(246, 245, 241); text-decoration-style: initial; text-decoration-color: initial;">
                    Perfil do Cliente</h2>
            </td>
            <td style="text-align: right">
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="50px" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/Imagem/grupo.png" 
                    Width="150px">
                </asp:ImageMap>
                <br />
                <br />
            </td>
            <td class="auto-style6">
                CNPJ<br />
                <asp:TextBox ID="TxtBx1" runat="server" BorderStyle="None"></asp:TextBox>
                <br />
                <br />
                Código<br />
                <asp:TextBox ID="TxtBx2" runat="server" BorderStyle="None"></asp:TextBox>
                <br />
                <br />
                Nome do Parceiro<br />
                <asp:TextBox ID="TxtBx3" runat="server" BorderStyle="None" Width="379px" 
                    Height="25px"></asp:TextBox>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label5" runat="server" Text="Email Para envio do Pedido:"></asp:Label>
                <br />
                <asp:TextBox ID="TxtBx4" runat="server" Width="290px" BorderStyle="None"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <strong>
                <asp:Label ID="Label4" runat="server" Text="Alteração de senha"></asp:Label>
                </strong>
                <br />
                Senha Atual&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nova Senha&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Confirmação da Senha<br />
                <asp:TextBox ID="TxtBx5" runat="server" Width="130px" AutoPostBack="True" 
                    ontextchanged="TxtBx5_TextChanged" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtBx6" runat="server" Width="130px" TextMode="Password"></asp:TextBox>
&nbsp;
&nbsp;<asp:TextBox ID="TxtBx10" runat="server" Width="130px" TextMode="Password"></asp:TextBox>
            &nbsp;
            </td>
            <td>
                <br />
                <br />
                <asp:Button ID="Btt1" runat="server" onclick="Btt1_Click" Text="Confirmar" 
                    
                    style="color: #009933; background-color: #FFFFFF; font-size: medium; font-weight: 700;" 
                    Width="85px" CssClass="auto-style7" />
                <br />
            </td>
        </tr>
    </table>
    <div>
        <div>
            <asp:Label ID="Lbl4" runat="server" style="color: #FF0000; font-size: large"></asp:Label>
            <hr style="height: -12px" />
        </div>
    </div>
    <asp:GridView ID="Grid1" runat="server" DataSourceID="SqlData1" 
        AutoGenerateColumns="False" Visible="False">
        <Columns>
            <asp:BoundField DataField="IDparc" HeaderText="IDparc" 
                SortExpression="IDparc" />
            <asp:BoundField DataField="CODPARC" HeaderText="CODPARC" 
                SortExpression="CODPARC" />
            <asp:BoundField DataField="NOMEPARC" HeaderText="NOMEPARC" 
                SortExpression="NOMEPARC" />
            <asp:BoundField DataField="CGC_CPF" HeaderText="CGC_CPF" 
                SortExpression="CGC_CPF" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
        </Columns>
    </asp:GridView>
    <div style="margin-bottom: 0px; text-align: center;">
        <asp:Button ID="Butt1" runat="server" Text="Click para Cadastrar Contato" 
            onclick="Butt1_Click" 
            style="color: #009933; font-size: large; background-color: #FFFFFF" />
        <br />
        <table style="width:100%; height: 40px;">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
                    <br />
        <asp:TextBox ID="TxtBx7" runat="server" ontextchanged="Txtbx7_TextChanged" Width="235px"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtBx8" runat="server" Width="256px"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:Label ID="Label3" runat="server" Text="Telefone de Contato"></asp:Label>
                    <br />
                    <asp:TextBox ID="TxtBx9" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:Button ID="Butt2" runat="server" Text="Confirmar" onclick="Butt2_Click" 
                        style="color: #009933; background-color: #FFFFFF" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
        <div style="text-align: left">
            <asp:GridView ID="GrdV1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="idContato" DataSourceID="SqlData2">
                <Columns>
                    <asp:BoundField DataField="idContato" HeaderText="idContato" 
                        InsertVisible="False" ReadOnly="True" SortExpression="idContato" />
                    <asp:BoundField DataField="CNPJ" HeaderText="CNPJ" SortExpression="CNPJ" />
                    <asp:BoundField DataField="NOME" HeaderText="NOME" SortExpression="NOME" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="TELEFONE" HeaderText="TELEFONE" 
                        SortExpression="TELEFONE" />
                </Columns>
            </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlData1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        SelectCommand="SELECT [IDparc], [CODPARC], [NOMEPARC], [CGC_CPF], [EMAIL] FROM [TGFPAR] WHERE ([CGC_CPF] = @CGC_CPF)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtBx1" Name="CGC_CPF" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
        <br />
    </div>
    <asp:SqlDataSource ID="SqlData2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        
    
        SelectCommand="SELECT DISTINCT idContato, CNPJ, NOME, EMAIL, TELEFONE FROM Contato WHERE (CNPJ = @CNPJ) ORDER BY NOME" 
        DeleteCommand="DELETE FROM Contato WHERE (idContato = @idContato)">
        <DeleteParameters>
            <asp:Parameter Name="idContato" />
        </DeleteParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtBx1" Name="CNPJ" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
