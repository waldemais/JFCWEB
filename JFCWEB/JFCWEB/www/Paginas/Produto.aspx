<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produto.aspx.cs" Inherits="JFCWEB.Produto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Produto</title>
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
            text-align: center;
            background-color: #FFFFFF;
            height: 92px;
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
    
        <h1 class="style1">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="Left" 
                ImageUrl="~/Imagem/icons8-menu-48.png" 
                PostBackUrl="~/Administrador/Menu1.aspx" />
            <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Right" 
                ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="48px" />
            <asp:Image ID="Image1" runat="server" Height="90px" 
                ImageUrl="~/Imagem/Logos _JFC.jpg" Width="100px" />
        </h1>
    
        <div class="style2">
            <strong>Cadastro de Produtos</strong></div>
    
    </div>
    <div>
        <br class="style4" />
        <span class="style3">Código do Produto:</span>
        <asp:TextBox ID="ttxPesquisa" runat="server" 
            style="font-size: large; color: #006600" Width="149px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="font-size: large; color: #006600; font-weight: 700" Text="Filtrar" />
&nbsp;<br />
    </div>
    <asp:ListView ID="listProd" runat="server" DataSourceID="SqlDataSource1" 
        style="text-align: center; color: #006600; margin-right: 75px;" 
        InsertItemPosition="FirstItem" EnableTheming="True">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                </td>
                <td>
                    <asp:Label ID="CÓDIGOLabel" runat="server" Text='<%# Eval("CÓDIGO") %>' />
                </td>
                <td>
                    <asp:Label ID="DESCRIÇÃOLabel" runat="server" Text='<%# Eval("DESCRIÇÃO") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="CÓDIGOTextBox" runat="server" Text='<%# Bind("CÓDIGO") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DESCRIÇÃOTextBox" runat="server" 
                        Text='<%# Bind("DESCRIÇÃO") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="CÓDIGOTextBox" runat="server" Text='<%# Bind("CÓDIGO") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DESCRIÇÃOTextBox" runat="server" 
                        Text='<%# Bind("DESCRIÇÃO") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                </td>
                <td>
                    <asp:Label ID="CÓDIGOLabel" runat="server" Text='<%# Eval("CÓDIGO") %>' />
                </td>
                <td>
                    <asp:Label ID="DESCRIÇÃOLabel" runat="server" Text='<%# Eval("DESCRIÇÃO") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="0" 
                            style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                    </th>
                                <th runat="server">
                                    CÓDIGO</th>
                                <th runat="server">
                                    DESCRIÇÃO</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                </td>
                <td>
                    <asp:Label ID="CÓDIGOLabel" runat="server" Text='<%# Eval("CÓDIGO") %>' />
                </td>
                <td>
                    <asp:Label ID="DESCRIÇÃOLabel" runat="server" Text='<%# Eval("DESCRIÇÃO") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" Font-Bold="False" Font-Size="Medium" 
        GridLines="None" Visible="False">
        <Columns>
            <asp:CommandField ButtonType="Button" CancelText="Cancela" EditText="Editar" 
                ShowEditButton="True" />
            <asp:BoundField DataField="CODPROD" HeaderText="CODPROD" 
                SortExpression="CODPROD" />
            <asp:BoundField DataField="DESCRPROD" HeaderText="DESCRPROD" 
                SortExpression="DESCRPROD" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        DeleteCommand="DELETE FROM TGFPRO WHERE (CODPROD = @CODPROD)" 
        SelectCommand="SELECT CODPROD, DESCRPROD FROM TGFPRO WHERE (CODPROD = @CODPROD)" 
        
        UpdateCommand="UPDATE TGFPRO SET DESCRPROD = @DESCRPROD WHERE (CODPROD = @CODPROD)">
        <DeleteParameters>
            <asp:Parameter Name="CODPROD" />
        </DeleteParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ttxPesquisa" Name="CODPROD" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="DESCRPROD" />
            <asp:Parameter Name="CODPROD" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        InsertCommand="INSERT INTO TGFPRO(CODPROD, DESCRPROD) VALUES (@CÓDIGO, @DESCRIÇÃO)" 
        
        SelectCommand="SELECT CODPROD AS CÓDIGO, DESCRPROD AS DESCRIÇÃO FROM TGFPRO" 
        DeleteCommand="DELETE FROM TGFPRO WHERE (CODPROD = @CODPROD)" 
        
        UpdateCommand="UPDATE TGFPRO SET CODPROD = @CODPROD, DESCRPROD = @DESCRPROD">
        <DeleteParameters>
            <asp:Parameter Name="CODPROD" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CÓDIGO" />
            <asp:Parameter Name="DESCRIÇÃO" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CODPROD" />
            <asp:Parameter Name="DESCRPROD" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
