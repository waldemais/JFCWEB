<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="JFCWEB.Administrador.Usuario" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Colaboradores</title>
    <style type="text/css">
        .style1
        {
            color: #006600;
            font-size: large;
        }
        .style2
        {
            color: #006600;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="Left" 
            ImageUrl="~/Imagem/icons8-menu-48.png" 
            PostBackUrl="~/Administrador/Menu1.aspx" />
        <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Right" 
            ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" Width="48px" />
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/Logos _JFC.jpg" Width="100px" />
    
    </div>
    <table style="width:100%;">
        <tr>
            <td class="style1">
                Cadastro de Acessos</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <span class="style2"><strong>CNPJ.:</strong></span>
                <asp:TextBox ID="TBox1" runat="server" Width="164px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Btt1" runat="server" 
                    style="color: #006600; font-weight: 700; background-color: #FFFFFF" 
                    Text="Pesquisar" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="CNPJ" DataSourceID="SqlDataSource1" style="color: #006600" 
        onrowdatabound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                SortExpression="ID" />
            <asp:BoundField DataField="CNPJ" HeaderText="CNPJ" ReadOnly="True" 
                SortExpression="CNPJ" />
            <asp:BoundField DataField="SENHA" HeaderText="SENHA" SortExpression="SENHA" 
                ApplyFormatInEditMode="True" />
            <asp:BoundField DataField="NIVEL" HeaderText="NIVEL" SortExpression="NIVEL" />
            <asp:CheckBoxField DataField="ATIVO" HeaderText="ATIVO" 
                SortExpression="ATIVO" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
        
        
        SelectCommand="SELECT * FROM [TBLogin] WHERE ([CNPJ] = @CNPJ)" 
        UpdateCommand="UPDATE TBLogin SET SENHA = @SENHA, ATIVO=@ATIVO WHERE (ID = @ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TBox1" Name="CNPJ" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="SENHA" />
            <asp:Parameter Name="ATIVO" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
