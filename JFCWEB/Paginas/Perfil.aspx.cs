using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
namespace JFCWEB.Paginas
{
    public partial class Perfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtBx1.Text = Session["cgc"].ToString();
            TxtBx7.Visible = false;
            TxtBx8.Visible = false;
            TxtBx9.Visible = false;
            Butt2.Visible = false;

            foreach (GridViewRow row in Grid1.Rows)
            {
                if (!String.IsNullOrEmpty(row.Cells[0].Text))
                    TxtBx2.Text = (row.Cells[1].Text).ToString();
                TxtBx3.Text = (row.Cells[2].Text).ToString();
                TxtBx4.Text = (row.Cells[4].Text).ToString();
            }
        }

        protected void Btt1_Click(object sender, EventArgs e)
        {
            string senhaA, senhaB, senhaC, senhaD;
            senhaA = TxtBx5.Text;
            senhaB = TxtBx6.Text;
            senhaC = TxtBx10.Text;
            senhaD = Session["serial"].ToString();
            //**
            if (senhaA != senhaD)
            {

                Lbl4.Text = ("Senha atual inválida.");
                // else
                //  {
                //     
                //     
                //   }
            }
            if (senhaB == senhaC && senhaA == senhaD)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string sqlsen = ("UPDATE TBlogin SET SENHA=@tbsenha WHERE CNPJ=@CNPJ");
                SqlCommand commsqlsen = new SqlCommand(sqlsen, conn);
                commsqlsen.Parameters.AddWithValue("@tbsenha", TxtBx6.Text);
                commsqlsen.Parameters.AddWithValue("@CNPJ", TxtBx1.Text);
                commsqlsen.ExecuteNonQuery();
                conn.Close();
                Lbl4.Text = ("Senha Alterada com exito.");
            }
        
            else
            {
                Lbl4.Text = ("Senhas não conferem. Tente novamente");
               
            }

    //*  string senhaA, senhaC;
    //*   senhaA = TxtBx5.Text;

} 
        
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }

        protected void Txtbx7_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Butt1_Click(object sender, EventArgs e)
        {
            TxtBx7.Visible = true;
            TxtBx8.Visible = true;
            TxtBx9.Visible = true;
            Butt2.Visible = true;
        }

        protected void Butt2_Click(object sender, EventArgs e)
        {
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string sqlcontato = ("INSERT INTO Contato(CNPJ, NOME, EMAIL, TELEFONE) VALUES (@CNPJ, @nome, @email, @fone)");
            SqlCommand commsqlcontato = new SqlCommand(sqlcontato, conn);
            commsqlcontato.Parameters.AddWithValue("@CNPJ", TxtBx1.Text);
            commsqlcontato.Parameters.AddWithValue("@nome", TxtBx7.Text);
            commsqlcontato.Parameters.AddWithValue("@email", TxtBx8.Text);
            commsqlcontato.Parameters.AddWithValue("@fone", TxtBx9.Text);
            commsqlcontato.ExecuteNonQuery();
            conn.Close();
            GrdV1.DataBind();
        }

          }
}