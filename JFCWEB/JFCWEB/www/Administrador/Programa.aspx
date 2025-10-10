<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Programa.aspx.cs" Inherits="JFCWEB.Administrador.Programação" EnableEventValidation="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grade</title>
    <style type="text/css">
        .style1
        {
            color: #006600;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div class="style1">
        <strong>GRADE DE ENTREGA&nbsp; DE PEDIDOS</strong></div>
    <div>
        <div>
            <div>
            </div>
        </div>
        <div>
            <asp:Button ID="btnExcel" runat="server" onclick="btnExcel_Click" 
                Text="Baixar Planilha" 
                style="font-weight: 700; color: #006600; font-size: large; background-color: #FFFFFF" />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
            onpageindexchanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="CODPARC" HeaderText="Código" 
                    SortExpression="CODPARC" />
                <asp:BoundField DataField="NOMEPARC" HeaderText="Nome" 
                    SortExpression="NOMEPARC" />
                <asp:BoundField DataField="TEMPO" HeaderText="Prazo (horas)" 
                    SortExpression="TEMPO" />
                <asp:BoundField DataField="DIASEM" HeaderText="Dia Semana" 
                    SortExpression="DIASEM" />
                <asp:BoundField DataField="LIMDIA" HeaderText="Dia Limite" 
                    SortExpression="LIMDIA" />
                <asp:BoundField DataField="LIMHORA" DataFormatString="{0:0&quot;:00&quot;}" 
                    HeaderText="Hora Limite" SortExpression="LIMHORA" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:jfcwConnectionString %>" 
            
            SelectCommand="SELECT [CODPARC], [NOMEPARC], [TEMPO], [DIASEM], [LIMDIA], [LIMHORA] FROM [VPrograma] WHERE ([ATIVO] = @ATIVO) ORDER BY [CODPARC]">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="ATIVO" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
