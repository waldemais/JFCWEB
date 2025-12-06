<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pedido.aspx.cs" Inherits="JFCWEB.Pedido" MasterPageFile="" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style10
        {
            width: 364px;
            background-color: #BAE1B0;
        }
        .style11
        {
            width: 861px;
            font-size: x-large;
            color: #000099;
            background-color: #BAE1B0;
            text-align: center;
            height: 24px;
        }
        .style17
        {
            width: 861px;
        }
        .style19
        {
            width: 861px;
            background-color: #BAE1B0;
            text-align: left;
        }
        .style21
        {
            width: 861px;
            height: 16px;
            background-color: #BAE1B0;
        }
        .style22
        {
            width: 861px;
            text-align: left;
            height: 1px;
            background-color: #BAE1B0;
        }
        .style23
        {
            width: 1227px;
            background-color: #BAE1B0;
            text-align: center;
        }
        .style24
        {
            width: 546px;
            background-color: #BAE1B0;
            text-align: center;
        }
        .style25
        {
            color: #000099;
            text-align: center;
        }
        .style26
        {
            background-color: #C0C0C0;
        }
        </style>
</head>
<body style="margin-right: 343px; background-color: #C0C0C0;">
    <form id="form1" runat="server" title="Pedidos" class="style26">
    <div>
    
        <div style="width: 1334px; background-color: #C0C0C0">
                <table style="margin: auto 0px auto 74px; background-color: #666666; table-layout: auto; width: 1311px; height: auto; top: -1px; right: 21px; bottom: 1px; left: -65px; z-index: auto; position: relative;" 
                    class="style17">
                    <tr>
                        <td class="style11" colspan="3">
                            PEDIDOS ONLINE</td>
                    </tr>
                    <tr>
                        <td class="style22" colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td class="style19" colspan="3">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span 
                                class="style25">INFORME O CNPJ:</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TxtBx1" 
                                runat="server" AutoCompleteType="Search"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Pesquisar" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style10" colspan="3">
    
    <asp:ListView ID="LstV1" runat="server" DataSourceID="SqlDataSource2" DataMember="DefaultView" 
            EnableTheming="True" 
            style="margin-right: 0px; font-size: x-small; font-family: Verdana; background-color: #99FFCC;" 
                                InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                </td>
                <td>
                    <asp:Label ID="CGC_CPFLabel" runat="server" Text='<%# Eval("CGC_CPF") %>' />
                </td>
                <td>
                    <asp:Label ID="NOMEPARCLabel" runat="server" Text='<%# Eval("NOMEPARC") %>' />
                </td>
                <td>
                    <asp:Label ID="DTEMISSAOLabel" runat="server" Text='<%# Eval("DTEMISSAO") %>' />
                </td>
                <td>
                    <asp:Label ID="pedidoIDLabel" runat="server" Text='<%# Eval("pedidoID") %>' />
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
                    <asp:TextBox ID="CGC_CPFTextBox" runat="server" 
                        Text='<%# Bind("CGC_CPF") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NOMEPARCTextBox" runat="server" 
                        Text='<%# Bind("NOMEPARC") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DTEMISSAOTextBox" runat="server" 
                        Text='<%# Bind("DTEMISSAO") %>' />
                </td>
                <td>
                    <asp:Label ID="pedidoIDLabel1" runat="server" Text='<%# Eval("pedidoID") %>' />
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
                        Text="Novo" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Limpa" />
                </td>
                <td>
                    <asp:TextBox ID="CGC_CPFTextBox" runat="server" 
                        Text='<%# Bind("CGC_CPF") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NOMEPARCTextBox" runat="server" 
                        Text='<%# Bind("NOMEPARC") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DTEMISSAOTextBox" runat="server" 
                        Text='<%# Bind("DTEMISSAO") %>' />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                </td>
                <td>
                    <asp:Label ID="CGC_CPFLabel" runat="server" Text='<%# Eval("CGC_CPF") %>' />
                </td>
                <td>
                    <asp:Label ID="NOMEPARCLabel" runat="server" Text='<%# Eval("NOMEPARC") %>' />
                </td>
                <td>
                    <asp:Label ID="DTEMISSAOLabel" runat="server" Text='<%# Eval("DTEMISSAO") %>' />
                </td>
                <td>
                    <asp:Label ID="pedidoIDLabel" runat="server" Text='<%# Eval("pedidoID") %>' />
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
                                    CGC_CPF</th>
                                <th runat="server">
                                    NOMEPARC</th>
                                <th runat="server">
                                    DTEMISSAO</th>
                                <th runat="server">
                                    pedidoID</th>
                            </tr>
                            <tr runat="server" ID="itemPlaceholder">
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
                    <asp:Label ID="CGC_CPFLabel" runat="server" Text='<%# Eval("CGC_CPF") %>' />
                </td>
                <td>
                    <asp:Label ID="NOMEPARCLabel" runat="server" Text='<%# Eval("NOMEPARC") %>' />
                </td>
                <td>
                    <asp:Label ID="DTEMISSAOLabel" runat="server" Text='<%# Eval("DTEMISSAO") %>' />
                </td>
                <td>
                    <asp:Label ID="pedidoIDLabel" runat="server" Text='<%# Eval("pedidoID") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    
                            <br />
    
                        </td>
                    </tr>
                    <tr>
                        <td class="style21" colspan="3">
                            <span class="style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INFORME O PEDIDO:</span>&nbsp; <asp:TextBox ID="TxtBx2" runat="server" Width="94px"></asp:TextBox>
                            <ajaxToolkit:AutoCompleteExtender ID="TxtBx2_AutoCompleteExtender" runat="server" BehaviorID="TxtBx2_AutoCompleteExtender" DelimiterCharacters="" ServicePath="" TargetControlID="TxtBx2">
                            </ajaxToolkit:AutoCompleteExtender>
                            <ajaxToolkit:TextBoxWatermarkExtender ID="TxtBx2_TextBoxWatermarkExtender" runat="server" TargetControlID="TxtBx2" />
                            &nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Selecionar" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style19" colspan="3">
    <asp:ListView ID="ListView3" runat="server" 
        DataSourceID="SqlDataSource1" InsertItemPosition="LastItem" style="font-size: xx-small">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                </td>
                <td>
                    <asp:Label ID="pedidoIDLabel" runat="server" Text='<%# Eval("pedidoID") %>' />
                </td>
                <td>
                    <asp:Label ID="CODPARCLabel" runat="server" Text='<%# Eval("CODPARC") %>' />
                </td>
                <td>
                    <asp:Label ID="DTEMISSAOLabel" runat="server" Text='<%# Eval("DTEMISSAO") %>' />
                </td>
                <td>
                    <asp:Label ID="DTENTREGALabel" runat="server" Text='<%# Eval("DTENTREGA") %>' />
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
                    <asp:TextBox ID="pedidoIDTextBox" runat="server" 
                        Text='<%# Bind("pedidoID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CODPARCTextBox" runat="server" 
                        Text='<%# Bind("CODPARC") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DTEMISSAOTextBox" runat="server" 
                        Text='<%# Bind("DTEMISSAO") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DTENTREGATextBox" runat="server" 
                        Text='<%# Bind("DTENTREGA") %>' />
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
                        Text="Novo" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Limpa" />
                </td>
                <td>
                    <asp:TextBox ID="pedidoIDTextBox" runat="server" 
                        Text='<%# Bind("pedidoID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="CODPARCTextBox" runat="server" 
                        Text='<%# Bind("CODPARC") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DTEMISSAOTextBox" runat="server" 
                        Text='<%# Bind("DTEMISSAO") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DTENTREGATextBox" runat="server" 
                        Text='<%# Bind("DTENTREGA") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                </td>
                <td>
                    <asp:Label ID="pedidoIDLabel" runat="server" Text='<%# Eval("pedidoID") %>' />
                </td>
                <td>
                    <asp:Label ID="CODPARCLabel" runat="server" Text='<%# Eval("CODPARC") %>' />
                </td>
                <td>
                    <asp:Label ID="DTEMISSAOLabel" runat="server" Text='<%# Eval("DTEMISSAO") %>' />
                </td>
                <td>
                    <asp:Label ID="DTENTREGALabel" runat="server" Text='<%# Eval("DTENTREGA") %>' />
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
                                    pedidoID</th>
                                <th runat="server">
                                    CODPARC</th>
                                <th runat="server">
                                    DTEMISSAO</th>
                                <th runat="server">
                                    DTENTREGA</th>
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
                    <asp:Label ID="pedidoIDLabel" runat="server" Text='<%# Eval("pedidoID") %>' />
                </td>
                <td>
                    <asp:Label ID="CODPARCLabel" runat="server" Text='<%# Eval("CODPARC") %>' />
                </td>
                <td>
                    <asp:Label ID="DTEMISSAOLabel" runat="server" Text='<%# Eval("DTEMISSAO") %>' />
                </td>
                <td>
                    <asp:Label ID="DTENTREGALabel" runat="server" Text='<%# Eval("DTENTREGA") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style23" align="left">
                            <span class="style25"><strong>Itens do Pedido<br />
                            </strong>
                            </span><br class="style25" />
    <asp:GridView ID="GrdV1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" 
        GridLines="None" style="font-size: small; " CssClass="style26">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ButtonType="Button" 
                EditText="Alterar" />
            <asp:BoundField DataField="pedidoID" HeaderText="Pedido" 
                SortExpression="pedidoID" InsertVisible="False" />
            <asp:BoundField DataField="CODPROD" HeaderText="Produto" 
                SortExpression="CODPROD" />
            <asp:BoundField DataField="DESCRPROD" HeaderText="Descrição" 
                SortExpression="DESCRPROD" InsertVisible="False" />
            <asp:BoundField DataField="QTDE" HeaderText="Qtde." SortExpression="QTDE" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
                        </td>
                        <td class="style24" align="center">
    
                            <span class="style25">
                            <strong>Selecione a Entrega<br />
                            </strong>
                            </span><br class="style25" />
    
                            <asp:GridView ID="GridEmissao" runat="server" AutoGenerateColumns="False" 
                                DataSourceID="SqlDataSource5" CellPadding="4" ForeColor="#333333" 
                                GridLines="None" onselectedindexchanged="GridEmissao_SelectedIndexChanged" 
                                CssClass="style26">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="DIASEM" HeaderText="DIASEM" 
                                        SortExpression="DIASEM" />
                                    <asp:CheckBoxField DataField="ATIVO" HeaderText="ATIVO" 
                                        SortExpression="ATIVO" />
                                    <asp:BoundField DataField="TEMPO" HeaderText="TEMPO" SortExpression="TEMPO" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
    
                            </td>
                        <td class="style19" align="left">
    
                            <span class="style25">Limite p/ Confirmação:<br class="style25" />
                            <br />
                            &nbsp;
                            <asp:Label ID="Lbl3" runat="server" Font-Size="Medium" 
                                style="font-weight: 700; color: #003399"></asp:Label>
    
                            <br />
    
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;Data da Entrega:</strong><br />
                            </span><br />
                            &nbsp;&nbsp;
                            <asp:TextBox ID="TxtBx3" runat="server" ForeColor="#003399" 
                                style="color: #003399" Width="104px" Font-Size="Large"></asp:TextBox>
    
                            &nbsp;
                            <asp:Button ID="Btt3" runat="server" Text="Confirmar" 
                                style="margin-left: 0px" onclick="Btt3_Click" />
    
                            <br />
    
                            </td>
                    </tr>
                    </table>
        </div>
&nbsp;&nbsp;<br />
    
    </div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
        InsertCommand="INSERT INTO ITENS_PEDIDO(pedidoID, CODPROD, CODPARC) SELECT pedidoID, CODPROD, CODPARC FROM ITENS WHERE (pedidoID = @PEDIDOID)" 
        
        
        
        
        
        
        SelectCommand="SELECT DISTINCT [pedidoID], [CODPARC], [DTEMISSAO], [DTENTREGA] FROM [PEDIDOS] WHERE (([pedidoID] = @pedidoID) AND ([CGC_CPF] = @CGC_CPF))">
        <InsertParameters>
            <asp:Parameter Name="PEDIDOID" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtBx2" Name="pedidoID" PropertyName="Text" 
                Type="Int32" />
            <asp:ControlParameter ControlID="TxtBx1" Name="CGC_CPF" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
        
        
        
        
        
        SelectCommand="SELECT PEDIDO.CGC_CPF, TGFPAR.NOMEPARC, PEDIDO.DTEMISSAO, PEDIDO.pedidoID FROM PEDIDO INNER JOIN TGFPAR ON PEDIDO.CODPARC = TGFPAR.CODPARC WHERE (PEDIDO.CGC_CPF = @CGC_CPF) AND (PEDIDO.FECHADO = 'False')" 
        
        
        
        
        InsertCommand="INSERT INTO PEDIDO(CGC_CPF, CODPARC) SELECT @CGC_CPF AS Expr1, CODPARC FROM TGFPAR WHERE (CGC_CPF = @CGC_CPF)" 
        
        
        
        
        
        
        
        
        
        UpdateCommand="UPDATE PEDIDO SET DTENTREGA = DTENTREGA, FECHADO = @FECHADO where pedidoID=@pedidoID">
        <InsertParameters>
            <asp:Parameter Name="CGC_CPF" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtBx1" Name="CGC_CPF" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FECHADO" />
            <asp:Parameter Name="pedidoID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
        
        
        
        
        
        
        
        SelectCommand="SELECT DISTINCT ITENS_PEDIDO.pedidoID, ITENS_PEDIDO.CODPROD, TGFPRO.DESCRPROD, ITENS_PEDIDO.QTDE FROM ITENS_PEDIDO INNER JOIN TGFPRO ON ITENS_PEDIDO.CODPROD = TGFPRO.CODPROD WHERE (ITENS_PEDIDO.pedidoID = @pedidoID)" 
        
        UpdateCommand="UPDATE ITENS_PEDIDO SET QTDE = @QTDE WHERE (pedidoID = @pedidoID) AND (CODPROD = @CODPROD)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtBx2" Name="pedidoID" PropertyName="Text" 
                Type="Int32" DefaultValue="0" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="QTDE" />
            <asp:Parameter Name="pedidoID" />
            <asp:Parameter Name="CODPROD" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
                                
                                
                                
                                
                                SelectCommand="SELECT ATIVO, TEMPO, DIASEM FROM VPrograma WHERE (CGC_CPF = @CGC_CPF) AND (ATIVO = 1)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TxtBx1" Name="CGC_CPF" PropertyName="Text" 
                                        Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:jfcverdurasConnectionString %>" 
                                
                                
                                SelectCommand="SELECT [DTENTREGA], [pedidoID] FROM [ENTREGA] WHERE ([CGC_CPF] = @CGC_CPF)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="TxtBx1" 
                                        Name="CGC_CPF" PropertyName="Text" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
    </form>
    </body>
</html>

