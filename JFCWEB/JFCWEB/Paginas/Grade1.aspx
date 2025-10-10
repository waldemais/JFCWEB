<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grade1.aspx.cs" Inherits="JFCWEB.Grade1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            height: 39px;
            text-align: center;
            width: 201px;
        }
        .style5
        {
            height: 58px;
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
            width: 201px;
        }
        .style7
        {
            height: 26px;
            text-align: center;
            width: 201px;
        }
        .style29
        {
            width: 99px;
            text-align: right;
        }
        .style31
        {
            height: 26px;
            width: 99px;
            text-align: right;
        }
        .style32
        {
            height: 39px;
            width: 99px;
            text-align: right;
        }
        .style33
        {
            width: 122px;
        }
        .style34
        {
            height: 58px;
            width: 122px;
            font-size: large;
            text-align: right;
            font-weight: bold;
            color: #006600;
        }
        .style35
        {
            height: 26px;
            width: 122px;
            }
        .style36
        {
            height: 39px;
            width: 122px;
            text-align: center;
        }
        .style37
        {
            width: 99px;
            height: 58px;
            font-size: large;
            text-align: right;
            font-weight: bold;
            color: #006600;
        }
        .style41
        {
            height: 24px;
            width: 122px;
            text-align: center;
        }
        .style42
        {
            height: 24px;
            width: 99px;
            }
        .style43
        {
            height: 24px;
            text-align: center;
            width: 201px;
        }
        .style44
        {
            width: 156px;
            font-size: large;
            text-align: right;
            font-weight: bold;
            color: #006600;
        }
        .style51
        {
            text-align: center;
            width: 201px;
        }
        .style53
        {
            width: 122px;
            }
        .style61
        {
            height: 58px;
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
            width: 239px;
        }
        .style62
        {
            height: 24px;
            text-align: center;
            width: 239px;
        }
        .style63
        {
            height: 26px;
            text-align: center;
            width: 239px;
        }
        .style64
        {
            height: 39px;
            text-align: center;
            width: 239px;
        }
        .style65
        {
            text-align: center;
            width: 239px;
        }
        .style66
        {
            width: 239px;
        }
        .style67
        {
            width: 201px;
        }
        .style68
        {
            height: 24px;
            width: 156px;
            text-align: center;
        }
        .style69
        {
            height: 26px;
            width: 156px;
            text-align: center;
        }
        .style70
        {
            height: 39px;
            width: 156px;
            text-align: center;
        }
        .style71
        {
            width: 156px;
            text-align: center;
        }
        .style73
        {
            width: 139px;
            height: 58px;
            font-size: large;
            text-align: right;
            font-weight: bold;
            color: #006600;
        }
        .style74
        {
            width: 139px;
            text-align: center;
            height: 24px;
        }
        .style75
        {
            height: 26px;
            width: 139px;
            text-align: center;
        }
        .style76
        {
            height: 39px;
            width: 139px;
            text-align: center;
        }
        .style77
        {
            width: 139px;
            text-align: center;
        }
        .style79
        {
            width: 169px;
            height: 58px;
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
        }
        .style80
        {
            width: 169px;
            text-align: center;
            height: 24px;
        }
        .style81
        {
            height: 26px;
            width: 169px;
        }
        .style82
        {
            height: 39px;
            width: 169px;
            text-align: center;
        }
        .style83
        {
            width: 169px;
        }
        .style84
        {
            width: 256px;
        }
        .style85
        {
            width: 128px;
        }
        #form1
        {
            background-color: #339966;
        }
    </style>
</head>
<body bgcolor="#99ff99">
    <form id="form1" runat="server">
    <div style="text-align: center; background-color: #99FF66;">
    
        PROGRAMAÇÃO DE ENTREGA</div>
    <div style="height: 142px">
        &nbsp; -<table 
            style="width:100%; background-color: #99CCFF; height: 95px;">
            <tr>
                <td class="style84">
        <asp:Label ID="Lbl1" runat="server" Text="CNPJ.:" BorderStyle="None"></asp:Label>
        <asp:TextBox ID="TxtBox1" runat="server" Width="187px"></asp:TextBox>
                </td>
                <td class="style85">
        <asp:Button ID="Btn1" runat="server" Text="PESQUISAR" style="margin-left: 0px" />
                </td>
                <td style="background-color: #99FF33">
        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource8">
            <Columns>
                <asp:BoundField DataField="NOMEPARC" SortExpression="NOMEPARC" />
            </Columns>
        </asp:GridView>
                </td>
            </tr>
            </table>
&nbsp;
        <br />
        <br />
        <br />
    </div>
    <div style="width: 1329px">
        <table style="width:161%; height: 394px; margin-right: 42px; background-color: #6699FF;" 
            align="center">
            <tr>
                <td class="style44">
                    Segunda-Feira</td>
                <td class="style73">
                    Terça-Feira</td>
                <td class="style79">
                    Quarta-Feira</td>
                <td class="style34">
                    Quinta-Feira</td>
                <td class="style37">
                    Sexta-Feira</td>
                <td class="style5">
                    Sábado</td>
                <td class="style61">
                    Domingo</td>
            </tr>
            <tr>
                <td class="style68" style="border: thin groove #00FF00;">
                    Dia Limite</td>
                <td class="style74" style="border: thin groove #00FF00">
                    Dia Limite</td>
                <td class="style80" style="border: thin groove #00FF00">
                    Dia Limite</td>
                <td class="style41" style="border: thin groove #00FF00">
                    Dia Limite</td>
                <td class="style42">
                    Dia Limite</td>
                <td class="style43" style="border: thin groove #00FF00">
                    Dia Limite</td>
                <td class="style62" style="border: thin groove #00FF00">
                    Dia Limite</td>
            </tr>
            <tr>
                <td class="style69" style="border: thin groove #00FF00;">
    <asp:TextBox ID="TxtBox3" runat="server" Enabled="False" Height="27px" 
                        style="text-align: center" Width="100px"></asp:TextBox>
                </td>
                <td class="style75" style="border: thin groove #00FF00">
                    <asp:TextBox ID="TxtBox5" runat="server" Height="26px" style="text-align: center" 
                        Width="100px" Enabled="False"></asp:TextBox>
                </td>
                <td class="style81" style="border: thin groove #00FF00; text-align: center;">
                    <asp:TextBox ID="TxtBox7" runat="server" Height="26px" Width="100px" 
                        Enabled="False" style="text-align: center"></asp:TextBox>
                </td>
                <td class="style35" style="border: thin groove #00FF00; text-align: center;">
                    <asp:TextBox ID="TxtBox9" runat="server" Height="26px" Width="100px" 
                        Enabled="False" style="text-align: center"></asp:TextBox>
                </td>
                <td class="style31">
                    <asp:TextBox ID="TxtBox11" runat="server" Height="26px" Width="100px" 
                        Enabled="False" style="text-align: right"></asp:TextBox>
                </td>
                <td class="style7" style="border: thin groove #00FF00" width="122">
                    <asp:TextBox ID="TxtBox13" runat="server" Height="26px" Width="100px" 
                        Enabled="False" style="text-align: center"></asp:TextBox>
                </td>
                <td class="style63" style="border: thin groove #00FF00" width="122">
                    <asp:TextBox ID="TxtBox15" runat="server" Height="26px" Width="100px" 
                        Enabled="False" style="text-align: center"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style70" style="border: thin groove #00FF00;">
                    Hora Limite</td>
                <td class="style76" style="border: thin groove #00FF00">
                    Hora Limite</td>
                <td class="style82" style="border: thin groove #00FF00">
                    Hora Limite</td>
                <td class="style36" style="border: thin groove #00FF00">
                    Hora Limite</td>
                <td class="style32">
                    Hora Limite</td>
                <td class="style3" style="border: thin groove #00FF00">
                    Hora Limite</td>
                <td class="style64" style="border: thin groove #00FF00">
                    Hora Limite</td>
            </tr>
            <tr>
                <td class="style71" style="border: thin groove #00FF00;">
    <asp:TextBox ID="TxtBox2" runat="server" 
        ondatabinding="GridView1_SelectedIndexChanged" Enabled="False" Height="26px" 
                        style="text-align: center" Width="100px"></asp:TextBox>
                </td>
                <td class="style77" style="border: thin groove #00FF00">
                    <asp:TextBox ID="TxtBox4" runat="server" Height="26px" 
                        ondatabinding="GridView3_SelectedIndexChanged" style="text-align: center" 
                        Width="100px" Enabled="False"></asp:TextBox>
                </td>
                <td class="style83" style="border: thin groove #00FF00; text-align: center;">
                    <asp:TextBox ID="TxtBox6" runat="server" Height="26px" Width="100px" 
                        Enabled="False" style="text-align: center"></asp:TextBox>
                </td>
                <td class="style53" style="border: thin groove #00FF00; text-align: center;">
                    <asp:TextBox ID="TxtBox8" runat="server" Height="26px" Width="100px" 
                        Enabled="False" style="text-align: center"></asp:TextBox>
                </td>
                <td class="style29">
                    <asp:TextBox ID="TxtBox10" runat="server" Height="26px" Width="100px" 
                        Enabled="False" style="text-align: center"></asp:TextBox>
                </td>
                <td class="style51" style="border: thin groove #00FF00" width="122">
                    <asp:TextBox ID="TxtBox12" runat="server" Height="26px" Width="100px" 
                        Enabled="False" style="text-align: center"></asp:TextBox>
                </td>
                <td class="style65" style="border: thin groove #00FF00" width="122">
                    <asp:TextBox ID="TxtBox14" runat="server" Height="26px" Width="100px" 
                        Enabled="False" style="text-align: center"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style71">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" style="text-align: center" 
                        Width="64px" Font-Size="Small" CellPadding="4" ForeColor="#333333" 
                        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="IDSEM" HeaderText="IDSEM" SortExpression="IDSEM" 
                Visible="False" />
            <asp:BoundField DataField="DIASEM" HeaderText="DIASEM" 
                SortExpression="DIASEM" Visible="False" />
            <asp:BoundField DataField="TEMPO" HeaderText="TEMPO" 
                SortExpression="TEMPO" />
            <asp:CheckBoxField DataField="ATIVO" HeaderText="SELEÇÃO" 
                SortExpression="ATIVO" >
            <ControlStyle ForeColor="Red" />
            <ItemStyle ForeColor="#00CC00" />
            </asp:CheckBoxField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <EmptyDataTemplate>
            <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
        </EmptyDataTemplate>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BorderColor="Lime" BorderStyle="Groove" BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
                </td>
                <td class="style77">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="IDSEM" DataSourceID="SqlDataSource2" 
                        onselectedindexchanged="GridView3_SelectedIndexChanged" Width="61px" 
                        Font-Size="Small" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="IDSEM" HeaderText="IDSEM" SortExpression="IDSEM" 
                                ReadOnly="True" Visible="False" />
                            <asp:BoundField DataField="DIASEM" HeaderText="DIASEM" 
                                SortExpression="DIASEM" Visible="False" />
                            <asp:BoundField DataField="TEMPO" HeaderText="TEMPO" 
                                SortExpression="TEMPO" />
                            <asp:TemplateField HeaderText="SELEÇÃO" SortExpression="ATIVO">
                                <ItemTemplate>
                                    <asp:CheckBox ID="Chk2" runat="server" Checked='<%# Bind("ATIVO") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
                <td class="style83">
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="IDSEM" DataSourceID="SqlDataSource3" Width="16px" 
                        onselectedindexchanged="GridView4_SelectedIndexChanged" Font-Size="Small" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="IDSEM" HeaderText="IDSEM" ReadOnly="True" 
                                SortExpression="IDSEM" Visible="False" />
                            <asp:BoundField DataField="DIASEM" HeaderText="DIASEM" SortExpression="DIASEM" 
                                Visible="False" />
                            <asp:BoundField DataField="TEMPO" HeaderText="TEMPO" SortExpression="TEMPO" />
                            <asp:TemplateField HeaderText="SELEÇÃO" SortExpression="ATIVO">
                                <ItemTemplate>
                                    <asp:CheckBox ID="Chk3" runat="server" Checked='<%# Bind("ATIVO") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
                <td class="style33">
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="IDSEM" DataSourceID="SqlDataSource4" Width="81px" 
                        Font-Size="Small" onselectedindexchanged="GridView5_SelectedIndexChanged" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="IDSEM" HeaderText="IDSEM" ReadOnly="True" 
                                SortExpression="IDSEM" Visible="False" />
                            <asp:BoundField DataField="DIASEM" HeaderText="DIASEM" SortExpression="DIASEM" 
                                Visible="False" />
                            <asp:BoundField DataField="TEMPO" HeaderText="TEMPO" SortExpression="TEMPO" />
                            <asp:TemplateField HeaderText="SELEÇÃO" SortExpression="ATIVO">
                                <ItemTemplate>
                                    <asp:CheckBox ID="Chk4" runat="server" Checked='<%# Bind("ATIVO") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
                <td class="style29">
                    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="IDSEM" DataSourceID="SqlDataSource5" Width="81px" 
                        Font-Size="Small" onselectedindexchanged="GridView6_SelectedIndexChanged" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="IDSEM" HeaderText="IDSEM" ReadOnly="True" 
                                SortExpression="IDSEM" Visible="False" />
                            <asp:BoundField DataField="DIASEM" HeaderText="DIASEM" SortExpression="DIASEM" 
                                Visible="False" />
                            <asp:BoundField DataField="TEMPO" HeaderText="TEMPO" SortExpression="TEMPO" />
                            <asp:TemplateField HeaderText="SELEÇÃO" SortExpression="ATIVO">
                                <ItemTemplate>
                                    <asp:CheckBox ID="Chk5" runat="server" Checked='<%# Bind("ATIVO") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
                <td class="style67" width="122">
                    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="IDSEM" DataSourceID="SqlDataSource6" Width="81px" 
                        Font-Size="Small" onselectedindexchanged="GridView7_SelectedIndexChanged" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="IDSEM" HeaderText="IDSEM" ReadOnly="True" 
                                SortExpression="IDSEM" Visible="False" />
                            <asp:BoundField DataField="DIASEM" HeaderText="DIASEM" SortExpression="DIASEM" 
                                Visible="False" />
                            <asp:BoundField DataField="TEMPO" HeaderText="TEMPO" SortExpression="TEMPO" />
                            <asp:TemplateField HeaderText="SELEÇÃO" SortExpression="ATIVO">
                                <ItemTemplate>
                                    <asp:CheckBox ID="Chk6" runat="server" Checked='<%# Bind("ATIVO") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
                <td class="style66" width="122">
                    <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="IDSEM" DataSourceID="SqlDataSource7" Width="16px" 
                        Font-Size="Small" onselectedindexchanged="GridView8_SelectedIndexChanged" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="IDSEM" HeaderText="IDSEM" ReadOnly="True" 
                                SortExpression="IDSEM" Visible="False" />
                            <asp:BoundField DataField="DIASEM" HeaderText="DIASEM" SortExpression="DIASEM" 
                                Visible="False" />
                            <asp:BoundField DataField="TEMPO" HeaderText="TEMPO" SortExpression="TEMPO" />
                            <asp:TemplateField HeaderText="SELEÇÃO" SortExpression="ATIVO">
                                <ItemTemplate>
                                    <asp:CheckBox ID="Chk7" runat="server" Checked='<%# Bind("ATIVO") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <p>
        </p>
    </div>
    <p>
    </p>
    <div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        SelectCommand="SELECT IDSEM, DIASEM, TEMPO, ATIVO FROM VPrograma WHERE (CGC_CPF = @CGC_CPF) AND (DIASEM = 'Sexta')" 
        
        
        UpdateCommand="UPDATE VPrograma SET TEMPO = @TEMPO, ATIVO = @ATIVO WHERE (IDSEM = @IDSEM)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TEMPO" />
            <asp:Parameter Name="ATIVO" />
            <asp:Parameter Name="IDSEM" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        SelectCommand="SELECT TEMPO, DIASEM, IDSEM, ATIVO FROM VPrograma WHERE (CGC_CPF = @CGC_CPF) AND (DIASEM = 'Seg')" 
        
        
        
        
        
        UpdateCommand="UPDATE VPrograma SET ATIVO = @ATIVO, TEMPO = @TEMPO WHERE (IDSEM = @IDSEM)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ATIVO" />
            <asp:Parameter Name="TEMPO" />
            <asp:Parameter Name="IDSEM" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        SelectCommand="SELECT IDSEM, DIASEM, TEMPO, ATIVO FROM VPrograma WHERE (CGC_CPF = @CGC_CPF) AND (DIASEM = 'Quarta')" 
        
        
        UpdateCommand="UPDATE VPrograma SET TEMPO = @TEMPO, ATIVO = @ATIVO WHERE (IDSEM = @IDSEM)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TEMPO" />
            <asp:Parameter Name="ATIVO" />
            <asp:Parameter Name="IDSEM" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        SelectCommand="SELECT IDSEM, DIASEM, TEMPO, ATIVO FROM VPrograma WHERE (CGC_CPF = @CGC_CPF) AND (DIASEM = 'Terca')" 
        
        
        
        UpdateCommand="UPDATE VPrograma SET TEMPO = @TEMPO, ATIVO=@ATIVO WHERE (IDSEM = @IDSEM)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TEMPO" />
            <asp:Parameter Name="ATIVO" />
            <asp:Parameter Name="IDSEM" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        SelectCommand="SELECT IDSEM, TEMPO, ATIVO, DIASEM FROM VPrograma WHERE (CGC_CPF = @CGC_CPF) AND (DIASEM = 'Quinta')" 
        
        
        UpdateCommand="UPDATE VPrograma SET TEMPO = @TEMPO, ATIVO = @ATIVO WHERE (IDSEM = @IDSEM)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TEMPO" />
            <asp:Parameter Name="ATIVO" />
            <asp:Parameter Name="IDSEM" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        SelectCommand="SELECT ATIVO, IDSEM, DIASEM, TEMPO FROM VPrograma WHERE (CGC_CPF = @CGC_CPF) AND (DIASEM = 'Sábado')" 
        
        
        UpdateCommand="UPDATE VPrograma SET TEMPO = @TEMPO, ATIVO = @ATIVO WHERE (IDSEM = @IDSEM)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TEMPO" />
            <asp:Parameter Name="ATIVO" />
            <asp:Parameter Name="IDSEM" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        SelectCommand="SELECT ATIVO, IDSEM, DIASEM, TEMPO FROM VPrograma WHERE (CGC_CPF = @CGC_CPF) AND (DIASEM = 'Domingo')" 
        
        
        UpdateCommand="UPDATE VPrograma SET TEMPO = @TEMPO, ATIVO = @ATIVO WHERE (IDSEM = @IDSEM)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="TEMPO" />
            <asp:Parameter Name="ATIVO" />
            <asp:Parameter Name="IDSEM" />
        </UpdateParameters>
    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
                        
        SelectCommand="SELECT DISTINCT [NOMEPARC] FROM [TGFPAR] WHERE ([CGC_CPF] = @CGC_CPF)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TxtBox1" Name="CGC_CPF" PropertyName="Text" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
    <br />
    </form>
    </body>
</html>
