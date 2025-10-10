using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace JFCWEB
{
    public partial class Parceiro : System.Web.UI.Page
    {
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_Load(object sender, EventArgs e)
        {
          Pnel01.Visible = false;
        }

        protected void Btton02_Click(object sender, EventArgs e)
        {
            Pnel01.Visible = true;
            TextBox1.Visible = false;
            Button1.Visible = false;
        }

        protected void Button02_Click(object sender, EventArgs e)
        {
            Lbel04.Text = (" ");
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
             string sqlped = ("SELECT DISTINCT CGC_CPF FROM TGFPAR WHERE CGC_CPF = @CGC_CPF");
            SqlCommand commped = new SqlCommand(sqlped, conn);
            commped.Parameters.AddWithValue("@CGC_CPF", TextBox3.Text);
            var entrega = commped.ExecuteScalar();
            if (entrega != null)
            {
                Lbel04.Text = ("CPF/CNPJ já cadastrado!");
                conn.Close();
            }
            else
            {
           string sql = ("INSERT INTO TGFPAR (CODPARC,CGC_CPF, NOMEPARC, EMAIL, UF, ROTA, CODPARSAP) VALUES (@CODPARC, @CGC_CPF, @NOMEPARC, @EMAIL, @UF, @ROTA, @CODPARC)");
           string ssl = ("INSERT INTO TBLogin (CNPJ, SENHA, NIVEL) VALUES (@CGC_CPF, '123456','Cliente')");
            SqlCommand comm = new SqlCommand(sql, conn);
            SqlCommand coms = new SqlCommand(ssl, conn);
            comm.Parameters.AddWithValue("@CODPARC", TextBox2.Text);
            comm.Parameters.AddWithValue("@CGC_CPF", TextBox3.Text);
            comm.Parameters.AddWithValue("@NOMEPARC", TextBox4.Text);
            comm.Parameters.AddWithValue("@EMAIL", TextBox5.Text);
            comm.Parameters.AddWithValue("@UF", TextBox6.Text);
            comm.Parameters.AddWithValue("@ROTA", TextBox7.Text);
            coms.Parameters.AddWithValue("@CGC_CPF", TextBox3.Text);
            coms.ExecuteNonQuery();
            int x = comm.ExecuteNonQuery();
            if (x == 1)
            {
                Lbel04.Text = ("Gravado com sucesso!");
                TextBox1.Visible = true;
                Button1.Visible = true;
              //  TextBox1.Text = TextBox3.Text;
               
            }
            else
            {
                Lbel04.Text = ("Falha!. Não cadastrado!");
            }
            conn.Close(); 
            GridView1.DataBind();
        }

      }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}