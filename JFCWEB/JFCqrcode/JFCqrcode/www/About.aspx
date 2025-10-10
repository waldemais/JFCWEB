<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="Rastreamento.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        About
    </h2>
    <p>
        Put content here.
    </p>
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" 
            style="margin-bottom: 0px" />
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Importar" 
            onclick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="Statuslbl" runat="server"></asp:Label>
    </div>
</asp:Content>
