using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace JFCWEB
{
    public partial class DtEntrega : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["cgc"] != null)
                {
                    string cnpj = Session["cgc"].ToString();
                    TxtBx.Text = cnpj;
                    Lb1.Text = cnpj;

                    strcon = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
                    using (conn = new SqlConnection(strcon))
                    {
                        conn.Open();
                        string sql = "SELECT NOMEPARC FROM TGFPAR WHERE CGC_CPF=@cnpj";
                        SqlCommand cmd = new SqlCommand(sql, conn);
                        cmd.Parameters.AddWithValue("@cnpj", cnpj);
                        var result = cmd.ExecuteScalar();
                        if (result != null)
                        {
                            Lb2.Text = result.ToString();
                        }
                    }
                }
                else
                {
                    Response.Redirect("~/Default.aspx");
                }
            }
        }
        
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }

      protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton8_Load(object sender, EventArgs e)
        {

        }

      protected void Button1_Click(object sender, EventArgs e)
        {
            strcon = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
            conn = new SqlConnection(strcon);
            conn.Open();
            string sqlgrade = ("SELECT TabProg.CODPARC FROM TabProg INNER JOIN TGFPAR ON TabProg.CODPARC = TGFPAR.CODPARC WHERE (TGFPAR.CGC_CPF = @CGC_CPF)");
            SqlCommand commgr = new SqlCommand(sqlgrade, conn);
            commgr.Parameters.AddWithValue("@CGC_CPF", TxtBx.Text);
            var grade = commgr.ExecuteScalar();
            if (grade != null)
            {
                string del01 = ("DELETE FROM ITENS_PEDIDO WHERE CGC_CPF = @CGC_CPF AND pedidoID is NULL");
                SqlCommand comm02 = new SqlCommand(del01, conn);
                comm02.Parameters.AddWithValue("@CGC_CPF", TxtBx.Text);
                comm02.ExecuteNonQuery();
                //
                string sql01 = ("INSERT INTO ITENS_PEDIDO(CODPROD, CGC_CPF, CODPARC) SELECT DISTINCT CODPROD, @CGC_CPF, CODPARC FROM ITENS WHERE (CGC_CPF = @CGC_CPF)");
                SqlCommand comm01 = new SqlCommand(sql01, conn);
                comm01.Parameters.AddWithValue("@CGC_CPF", TxtBx.Text);
                comm01.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("~/Paginas/Novo.aspx");
            }
            else
            {
                conn.Close();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "alert('Dias de entrega não cadastrado. Contate o Atendimento!')", true);
            }
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://web.whatsapp.com/send?phone=5521973670250");
        }
    }
}