<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajudaadm.aspx.cs" Inherits="JFCWEB.Administrador.Ajudaadm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Menu Ajuda</title>
    <style type="text/css">
        .style1
        {
            width: 199px;
            color: #006600;
            font-weight: 700;
            font-size: large;
            text-align: center;
        }
        .style2
        {
            font-size: large;
            color: #006600;
        }
        .style3
        {
            text-align: center;
            color: #006600;
            font-size: x-large;
        }
        .style4
        {
            font-size: 18pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="Left" 
        ImageUrl="~/Imagem/icons8-menu-48.png" 
        PostBackUrl="~/Administrador/Menu1.aspx" />
    <asp:ImageButton ID="ImageButton2" runat="server" ImageAlign="Right" 
        ImageUrl="~/Imagem/sair.jpg" PostBackUrl="~/Default.aspx" 
        style="text-align: left" Width="5%" />
    <div align="center" class="style2">
    
        <br />
    
        </div>
    <div>
                    <div class="style3">
    
        <strong>TUTORIAL DE UTILIZAÇÃO DO SITE DE PEDIDOS</strong></div>
    </div>
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="style1">
                    <span class="style4">Menu de Opções<br />
                    </span>
                    <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows" 
                        style="font-size: medium">
                        <HoverNodeStyle Font-Underline="True" ForeColor="Purple" />
                        <Nodes>
                            <asp:TreeNode NavigateUrl="~/Administrador/AjudaProdParc.aspx" Text="Parceiro" 
                                Value="Parceiro" Target="xxx"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Administrador/AjudaProduto.aspx" Text="Produto" 
                                Value="Produto" Target="xxx"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Administrador/AjudaProdParc.aspx" 
                                Text="Produtos X Parceiro" Value="Produtos X Parceiro" Target="xxx"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Administrador/AjudaPrograma.aspx" 
                                Text="Programação de Entrega" Value="Programação de Entrega" Target="xxx"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Administrador/AjudaVerPedidos.aspx" Target="xxx" 
                                Text="Consulta Pedidos" Value="Consulta Pedidos"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Administrador/AjudaPrevia.aspx" Target="xxx" 
                                Text="Exportar Pedidos" Value="Exportar Pedidos"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Administrador/AjudaColaborador.aspx" Target="xxx" 
                                Text="Colaborador" Value="Colaborador"></asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Bold="True" Font-Names="Tahoma" Font-Size="Larger" 
                            ForeColor="#006600" HorizontalPadding="5px" NodeSpacing="0px" 
                            VerticalPadding="0px" Font-Strikeout="False" Font-Underline="False" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" 
                            VerticalPadding="0px" />
                    </asp:TreeView>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td style="font-size: large; color: #006600">
                    <p>
                        O Sistema de Pedidos pela web foi criado para agilizar o processo de informação 
                        de pedidos para a fábrica, permitindo mais eficiência an entrega ao Cliente.<br />
                        As ferramentas de utilização foram criadas com a simplicidade para fácil 
                        manuseio, consiste em ícones mostrados abaixo:</p>
                    <p title="Ajuda">
                        Ìcone
                        Menu: Ao selecionar o ícone retorna ao Menu Principal.<br />
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagem/icons8-menu-48.png" 
                            Width="100px" />
&nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <p>
                        Menu Principal 
                        é local onde encontramos as ferramentas de acesso ao sistema.</p>
                    <p>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Imagem/Ajuda01.jpg" 
                            Width="600px" />
                    </p>
                    <p>
                        Ícone Sair: Sai do sistema e retorna a tela de Login.</p>
                    <p>
                        <br />
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Imagem/sair.jpg" 
                            Width="80px" />
                    </p>
                </td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
