<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TPrograma.aspx.cs" Inherits="JFCWEB.TPrograma" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 65px;
        }
        .style2
        {
            width: 263px;
        }
        .style3
        {
            width: 350px;
        }
        .style4
        {
            width: 644px;
        }
        .style5
        {
            width: 65px;
            height: 23px;
        }
        .style6
        {
            width: 263px;
            height: 23px;
        }
        .style7
        {
            width: 350px;
            height: 23px;
        }
        .style8
        {
            width: 313px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        PROGRAMAÇÃO DE ENTREGA</div>
    <hr />
    <div>
        <div>
            <table style="width:100%; height: 148px;">
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        <table style="width:100%;">
                            <tr>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style2">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    <asp:Label ID="Label1" runat="server" Text="CNPJ..:"></asp:Label>
                                </td>
                                <td class="style2">
                                    <asp:TextBox ID="TextBox1" runat="server" Width="302px"></asp:TextBox>
                                </td>
                                <td class="style3">
                                    <asp:Button ID="Button1" runat="server" 
                                        Text="PESQUISAR" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style6">
                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                </td>
                                <td class="style7">
                                    </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
        DataKeyNames="IDSEM">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF; color: #284775;">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="IDSEMLabel" runat="server" Text='<%# Eval("IDSEM") %>' />
                </td>
                <td>
                    <asp:Label ID="TEMPOLabel" runat="server" Text='<%# Eval("TEMPO") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="IDSEMLabel1" runat="server" Text='<%# Eval("IDSEM") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TEMPOTextBox" runat="server" Text='<%# Bind("TEMPO") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
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
                    <asp:TextBox ID="IDSEMTextBox" runat="server" Text='<%# Bind("IDSEM") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TEMPOTextBox" runat="server" Text='<%# Bind("TEMPO") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF; color: #333333;">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="IDSEMLabel" runat="server" Text='<%# Eval("IDSEM") %>' />
                </td>
                <td>
                    <asp:Label ID="TEMPOLabel" runat="server" Text='<%# Eval("TEMPO") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    IDSEM</th>
                                <th runat="server">
                                    TEMPO</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        
                        style="text-align: center;background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6; font-weight: bold;color: #333333;">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="IDSEMLabel" runat="server" Text='<%# Eval("IDSEM") %>' />
                </td>
                <td>
                    <asp:Label ID="TEMPOLabel" runat="server" Text='<%# Eval("TEMPO") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:JFCConnectionString %>" 
        SelectCommand="SELECT [IDSEM], [TEMPO] FROM [VPrograma] WHERE (([CGC_CPF] = @CGC_CPF) AND ([DIASEM] = @DIASEM))" 
        UpdateCommand="UPDATE VPrograma SET TEMPO = @TEMPO WHERE (IDSEM = @IDSEM)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="CGC_CPF" PropertyName="Text" 
                Type="String" />
            <asp:Parameter DefaultValue="1" Name="DIASEM" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TEMPO" />
            <asp:Parameter Name="IDSEM" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
