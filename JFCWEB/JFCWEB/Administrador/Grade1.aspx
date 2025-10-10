<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grade1.aspx.cs" Inherits="JFCWEB.Grade1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Programação</title>
    <style type="text/css">
        .style34
        {
            height: 58px;
            width: 187px;
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
        }
        .style35
        {
            height: 26px;
            width: 187px;
            }
        .style36
        {
            height: 29px;
            width: 187px;
            text-align: center;
        }
        .style41
        {
            height: 24px;
            width: 187px;
            }
        .style44
        {
            width: 167px;
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
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
            height: 29px;
            width: 169px;
            text-align: center;
        }
        .style83
        {
            width: 169px;
            text-align: center;
        }
        .style84
        {
            width: 261px;
            background-color: #FFFFFF;
        }
        .style85
        {
            width: 220px;
            background-color: #FFFFFF;
            text-align: center;
        }
        #form1
        {
            background-color: #FFFFFF;
            height: 1103px;
            width: 1664px;
        }
        .style86
        {
            height: 24px;
            text-align: center;
            width: 167px;
        }
        .style87
        {
            height: 26px;
            text-align: center;
            width: 167px;
        }
        .style90
        {
            height: 58px;
            width: 172px;
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
        }
        .style92
        {
            height: 26px;
            text-align: center;
            width: 172px;
        }
        .style94
        {
            text-align: center;
            width: 172px;
        }
        .style95
        {
            width: 172px;
            text-align: center;
            height: 24px;
        }
        .style96
        {
            height: 29px;
            width: 172px;
            text-align: center;
        }
        .style100
        {
            height: 24px;
            width: 171px;
        }
        .style101
        {
            height: 26px;
            width: 171px;
        }
        .style104
        {
            height: 58px;
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
            width: 171px;
        }
        .style107
        {
            width: 187px;
        }
        .style108
        {
            height: 58px;
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
            width: 195px;
        }
        .style109
        {
            height: 24px;
            width: 195px;
        }
        .style110
        {
            height: 26px;
            width: 195px;
        }
        .style111
        {
            height: 29px;
            text-align: center;
            width: 195px;
        }
        .style113
        {
            width: 195px;
            text-align: center;
            height: 30px;
        }
        .style115
        {
            text-align: center;
            width: 172px;
            height: 30px;
        }
        .style116
        {
            width: 169px;
            text-align: center;
            height: 30px;
        }
        .style117
        {
            width: 187px;
            height: 30px;
        }
        .style118
        {
            width: 195px;
        }
        .style119
        {
            height: 58px;
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
            width: 179px;
        }
        .style120
        {
            height: 24px;
            width: 179px;
        }
        .style121
        {
            height: 26px;
            width: 179px;
        }
        .style122
        {
            height: 29px;
            text-align: center;
            width: 179px;
        }
        .style123
        {
            width: 179px;
        }
        .style124
        {
            width: 179px;
            text-align: center;
            height: 30px;
        }
        .style125
        {
            width: 171px;
        }
        .style126
        {
            height: 29px;
            text-align: center;
            width: 171px;
        }
        .style127
        {
            text-align: center;
            width: 171px;
            height: 30px;
        }
        .style128
        {
            text-align: center;
            width: 167px;
        }
        .style130
        {
            width: 167px;
            text-align: center;
            height: 30px;
        }
        .style131
        {
            height: 29px;
            width: 167px;
            text-align: center;
        }
        .style132
        {
            width: 261px;
            background-color: #FFFFFF;
            height: 81px;
        }
        .style133
        {
            width: 220px;
            background-color: #FFFFFF;
            height: 81px;
        }
        .style134
        {
            height: 81px;
        }
        .style135
        {
            font-size: x-large;
        }
        .auto-style59 {
            height: 22px;
            text-align: center;
            width: 160px;
        }
        .auto-style86 {
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
            width: 165px;
            height: 28px;
        }
        .auto-style87 {
            height: 22px;
            width: 165px;
        }
        .auto-style88 {
            height: 26px;
            width: 165px;
        }
        .auto-style89 {
            width: 165px;
            text-align: center;
        }
        .auto-style92 {
            height: 22px;
            width: 160px;
        }
        .auto-style93 {
            height: 26px;
            width: 160px;
        }
        .auto-style96 {
            height: 22px;
            width: 163px;
        }
        .auto-style97 {
            height: 26px;
            width: 163px;
        }
        .auto-style98 {
            width: 163px;
        }
        .auto-style99 {
            width: 163px;
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
            height: 28px;
        }
        .auto-style100 {
            text-align: center;
            width: 163px;
        }
        .auto-style104 {
            width: 176px;
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
            height: 28px;
        }
        .auto-style105 {
            height: 22px;
            width: 176px;
        }
        .auto-style106 {
            height: 26px;
            width: 176px;
        }
        .auto-style107 {
            text-align: center;
            width: 176px;
        }
        .auto-style109 {
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
            width: 160px;
            height: 28px;
        }
        .auto-style110 {
            height: 26px;
            width: 160px;
            text-align: center;
        }
        .auto-style111 {
            width: 160px;
        }
        .auto-style112 {
            width: 168px;
            text-align: center;
            height: 34px;
        }
        .auto-style114 {
            width: 160px;
            height: 34px;
            text-align: center;
        }
        .auto-style115 {
            width: 163px;
            height: 34px;
        }
        .auto-style116 {
            width: 160px;
            height: 34px;
        }
        .auto-style117 {
            width: 165px;
            height: 34px;
        }
        .auto-style118 {
            width: 176px;
            height: 34px;
            text-align: center;
        }
        .auto-style124 {
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
            width: 170px;
            height: 28px;
        }
        .auto-style125 {
            height: 22px;
            text-align: center;
            width: 170px;
        }
        .auto-style126 {
            height: 26px;
            text-align: center;
            width: 170px;
        }
        .auto-style127 {
            width: 170px;
            text-align: center;
        }
        .auto-style128 {
            width: 170px;
            text-align: center;
            height: 34px;
        }
        .auto-style134 {
            height: 22px;
            text-align: center;
            width: 168px;
        }
        .auto-style139 {
            height: 26px;
            text-align: center;
            width: 168px;
        }
        .auto-style140 {
            font-size: large;
            text-align: center;
            font-weight: bold;
            color: #006600;
            width: 168px;
            height: 28px;
        }
        .auto-style141 {
            width: 168px;
            text-align: center;
        }
        .auto-style143 {
            width: 479px;
            background-color: #FFFFFF;
            height: 75px;
        }
        .auto-style145 {
            width: 113px;
            background-color: #FFFFFF;
            height: 75px;
        }
        .auto-style147 {
            width: 160px;
            text-align: center;
        }
        .auto-style148 {
            width: 177px;
            background-color: #FFFFFF;
            height: 75px;
        }
        .auto-style150 {
            height: 181px;
            width: 1016px;
        }
        .auto-style151 {
            height: 146px;
            width: 901px;
        }
        .auto-style152 {
            height: 75px;
            text-align: left;
        }
        .auto-style153 {
            height: 1078px;
            width: 1573px;
            margin-right: 0px;
        }
        .auto-style154 {
            width: 1283px;
        }
        .auto-style155 {
            margin-right: 0px;
        }
        .auto-style157 {
            font-size: small;
            color: #FF0000;
        }
        .auto-style158 {
            margin-left: 80px;
            width: 124px;
            text-align: center;
        }
        .auto-style159 {
            text-align: center;
        }
        .auto-style160 {
            text-align: left;
        }
        .auto-style161 {
            color: #006600;
            font-weight: bold;
        }
        .auto-style162 {
            width: 305px;
        }
        .auto-style163 {
            text-align: center;
            width: 124px;
        }
        .auto-style164 {
            width: 124px;
        }
        </style>
</head>
<body bgcolor="#ffffff">
    <form id="form1" runat="server" style="background-color: #FFFFFF; margin-bottom: 149px;" 
    title="Programa" class="auto-style153" defaultbutton="Btn1" defaultfocus="TxtBox1">
    <div style="text-align: center; background-color: #99FF66; font-size: xx-small;" class="auto-style154">
    
        <asp:ImageButton ID="ImageButton1" runat="server" CssClass="style135" 
            ImageAlign="Left" ImageUrl="~/Imagem/icons8-menu-48.png" 
            PostBackUrl="~/Administrador/Menu1.aspx" />
        <asp:ImageButton ID="ImageButton2" runat="server" CssClass="style135" 
            ImageAlign="Right" ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" 
            Width="48px" />
        <span class="style135">PROGRAMAÇÃO DE ENTREGA</span><br class="style135" />
        <br />
        <br />
    </div>
    <div style="background-color: #FFFFFF;" class="auto-style150">
        &nbsp; -<table align="left" 
            style="background-color: #FFFFFF;" class="auto-style151">
            <tr>
                <td class="auto-style143">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style162">
                                <asp:Label ID="Label1" runat="server" Text="Código do Cliente"></asp:Label>
                                <br />
        <asp:TextBox ID="TxtBox1" runat="server" Width="150px" onload="TxtBox1_Load" 
                        style="margin-right: 2px; font-size: large;"></asp:TextBox>
                                <br />
                                <br />
                    <asp:Label ID="Lbl01" runat="server" 
                        style="font-weight: 700; " Font-Size="Small" CssClass="auto-style157"></asp:Label>
                            </td>
                            <td class="auto-style162">
        <asp:Button ID="Btn1" runat="server" Text="SELECIONAR" 
                        style="margin-left: 0px; color: #006600; font-weight: 700; background-color: #FFFFFF;" 
                        onclick="Btn1_Click" Width="100px" Height="25px" />
                            </td>
                            <td class="auto-style158">
                                <strong>
                                <br />
                                <asp:Button ID="Btn3" runat="server" CssClass="auto-style161" Height="25px" OnClick="Btn3_Click" Text="LIMPAR TELA" Width="100px" />
                                <br />
                                </strong>
                                <br />
                                </td>
                            <td>
                                <br />
                                <strong>
                                <br />
                                </strong></td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style162" colspan="2">
        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource8" GridLines="None" Width="275px" 
                        style="margin-left: 0px; background-color: #FFFFFF; text-align: left;" 
                        BorderStyle="None" CaptionAlign="Top" Height="49px" ShowHeader="False" CssClass="auto-style155">
            <Columns>
                <asp:BoundField DataField="NOMEPARC" SortExpression="NOMEPARC" >
                <ItemStyle Font-Size="Small" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
                            </td>
                            <td class="auto-style163">
                                <br />
                                <br />
                            </td>
                            <td class="auto-style159">
                                <br />
                                <div class="auto-style160">
                                </div>
                            </td>
                            <td class="auto-style159">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style162" colspan="2">&nbsp;</td>
                            <td class="auto-style164">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                &nbsp;
                    <br />
                </td>
                <td class="auto-style145">
                    &nbsp;<asp:Button ID="Button1" runat="server" PostBackUrl="~/Administrador/Programa.aspx" Text="Ver Entregas BK" />
                    <br />
                    <br />
                    <br />
                            <strong>
                    <asp:Button ID="Btn2" runat="server" onclick="Btn2_Click" 
                        style="color: #006600; font-weight: 700; background-color: #FFFFFF" 
                        Text="CLIENTE NOVO" Height="25px" Width="150px" BackColor="#CCCCCC" BorderColor="#CCCCCC" OnClientClick="Javascript:return confirm('Confirma Nova Entrega?');" Visible="False" />
                                </strong>
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style148">
                    &nbsp;</td>
                <td style="background-color: #FFFFFF" class="auto-style152">
                    <asp:Label ID="Lb2" runat="server" Text="Alterar Entrega  Padrão" Font-Size="Large"></asp:Label>
                    <br />
            <asp:RadioButtonList ID="RBList1" runat="server" AppendDataBoundItems="True" 
                        BorderStyle="Double" Height="86px" 
                onselectedindexchanged="RBList1_SelectedIndexChanged" Width="222px" 
                        BorderColor="Lime" AutoPostBack="True" Enabled="False">
                <asp:ListItem>Segunda/Quarta/Sexta</asp:ListItem>
                <asp:ListItem>Terça/Quinta/Sábado</asp:ListItem>
                <asp:ListItem>Quarta/Sábado</asp:ListItem>
            </asp:RadioButtonList>
                    <br />
                </td>
            </tr>
            </table>
&nbsp;
        <div>
        </div>
        <br />
        <br />
        <br />
        <br />
    </div>
             <table align="left" frame="above">
                <tr>
                    <td class="auto-style140" style="border: thin solid #00FF00;">
                        Segunda-Feira</td>
                    <td class="auto-style124" style="border: thin solid #00FF00;">
                        Terça-Feira</td>
                    <td class="auto-style109" style="border: thin solid #00FF00;">
                        Quarta-Feira</td>
                    <td class="auto-style99" style="border: thin solid #00FF00;">
                        Quinta-Feira</td>
                    <td class="auto-style109" style="border: thin solid #00FF00;">
                        Sexta-Feira</td>
                    <td class="auto-style86" style="border: thin solid #00FF00;">
                        Sábado</td>
                    <td class="auto-style104" style="border: thin solid #00FF00;">
                        Domingo</td>
                </tr>
                <tr>
                    <td class="auto-style134" style="border: thin solid #00FF00;">
                        <strong>Limite para pedidos</strong></td>
                    <td class="auto-style125" style="border: thin solid #00FF00">
                        <strong>Limite para pedidos</strong></td>
                    <td class="auto-style59" style="border: thin solid #00FF00">
                        <strong>Limite para pedidos</strong></td>
                    <td class="auto-style96" style="border: thin solid #00FF00; text-align: center;">
                        <strong>Limite para pedidos</strong></td>
                    <td class="auto-style92" style="border: thin solid #00FF00; text-align: center;">
                        <strong>Limite para pedidos</strong></td>
                    <td class="auto-style87" style="border: thin solid #00FF00; text-align: center;">
                        <strong>Limite para pedidos</strong></td>
                    <td class="auto-style105" style="border: thin solid #00FF00; text-align: center;">
                        <strong>Limite para pedidos</strong></td>
                </tr>
                <tr>
                    <td class="auto-style139" style="border: thin solid #00FF00;">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Font-Size="Small" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" 
                            style="text-align: center" Width="170px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="LIMDIA" HeaderText="DIA" SortExpression="LIMDIA" />
                                <asp:BoundField DataField="LIMHORA" HeaderText="HORA" SortExpression="LIMHORA" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <EmptyDataTemplate>
                                <asp:GridView ID="GridView2" runat="server">
                                </asp:GridView>
                            </EmptyDataTemplate>
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
                    <td class="auto-style126" style="border: thin solid #00FF00">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Font-Size="Small" 
                            onselectedindexchanged="GridView3_SelectedIndexChanged" Width="170px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="LIMDIA" HeaderText="DIA" SortExpression="LIMDIA" />
                                <asp:BoundField DataField="LIMHORA" HeaderText="HORA" SortExpression="LIMHORA" />
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
                    <td class="auto-style110" style="border: thin solid #00FF00; ">
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource3" Font-Size="Small" 
                            onselectedindexchanged="GridView4_SelectedIndexChanged" Width="170px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="LIMDIA" HeaderText="DIA" SortExpression="LIMDIA" />
                                <asp:BoundField DataField="LIMHORA" HeaderText="HORA" SortExpression="LIMHORA" />
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
                    <td class="auto-style97" style="border: thin solid #00FF00; text-align: center;">
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" Font-Size="Small" 
                            onselectedindexchanged="GridView5_SelectedIndexChanged" Width="170px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="LIMDIA" HeaderText="DIA" SortExpression="LIMDIA" />
                                <asp:BoundField DataField="LIMHORA" HeaderText="HORA" 
                                    SortExpression="LIMHORA" />
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
                    <td class="auto-style93" style="border: thin solid #00FF00; text-align: center;">
                        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource5" Font-Size="Small" 
                            onselectedindexchanged="GridView6_SelectedIndexChanged" Width="170px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="LIMDIA" HeaderText="DIA" SortExpression="LIMDIA" />
                                <asp:BoundField DataField="LIMHORA" HeaderText="HORA" SortExpression="LIMHORA" />
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
                    <td class="auto-style88" style="border: thin solid #00FF00; text-align: center;">
                        <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource6" Font-Size="Small" 
                            onselectedindexchanged="GridView7_SelectedIndexChanged" Width="170px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="LIMDIA" HeaderText="DIA" SortExpression="LIMDIA" />
                                <asp:BoundField DataField="LIMHORA" HeaderText="HORA" SortExpression="LIMHORA" />
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
                    <td class="auto-style106" style="border: thin solid #00FF00; text-align: center;">
                        <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource7" Font-Size="Small" 
                            onselectedindexchanged="GridView8_SelectedIndexChanged" Width="170px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="LIMDIA" HeaderText="DIA" SortExpression="LIMDIA" />
                                <asp:BoundField DataField="LIMHORA" HeaderText="HORA" SortExpression="LIMHORA" />
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
                <tr>
                    <td class="auto-style141" style="border: thin solid #00FF00;">
                        <strong>Selecione o Dia</strong></td>
                    <td class="auto-style127" style="border: thin solid #00FF00">
                        <strong>Selecione o Dia</strong></td>
                    <td class="auto-style147" style="border: thin solid #00FF00">
                        <strong>Selecione o Dia</strong></td>
                    <td class="auto-style100" style="border: thin solid #00FF00">
                        <strong>Selecione o Dia</strong></td>
                    <td class="auto-style147" style="border: thin solid #00FF00">
                        <strong>Selecione o Dia</strong></td>
                    <td class="auto-style89" style="border: thin solid #00FF00">
                        <strong>Selecione o Dia</strong></td>
                    <td class="auto-style107" style="border: thin solid #00FF00">
                        <strong>Selecione o Dia</strong></td>
                </tr>
                <tr>
                    <td class="auto-style141" style="border: thin solid #00FF00;">
                        <asp:DropDownList ID="DDL1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource9" DataTextField="nome" DataValueField="nome" OnDataBinding="GridView1_SelectedIndexChanged" OnTextChanged="GridView1_SelectedIndexChanged" OnSelectedIndexChanged="DDL1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style127" style="border: thin solid #00FF00">
                        <asp:DropDownList ID="DDL3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource9" DataTextField="nome" DataValueField="nome" OnDataBinding="GridView3_SelectedIndexChanged" OnSelectedIndexChanged="DDL3_SelectedIndexChanged" OnTextChanged="GridView3_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style147" style="border: thin solid #00FF00; ">
                        <asp:DropDownList ID="DDL5" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource9" DataTextField="nome" DataValueField="nome" OnDataBinding="GridView4_SelectedIndexChanged" OnSelectedIndexChanged="DDL5_SelectedIndexChanged" OnTextChanged="GridView4_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style98" style="border: thin solid #00FF00; text-align: center;">
                        <asp:DropDownList ID="DDL7" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource9" DataTextField="nome" DataValueField="nome" OnDataBinding="GridView5_SelectedIndexChanged" OnSelectedIndexChanged="DDL7_SelectedIndexChanged" OnTextChanged="GridView5_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style111" style="border: thin solid #00FF00; text-align: center;">
                        <asp:DropDownList ID="DDL9" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource9" DataTextField="nome" DataValueField="nome" OnDataBinding="GridView6_SelectedIndexChanged" OnSelectedIndexChanged="DDL9_SelectedIndexChanged" OnTextChanged="GridView6_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style89" style="border: thin solid #00FF00; ">
                        <asp:DropDownList ID="DDL11" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource9" DataTextField="nome" DataValueField="nome" OnDataBinding="GridView7_SelectedIndexChanged" OnSelectedIndexChanged="DDL11_SelectedIndexChanged" OnTextChanged="GridView7_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style107" style="border: thin solid #00FF00; ">
                        <asp:DropDownList ID="DDL13" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource9" DataTextField="nome" DataValueField="nome" OnDataBinding="GridView8_SelectedIndexChanged" OnSelectedIndexChanged="DDL13_SelectedIndexChanged" OnTextChanged="GridView8_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style141" style="border: thin solid #00FF00;">
                        <strong>Selecione o&nbsp; Horário</strong></td>
                    <td class="auto-style127" style="border: thin solid #00FF00;">
                        <strong>Selecione o&nbsp; Horário</strong></td>
                    <td class="auto-style147" style="border: thin solid #00FF00;">
                        <strong>Selecione o&nbsp; Horário</strong></td>
                    <td class="auto-style98" style="border: thin solid #00FF00; text-align: center;">
                        <strong>Selecione o&nbsp; Horário</strong></td>
                    <td class="auto-style147" style="border: thin solid #00FF00;">
                        <strong>Selecione o&nbsp; Horário</strong></td>
                    <td class="auto-style89" style="border: thin solid #00FF00;">
                        <strong>Selecione o&nbsp; Horário</strong></td>
                    <td class="auto-style107" style="border: thin solid #00FF00;">
                        <strong>Selecione o&nbsp; Horário</strong></td>
                </tr>
                <tr>
                    <td class="auto-style112" style="border: thin solid #00FF00;">
                        <asp:DropDownList ID="DDL2" runat="server" DataSourceID="SqlDataSource10" DataTextField="hora" DataValueField="hora" AutoPostBack="True" OnDataBinding="GridView1_SelectedIndexChanged" OnSelectedIndexChanged="DDL2_SelectedIndexChanged" OnTextChanged="GridView1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style128" style="border: thin solid #00FF00;">
                        <asp:DropDownList ID="DDL4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource10" DataTextField="hora" DataValueField="hora" OnDataBinding="GridView3_SelectedIndexChanged" OnSelectedIndexChanged="DDL4_SelectedIndexChanged" OnTextChanged="GridView3_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style114" style="border: thin solid #00FF00;">
                        <asp:DropDownList ID="DDL6" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource10" DataTextField="hora" DataValueField="hora" OnDataBinding="GridView4_SelectedIndexChanged" OnSelectedIndexChanged="DDL6_SelectedIndexChanged" OnTextChanged="GridView4_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style115" style="border: thin solid #00FF00; text-align: center;">
                        <asp:DropDownList ID="DDL8" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource10" DataTextField="hora" DataValueField="hora" OnDataBinding="GridView5_SelectedIndexChanged" OnSelectedIndexChanged="DDL8_SelectedIndexChanged" OnTextChanged="GridView5_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style116" style="border: thin solid #00FF00; text-align: center;">
                        <asp:DropDownList ID="DDL10" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource10" DataTextField="hora" DataValueField="hora" OnDataBinding="GridView6_SelectedIndexChanged" OnSelectedIndexChanged="DDL10_SelectedIndexChanged" OnTextChanged="GridView6_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style117" style="border: thin solid #00FF00; text-align: center;">
                        <asp:DropDownList ID="DDL12" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource10" DataTextField="hora" DataValueField="hora" OnDataBinding="GridView7_SelectedIndexChanged" OnSelectedIndexChanged="DDL12_SelectedIndexChanged" OnTextChanged="GridView7_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style118" style="border: thin solid #00FF00; ">
                        <asp:DropDownList ID="DDL14" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource10" DataTextField="hora" DataValueField="hora" OnDataBinding="GridView8_SelectedIndexChanged" OnSelectedIndexChanged="DDL14_SelectedIndexChanged" OnTextChanged="GridView8_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style141" style="border: thin solid #00FF00;">
                        <asp:CheckBox ID="CBo1" runat="server" OnCheckedChanged="CBo1_CheckedChanged" Text="Ativo" />
                        <asp:CheckBox ID="CBox1" runat="server" OnCheckedChanged="CBox1_CheckedChanged" Text="Inativo" />
                        <br />
                        <asp:Button ID="Btt1" runat="server" OnClick="Btt1_Click" Text="Gravar" />
                    </td>
                    <td class="auto-style127" style="border: thin solid #00FF00;">
                        <asp:CheckBox ID="CBo2" runat="server" OnCheckedChanged="CBo2_CheckedChanged" Text="Ativo" />
                        <asp:CheckBox ID="CBox2" runat="server" OnCheckedChanged="CBox2_CheckedChanged" Text="Inativo" />
                        <br />
                        <asp:Button ID="Btt2" runat="server" OnClick="Btt2_Click" Text="Gravar" />
                    </td>
                    <td class="auto-style147" style="border: thin solid #00FF00;">
                        <asp:CheckBox ID="CBo3" runat="server" OnCheckedChanged="CBo3_CheckedChanged" Text="Ativo" />
                        <asp:CheckBox ID="CBox3" runat="server" OnCheckedChanged="CBox3_CheckedChanged" Text="Inativo" />
                        <br />
                        <asp:Button ID="Btt3" runat="server" OnClick="Btt3_Click" Text="Gravar" />
                    </td>
                    <td class="auto-style100" style="border: thin solid #00FF00;">
                        <asp:CheckBox ID="CBo4" runat="server" OnCheckedChanged="CBo4_CheckedChanged" Text="Ativo" />
                        <asp:CheckBox ID="CBox4" runat="server" OnCheckedChanged="CBox4_CheckedChanged" Text="Inativo" />
                        <br />
                        <asp:Button ID="Btt4" runat="server" OnClick="Btt4_Click" Text="Gravar" />
                    </td>
                    <td class="auto-style147" style="border: thin solid #00FF00;">
                        <asp:CheckBox ID="CBo5" runat="server" OnCheckedChanged="CBo5_CheckedChanged" Text="Ativo" />
                        <asp:CheckBox ID="CBox5" runat="server" OnCheckedChanged="CBox5_CheckedChanged" Text="Inativo" />
                        <br />
                        <asp:Button ID="Btt5" runat="server" OnClick="Btt5_Click" Text="Gravar" />
                    </td>
                    <td class="auto-style89" style="border: thin solid #00FF00;">
                        <asp:CheckBox ID="CBo6" runat="server" OnCheckedChanged="CBo6_CheckedChanged" Text="Ativo" />
                        <asp:CheckBox ID="CBox6" runat="server" OnCheckedChanged="CBox6_CheckedChanged" Text="Inativo" />
                        <br />
                        <asp:Button ID="Btt6" runat="server" OnClick="Btt6_Click" Text="Gravar" />
                    </td>
                    <td class="auto-style107" style="border: thin solid #00FF00;">
                        <asp:CheckBox ID="CBo7" runat="server" Text="Ativo" />
                        <asp:CheckBox ID="CBox7" runat="server" OnCheckedChanged="CBox7_CheckedChanged" Text="Inativo" />
                        <br />
                        <asp:Button ID="Btt7" runat="server" OnClick="Btt7_Click" Text="Gravar" />
                    </td>
                </tr>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
                    SelectCommand="SELECT LIMHORA, LIMDIA, ATIVO FROM VPrograma WHERE (CODPARC = @CODPARC) AND (DIASEM = 'sex') AND (ATIVO = 1)" 
                    
                    
                    UpdateCommand="UPDATE VPrograma SET TEMPO = @TEMPO, ATIVO = @ATIVO WHERE (IDSEM = @IDSEM)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TxtBox1" Name="CODPARC" PropertyName="Text" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TEMPO" />
                        <asp:Parameter Name="ATIVO" />
                        <asp:Parameter Name="IDSEM" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
                    
                    
                    
                    SelectCommand="SELECT DISTINCT NOMEPARC, CODPARC, CGC_CPF FROM TGFPAR WHERE (CODPARC = @CODPARC)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TxtBox1" Name="CODPARC" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                 <asp:RadioButton ID="RadioButton2" runat="server" />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
                    SelectCommand="SELECT LIMHORA, LIMDIA, ATIVO FROM VPrograma WHERE (CODPARC = @CODPARC) AND (DIASEM = 'qua') AND (ATIVO = 1)" 
                    
                    
                    UpdateCommand="UPDATE VPrograma SET TEMPO = @TEMPO, ATIVO = @ATIVO WHERE (IDSEM = @IDSEM)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TxtBox1" Name="CODPARC" PropertyName="Text" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TEMPO" />
                        <asp:Parameter Name="ATIVO" />
                        <asp:Parameter Name="IDSEM" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
                    SelectCommand="SELECT LIMDIA, LIMHORA FROM VPrograma WHERE (CODPARC = @CODPARC) AND (DIASEM = 'seg') AND (ATIVO = 1)" 
                    
                    
                    UpdateCommand="UPDATE TabProg SET ATIVO = @ATIVO, TEMPO = @TEMPO WHERE IDSEM = @IDSEM">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TxtBox1" Name="CODPARC" PropertyName="Text" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ATIVO" />
                        <asp:Parameter Name="TEMPO" />
                        <asp:Parameter Name="IDSEM" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
                    SelectCommand="SELECT LIMDIA, LIMHORA FROM VPrograma WHERE (CODPARC = @CODPARC) AND (DIASEM = 'ter') AND (ATIVO = 1)" 
                    
                    
                    UpdateCommand="UPDATE VPrograma SET TEMPO = @TEMPO, ATIVO=@ATIVO WHERE (IDSEM = @IDSEM)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TxtBox1" Name="CODPARC" PropertyName="Text" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TEMPO" />
                        <asp:Parameter Name="ATIVO" />
                        <asp:Parameter Name="IDSEM" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
                    SelectCommand="SELECT LIMDIA, LIMHORA, ATIVO FROM VPrograma WHERE (CODPARC = @CODPARC) AND (DIASEM = 'dom') AND (ATIVO = 1)" 
                    
                    
                    UpdateCommand="UPDATE VPrograma SET TEMPO = @TEMPO, ATIVO = @ATIVO WHERE (IDSEM = @IDSEM)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TxtBox1" Name="CODPARC" PropertyName="Text" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TEMPO" />
                        <asp:Parameter Name="ATIVO" />
                        <asp:Parameter Name="IDSEM" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
                    SelectCommand="SELECT LIMHORA, LIMDIA, ATIVO FROM VPrograma WHERE (CODPARC = @CODPARC) AND (DIASEM = 'sáb') AND (ATIVO = 1)" 
                    
                    
                    
                    UpdateCommand="UPDATE VPrograma SET TEMPO = @TEMPO, ATIVO = @ATIVO WHERE (IDSEM = @IDSEM)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TxtBox1" Name="CODPARC" PropertyName="Text" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TEMPO" />
                        <asp:Parameter Name="ATIVO" />
                        <asp:Parameter Name="IDSEM" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
                    SelectCommand="SELECT LIMHORA, LIMDIA, ATIVO FROM VPrograma WHERE (CODPARC = @CODPARC) AND (DIASEM = 'qui') AND (ATIVO = 1)" 
                    
                    
                    UpdateCommand="UPDATE VPrograma SET TEMPO = @TEMPO, ATIVO = @ATIVO WHERE (IDSEM = @IDSEM)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TxtBox1" Name="CODPARC" PropertyName="Text" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TEMPO" />
                        <asp:Parameter Name="ATIVO" />
                        <asp:Parameter Name="IDSEM" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
                        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT [hora] FROM [Tempo]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT [nome] FROM [Semana] ORDER BY [dia]"></asp:SqlDataSource>
               </table>
        <div>
                    </div>
        <div>
                    </div>
        <div>
                    </div>
        <div>
                    </div>
        <div>
                    </div>
        <div>
        </div>
        <div>
                    </div>
        <div>
                    </div>
    </form>
    </body>
</html>
