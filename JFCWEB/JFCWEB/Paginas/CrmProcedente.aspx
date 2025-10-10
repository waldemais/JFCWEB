<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrmProcedente.aspx.cs" Inherits="JFCWEB.Paginas.CrmProcedente" validateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            text-align: center;
        }
        .auto-style1 {
            width: 936px;
        }
        .auto-style5 {
            width: 311px;
        }
        .auto-style6 {
            width: 312px;
        }
        .auto-style8 {
            width: 34px;
            height: 30px;
        }
        .auto-style9 {
            text-align: center;
            width: 283px;
            height: 30px;
        }
        .auto-style10 {
            width: 78px;
            height: 30px;
        }
        .auto-style11 {
            width: 72px;
            height: 30px;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            height: 26px;
        }
        .auto-style14 {
            height: 30px;
        }
        .auto-style15 {
            width: 311px;
            height: 49px;
        }
        .auto-style16 {
            width: 312px;
            height: 49px;
        }
        .auto-style17 {
            width: 292px;
        }
        .auto-style18 {
            width: 292px;
            height: 49px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style12">
            <h3>
                &nbsp;</h3>
            <div style="background-color: #E7EBEF">
            <asp:Label ID="Label5" runat="server" Enabled="False" Font-Bold="True" Text="Reclamação Procedente: " style="font-size: large"></asp:Label>
                <hr />
            </div>
            <p>
                &nbsp;</p>
            <asp:TextBox ID="TB1" runat="server" BorderStyle="None" Enabled="False" Width="150px"></asp:TextBox>
        </div>
        <div>
            <asp:Panel ID="Panel1" Style="display:block;" runat="server" ViewStateMode="Disabled">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text="Qtd.Autorizada (*)" Width="150px"></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <asp:Label ID="Label2" runat="server" Text="Nome do Aprovador (*)" Width="167px"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label3" runat="server" Text="Email do Aprovador (*)" Width="150px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <asp:TextBox ID="TextBox1" runat="server" BackColor="#E1FFC4" Width="150px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Width="200px">(*) Preenchimento Obrigatório!</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style18">
                            <asp:TextBox ID="TextBox2" runat="server" BackColor="#E1FFC4" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Width="200px">(*) Preenchimento Obrigatorio!</asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style16">
                            <asp:TextBox ID="TextBox3" runat="server" BackColor="#E1FFC4" Width="300px" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Width="200px">(*) Preenchimento Obrigatório!</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="Label4" runat="server" Text="Justificativa (*)"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center">
                            <asp:TextBox ID="TextBox4" runat="server" BackColor="#E1FFC4" Height="200px" TextMode="MultiLine" Width="600px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style11"></td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style9">
        <asp:Button ID="Button1" runat="server" Text="Gravar" OnClick="Button1_Click" OnClientClick="Javascript:return confirm('Confirma o as informações?');" Width="100px" />
                    <asp:Button ID="Button2" runat="server" Text="Voltar" PostBackUrl="~/Paginas/CRM1.aspx" Width="100px" />
                </td>
                <td class="auto-style10"></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style13"></td>
                <td colspan="2" class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" ForeColor="Red">(*) Preenchimento Obrigatório!</asp:RequiredFieldValidator>
                </td>
                <td colspan="2" class="auto-style13"></td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="101px" Width="950px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Crm nº" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Numnota" HeaderText="Nota nº" SortExpression="Numnota" />
                <asp:BoundField DataField="Produto" HeaderText="Produto" SortExpression="Produto" />
                <asp:BoundField DataField="Qentregue" HeaderText="Entregue" SortExpression="Qentregue" />
                <asp:BoundField DataField="Qreclamada" HeaderText="Recusada" SortExpression="Qreclamada" />
                <asp:BoundField DataField="Qautoriz" HeaderText="Autorizada" SortExpression="Qautoriz" />
                <asp:BoundField DataField="Nomeaprov" HeaderText="Aprovador" SortExpression="Nomeaprov" />
                <asp:BoundField DataField="Emailsol" HeaderText="Solicitante" SortExpression="Emailsol" />
                <asp:BoundField DataField="Obser" HeaderText="Justificatica" SortExpression="Obser" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" Font-Size="Small" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [Numnota], [Produto], [Qentregue], [Qreclamada], [Qautoriz], [Nomeaprov], [Obser], [Emailsol] FROM [CRM1] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TB1" Name="Id" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
