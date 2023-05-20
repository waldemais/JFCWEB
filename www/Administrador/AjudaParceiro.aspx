<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjudaParceiro.aspx.cs" Inherits="JFCWEB.Administrador.AjudaParceiro" EnableSessionState="ReadOnly" Trace="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajuda</title>
    <style type="text/css">
        .style1
        {
            color: #006600;
        }
        .style2
        {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div>
        <asp:Label ID="Label1" runat="server" 
            style="color: #006600; font-weight: 700; font-size: large" 
            Text="Cadastro de Parceiros"></asp:Label>
    </div>
    <div style="color: #006600">
        <ul>
            <li><span class="style1"><span class="style2">A tela inical do Cadastro de 
                Parceiros, consiste básicamente no cadastro de um novo parceiro..</span><br 
                    class="style2" />
                </span>
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" BorderStyle="Double" 
                    ImageUrl="~/Imagem/Parc03.jpg" Width="95%" />
            </li>
        </ul>
        <p>
            <br />
            <asp:Label ID="Label2" runat="server" 
                    style="color: #006600; font-weight: 700; font-size: large" 
                    Text="Pesquisa de Parceiro"></asp:Label>
        </p>
        <ul>
            <li class="style2">A tela de pesquisa de parceiros permite selecionar através do 
                código.</li>
        </ul>
        <p>
            <asp:Image ID="Image2" runat="server" BorderStyle="Double" 
                ImageUrl="~/Imagem/Parc01.jpg" Width="95%" />
        </p>
    </div>
    </form>
</body>
</html>
