using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace JFCWEB.Paginas
{
    public partial class Pedidos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Ped"] != null)
            {
                string pedidoId = Session["Ped"].ToString();
                TBox5.Text = pedidoId;
                TextBx1.Text = pedidoId;

                strcon = ConfigurationManager.ConnectionStrings["jfcverdurasConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    // Usando LEFT JOIN para garantir que os dados do pedido apareçam mesmo se o nome do parceiro falhar
                    // Agora buscando CODPARC também para garantir um JOIN mais preciso se necessário, 
                    // mas mantendo CGC_CPF como chave principal de busca por enquanto
                    string sql = @"SELECT P.CGC_CPF, P.DTEMISSAO, P.DTENTREGA, P.STATUS, T.NOMEPARC 
                                 FROM PEDIDO P 
                                 LEFT JOIN TGFPAR T ON P.CGC_CPF = T.CGC_CPF 
                                 WHERE P.pedidoID = @pedidoID";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@pedidoID", pedidoId);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        string cnpj = dr["CGC_CPF"] != DBNull.Value ? dr["CGC_CPF"].ToString().Trim() : "";
                        TxtBox5.Text = cnpj;
                        
                        string cliente = dr["NOMEPARC"] != DBNull.Value ? dr["NOMEPARC"].ToString().Trim() : "Não Identificado";
                        Lbel8.Text = cliente;
                        
                        if (dr["DTEMISSAO"] != DBNull.Value)
                            Lbel9.Text = "Pedido feito em " + Convert.ToDateTime(dr["DTEMISSAO"]).ToString("dd/MM/yyyy HH:mm");
                        
                        if (dr["DTENTREGA"] != DBNull.Value)
                        {
                            Lbel7.Text = Convert.ToDateTime(dr["DTENTREGA"]).ToString("dd/MM/yyyy");
                        }
                        else
                        {
                            Lbel7.Text = "Não informada";
                        }
                        
                        TBox6.Text = dr["STATUS"].ToString().Trim();
                    }
                    con.Close();
                }
            }
            else
            {
                Response.Redirect("~/Cliente/Menu4.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //String tmp1 = " ";
            
            }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // Lógica de cores removida pois agora usamos gridview-modern no CSS
        }

        protected void GridView2_DataBound(object sender, EventArgs e)
        {
            decimal TotalQtde = 0;
            decimal TotalValor = 0;
            foreach (GridViewRow row in GridView2.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    decimal qtde;
                    decimal valor;
                    
                    // Ajuste de índices para bater com a nova GridView2
                    if (decimal.TryParse(row.Cells[2].Text, out qtde))
                        TotalQtde += qtde;
                        
                    string totalText = row.Cells[4].Text.Replace("R$", "").Trim();
                    if (decimal.TryParse(totalText, out valor))
                        TotalValor += valor;
                }
            }
            Label2.Text = TotalQtde.ToString("N0");
            Label3.Text = TotalValor.ToString("C2");
        }

        protected void GridView2_Load(object sender, EventArgs e)
        {
            GridView2.DataBind();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string status = DataBinder.Eval(e.Row.DataItem, "Status").ToString().ToUpper();
                if (status == "FINALIZADO")
                {
                    Btt4.Visible = false;
                    Label1.Text = "Este pedido já foi finalizado e não pode ser alterado.";
                    Label1.Visible = true;
                    pnlCancelamento.Visible = false;
                }
                else if (status == "CANCELADO")
                {
                    Btt4.Visible = false;
                    pnlCancelamento.Visible = true;
                    Label1.Text = "Este pedido foi cancelado.";
                    Label1.Visible = true;
                }
                else
                {
                    Btt4.Visible = true;
                    Label1.Visible = false;
                    pnlCancelamento.Visible = false;
                }
            }
        }

        protected void SqlDataSource4_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                // Se a tabela LogCancelamento não existir ou houver outro erro de SQL, 
                // ocultamos o painel e marcamos a exceção como tratada para não quebrar a página.
                pnlCancelamento.Visible = false;
                e.ExceptionHandled = true;
                
                // Opcionalmente podemos mostrar um aviso discreto
                // Label1.Text += " (Informações detalhadas do cancelamento indisponíveis)";
            }
        }

        protected void Btt3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Relatorio.aspx?sendEmail=1");
        }

        protected void Btt4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            
            // Tenta pré-preencher com dados do cliente logado se possível
            if (Session["cgc"] != null)
            {
                string cnpj = Session["cgc"].ToString();
                strcon = ConfigurationManager.ConnectionStrings["jfcverdurasConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    string sql = "SELECT NOMEPARC, EMAIL FROM TGFPAR WHERE CGC_CPF = @CGC_CPF";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@CGC_CPF", cnpj);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        if (string.IsNullOrEmpty(Tb1.Text)) Tb1.Text = dr["NOMEPARC"].ToString().Trim();
                        if (string.IsNullOrEmpty(Tb3.Text)) Tb3.Text = dr["EMAIL"].ToString().Trim();
                    }
                }
            }

            var ip = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (string.IsNullOrWhiteSpace(ip))
                ip = Request.ServerVariables["REMOTE_ADDR"];
            else
                ip = ip.Split(',').First();
                
            Lb1.Text = ip;
        }

        public string strcon { get; set; }
        public SqlConnection conn { get; set; }

        protected void Btt5_Click(object sender, EventArgs e)
        {
            // Lógica de duplicação mantida
            strcon = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
            using (conn = new SqlConnection(strcon))
            {
                conn.Open();
                string del01 = ("DELETE FROM ITENS_PEDIDO WHERE CGC_CPF = @CGC_CPF AND pedidoID is NULL");
                SqlCommand comm02 = new SqlCommand(del01, conn);
                comm02.Parameters.AddWithValue("@CGC_CPF", TxtBox5.Text);
                comm02.ExecuteNonQuery();

                string sql01 = ("INSERT INTO ITENS_PEDIDO(CODPROD, CGC_CPF, CODPARC, QTDE) SELECT CODPROD,CGC_CPF,CODPARC,QTDE FROM ITENS_PEDIDO WHERE (pedidoID=@PEDIDO AND QTDE>0)");
                SqlCommand comm01 = new SqlCommand(sql01, conn);
                comm01.Parameters.AddWithValue("@PEDIDO", TBox5.Text);
                comm01.ExecuteNonQuery();
            }
            Response.Redirect("Novo.aspx");
        }

        protected void Bton1_Click(object sender, EventArgs e)
        {
            string cancela = TBox5.Text;
            strcon = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
            using (conn = new SqlConnection(strcon))
            {
                conn.Open();
                string sql = ("UPDATE PEDIDO SET STATUS='CANCELADO' WHERE pedidoID=@entrega");
                SqlCommand commsql = new SqlCommand(sql, conn);
                commsql.Parameters.AddWithValue("@entrega", cancela);
                int x = commsql.ExecuteNonQuery();

                if (x == 1)
                {
                    try 
                    {
                        string sql2 = ("INSERT INTO LogCancelamento (IdPedido, DataCan, IdNome, IdEmail, IdTel, IdIP) VALUES (@Pedido, @Data, @Nome, @Email, @Tel, @Ip)");
                        SqlCommand commsql2 = new SqlCommand(sql2, conn);
                        commsql2.Parameters.AddWithValue("@Pedido", cancela);
                        commsql2.Parameters.AddWithValue("@Data", DateTime.Now);
                        commsql2.Parameters.AddWithValue("@Nome", Tb1.Text);
                        commsql2.Parameters.AddWithValue("@Email", Tb3.Text);
                        commsql2.Parameters.AddWithValue("@Tel", Tb2.Text);
                        commsql2.Parameters.AddWithValue("@Ip", Lb1.Text);
                        commsql2.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        // Se a tabela de log falhar (ex: não existe), o pedido continua cancelado no sistema principal
                        // mas não registramos os detalhes no LogCancelamento.
                    }

                    Label1.Text = "Pedido Cancelado com sucesso!";
                    Label1.CssClass = "alert alert-success d-block mb-4 fw-bold shadow-sm";
                    Label1.Visible = true;
                    Panel2.Visible = false;
                }
                else
                {
                    Label1.Text = "Falha ao cancelar! Verifique se o pedido ainda existe.";
                    Label1.Visible = true;
                }
            }
        }

        protected void Bt01_Click(object sender, EventArgs e)
        {
            Bton1_Click(sender, e);
        }
    }
}
