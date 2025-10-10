<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="Rastreamento.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        color: #006600;
    }
</style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        UPLOAD DE ARQUIVO
    </h2>
    <p class="style1">
        Selecione a Planilha..
    </p>
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" 
            style="margin-bottom: 0px; color: #006600; font-weight: 700;" />
        <br />
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Importar" 
            onclick="Button1_Click" style="font-weight: 700; color: #006600" />
        <br />
        <br />
        <div>
        <asp:Label ID="Statuslbl" runat="server"></asp:Label>
            <br />
            <div>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
