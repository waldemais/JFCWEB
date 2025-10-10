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
        protected void TxtBx_Load(object sender, EventArgs e)
        {
            TxtBx.Text = Session["cgc"].ToString();
            string CGC_CPF = " ";
            CGC_CPF = TxtBx.Text;
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=rh##1234";
            conn = new SqlConnection(strcon);
            conn.Open();
            //
        }
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=rh##1234";
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

                Response.Redirect("~/Paginas/Novo.aspx");

            }
            else
            {

            Labl5.Text = ("Sem Programa de Entrega!");
            }
        }
    }
}