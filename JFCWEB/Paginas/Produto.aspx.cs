using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace JFCWEB
{
    public partial class Produto : System.Web.UI.Page
    {
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Btnovo_Click(object sender, EventArgs e)
        {
             Panel1.Visible = true;
        }

        protected void Bt2_Click(object sender, EventArgs e)
        {
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string sqlped = ("SELECT DISTINCT CODPROD FROM TGFPRO WHERE CODPROD = @codprod");
            SqlCommand commped = new SqlCommand(sqlped, conn);
            commped.Parameters.AddWithValue("@codprod", TB1.Text);
            var entrega = commped.ExecuteScalar();
            if (entrega != null)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "alert('Código do Produto já cadastrado!')", true);
                conn.Close();
            }
            else
            {
                string sql = ("INSERT INTO TGFPRO (CODPROD,DESCRPROD, PADRAO, CODPROSAP) VALUES (@CODPROD, @DESCPROD, @PADRAO, @CODPROSAP)");
                SqlCommand comm = new SqlCommand(sql, conn);
                comm.Parameters.AddWithValue("@CODPROD", TB1.Text);
                comm.Parameters.AddWithValue("@DESCPROD", TB2.Text);
                comm.Parameters.AddWithValue("@PADRAO", TB3.Text);
                comm.Parameters.AddWithValue("@CODPROSAP", TB1.Text);

                int x = comm.ExecuteNonQuery();
                if (x == 1)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "alert('Produto cadastrado!')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "alert('Falha na tentativa de cadastro!')", true);
                }
                conn.Close();
            }
        }
    }
}