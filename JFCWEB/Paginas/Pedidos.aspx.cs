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
         //TBox5.Text = " ";
         TBox5.Text = Session["Ped"].ToString();
        foreach (GridViewRow row in GridView1.Rows)
            {
                if (!String.IsNullOrEmpty(row.Cells[0].Text))
                TBox6.Text = (row.Cells[5].Text).ToString();
                Lbel8.Text = (row.Cells[1].Text).ToString();
                TxtBox5.Text = (row.Cells[2].Text).ToString();
                Lbel7.Text = (row.Cells[4].Text).ToString();
                //Lbel11.Text = (row.Cells[4].Text).ToString();
                Lbel9.Text ="Pedido feito em "+ (row.Cells[3].Text).ToString();
                } 
        
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //String tmp1 = " ";
            
            }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                e.Row.Attributes.Add("onMouseOver", "this.style.backgroundColor='#99FF66'");

                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=''");

            }
            decimal Total = 0;
            decimal Soma = 0;
            foreach (GridViewRow row in GridView2.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    if (!string.IsNullOrEmpty(row.Cells[4].Text))
                        Total += Decimal.Parse(row.Cells[4].Text);
                    Soma += Decimal.Parse(row.Cells[6].Text);
                   Label2.Text = "Qtde Volumes = "+Total.ToString() + " - Valor Total = "+Soma.ToString("c2");
                }
            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string Status = DataBinder.Eval(e.Row.DataItem, "Status").ToString();
                if (Status == "FINALIZADO")
                {
                    GridView2.Enabled = false;
                    Btt4.Enabled = false;
                    Label1.Text = "Não é permitido Alterar o Pedido Finalizado!";
                }
                if (Status == "CANCELADO")
                {
                    GridView2.Enabled = false;
                    Btt4.Enabled = false;
                    Lab4.Visible = true;
                    Label1.Text = "Não é permitido Alterar um Pedido Cancelado!";
                }
                if (Status == "ABERTO")
                {
                    Btt4.Enabled = true;
                    Label1.Text = "";
                }
            }
        }

        protected void Btt3_Click(object sender, EventArgs e)
        {
          Response.Redirect("Relatorio.aspx");
           // Response.Write("<script>window.print();</script>");
            
        }

        protected void Btt4_Click(object sender, EventArgs e)
        {
            //*******************
            Panel2.Visible = true;
            GridView2.Visible = false;
            //String GetIP()
            {
                var ip = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

                if (!string.IsNullOrWhiteSpace(ip))
                {
                    var ips = ip.Split(',');

                    //return ips.First();
                    Lb01.Text = ips.First();
                }
                else
                {
                var ips =  Request.ServerVariables["REMOTE_ADDR"];
                Lb01.Text = ips.ToString();
                }
                
                
            }
             //******************

           
        }
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }

        protected void Btt5_Click(object sender, EventArgs e)
        {

            strcon = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
            conn = new SqlConnection(strcon); 
            conn.Open();
            //
            string del01 = ("DELETE FROM ITENS_PEDIDO WHERE CGC_CPF = @CGC_CPF AND pedidoID is NULL");
            SqlCommand comm02 = new SqlCommand(del01, conn);
            comm02.Parameters.AddWithValue("@CGC_CPF", TxtBox5.Text);
            comm02.ExecuteNonQuery();
            //
            string sql01 = ("INSERT INTO ITENS_PEDIDO(CODPROD, CGC_CPF, CODPARC, QTDE) SELECT CODPROD,CGC_CPF,CODPARC,QTDE FROM ITENS_PEDIDO WHERE (pedidoID=@PEDIDO AND QTDE>0)");
            SqlCommand comm01 = new SqlCommand(sql01, conn);
            comm01.Parameters.AddWithValue("@PEDIDO",TBox5.Text);
            comm01.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Novo.aspx");
        }

        protected void Bt01_Click(object sender, EventArgs e)
        {
            string cancela = TBox5.Text;
            strcon = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
            conn = new SqlConnection(strcon);
            conn.Open();
            string sql = ("UPDATE PEDIDO SET STATUS='CANCELADO' WHERE pedidoID=@entrega");
            SqlCommand commsql = new SqlCommand(sql, conn);
            commsql.Parameters.AddWithValue("@entrega", cancela);
            int x = commsql.ExecuteNonQuery();
            //**
            if (x == 1)
            {
                GridView2.Visible = true;
                Panel2.Visible = false;
                //***
                var data = DateTime.Now;
                string sql2 = ("INSERT INTO PedCancelado (PedidoID, Datacan, IdNome, IdEmail, IdTel, IdIP) VALUES (@Pedido, @Data, @Nome, @Email, @Tel, @Ip)");
                SqlCommand commsql2 = new SqlCommand(sql2, conn);
                commsql2.Parameters.AddWithValue("@Pedido", cancela);
                commsql2.Parameters.AddWithValue("@Data", data);
                commsql2.Parameters.AddWithValue("@Nome", Tb1.Text);
                commsql2.Parameters.AddWithValue("@Email", Tb2.Text);
                commsql2.Parameters.AddWithValue("@Tel", Tb3.Text);
                commsql2.Parameters.AddWithValue("@Ip", Lb01.Text);
                commsql2.ExecuteNonQuery();
               //**
                Label1.Text = ("Pedido Cancelado com sucesso  !");
                conn.Close();
            }
            else
            {
                Label1.Text = ("Falha! Verifique se o pedido existe!");
            }
        }
    }
    }