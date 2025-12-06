using JFCWEB.Paginas;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JFCWEB
{
    public partial class Parceiro : System.Web.UI.Page
    {
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Btton02.Visible = false;
         
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
            TextBox2.Enabled = true;
            Button4.Enabled = false;
        }

        protected void Button02_Click(object sender, EventArgs e)
        {
            Lbel04.Text = (" ");
            strcon = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
            conn = new SqlConnection(strcon);
            conn.Open();
            string sqlped = ("SELECT DISTINCT CGC_CPF FROM TGFPAR WHERE CGC_CPF = @CGC_CPF");
            SqlCommand commped = new SqlCommand(sqlped, conn);
            commped.Parameters.AddWithValue("@CGC_CPF", TextBox3.Text);
            var entrega = commped.ExecuteScalar();
            if (entrega != null)
            {
                Lbel04.Text = ("Parceiro já cadastrado!");
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
            Btton04.Enabled = true;
        }

        protected void Btton04_Click(object sender, EventArgs e)
        {
            Lbel04.Text = (" ");
            Pnel01.Visible = true;
            Button02.Visible = false;
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (!String.IsNullOrEmpty(row.Cells[0].Text))
                TextBox2.Text = (row.Cells[0].Text).ToString();
                TextBox3.Text = (row.Cells[1].Text).ToString();
                TextBox4.Text = (row.Cells[2].Text).ToString();
                TextBox5.Text = (row.Cells[3].Text).ToString();
                TextBox6.Text = (row.Cells[4].Text).ToString();
                TextBox7.Text = (row.Cells[5].Text).ToString();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            strcon = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
            conn = new SqlConnection(strcon);
            string sql = ("UPDATE TGFPAR SET CODPARC=@CODPARC,CGC_CPF=@CGC, NOMEPARC=@NOME, EMAIL=@EMAIL, UF=@UF, ROTA=@ROTA, CODPARSAP=@CODPARC WHERE CODPARC=@ID");
            SqlCommand comm = new SqlCommand(sql, conn);
            comm.Parameters.AddWithValue("@ID", TextBox1.Text);
            comm.Parameters.AddWithValue("@CODPARC", TextBox2.Text);
            comm.Parameters.AddWithValue("@CGC", TextBox3.Text);
            comm.Parameters.AddWithValue("@NOME", TextBox4.Text);
            comm.Parameters.AddWithValue("@EMAIL", TextBox5.Text);
            comm.Parameters.AddWithValue("@UF", TextBox6.Text);
            comm.Parameters.AddWithValue("@ROTA", TextBox7.Text);
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            GridView1.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
          Btton04.Visible = true;
            TextBox2.Enabled = false;
            Btton02.Visible = true;
                    }
    }
}
