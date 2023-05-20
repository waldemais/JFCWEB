using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace JFCWEB
{
    public partial class Grade1 : System.Web.UI.Page
    {
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
              GridView1.DataBind();
        }
        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView3.DataBind();
        }
        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView4.DataBind();
        }

        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView5.DataBind();
        }

        protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView6.DataBind();
        }

        protected void GridView7_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView7.DataBind();
        }

        protected void GridView8_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView8.DataBind();
        }
        protected void RBList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RBList1.Items[0].Selected)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='True' WHERE CODPARC=@CODPARC AND DIASEM IN ('seg','qua','sex')");
                string selet2 = ("UPDATE TabProg SET ATIVO='False' WHERE CODPARC=@CODPARC AND DIASEM IN ('dom','ter','qui','sáb')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                SqlCommand comm2 = new SqlCommand(selet2, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm2.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                comm2.ExecuteNonQuery();
                conn.Close();
                GridView1.DataBind();
                GridView3.DataBind();
                GridView4.DataBind();
                GridView5.DataBind();
                GridView6.DataBind();
                GridView7.DataBind();
                GridView8.DataBind();
               
            }
            if (RBList1.Items[1].Selected)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='True' WHERE CODPARC=@CODPARC AND DIASEM IN ('ter','qui','sáb')");
                string selet2 = ("UPDATE TabProg SET ATIVO='False' WHERE CODPARC=@CODPARC AND DIASEM IN ('dom','seg','qua','sex')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                SqlCommand comm2 = new SqlCommand(selet2, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm2.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                comm2.ExecuteNonQuery();
                conn.Close();
                GridView1.DataBind();
                GridView3.DataBind();
                GridView4.DataBind();
                GridView5.DataBind();
                GridView6.DataBind();
                GridView7.DataBind();
                GridView8.DataBind();
            }
            if (RBList1.Items[2].Selected)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='True' WHERE CODPARC=@CODPARC AND DIASEM IN ('qua','sáb')");
                string selet2 = ("UPDATE TabProg SET ATIVO='False' WHERE CODPARC=@CODPARC AND DIASEM IN ('dom','seg','ter','qui','sex')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                SqlCommand comm2 = new SqlCommand(selet2, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm2.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                comm2.ExecuteNonQuery();
                conn.Close();
                GridView1.DataBind();
                GridView3.DataBind();
                GridView4.DataBind();
                GridView5.DataBind();
                GridView6.DataBind();
                GridView7.DataBind();
                GridView8.DataBind();
            }
            //Response.Redirect(Request.RawUrl);
           
                }
        protected void Btn1_Click(object sender, EventArgs e)
        {
          strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string sql = ("SELECT CODPARC FROM TabProg WHERE CODPARC=@CODPARC");
            SqlCommand comm = new SqlCommand(sql, conn);
            comm.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            var x = comm.ExecuteScalar();
            if (x == null)
            {
                RBList1.Enabled = false;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "alert('Sem entrega programada, Selecione Cliente Novo!')", true);
               Btn2.Visible = true;
            }
            else
            {
            RBList1.SelectedIndex = -1;
            RBList1.Enabled = true;
            }
            
        }

        protected void TxtBox1_Load(object sender, EventArgs e)
        {
            Btn2.Visible = false;
           // RBList1.Visible = false;
        }

        protected void Btn2_Click(object sender, EventArgs e)
        {
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            //*Limpando a tabela
            string del01 = ("DELETE FROM TabProg WHERE CODPARC=@CODPARC");
            SqlCommand comm02 = new SqlCommand(del01, conn);
            comm02.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            comm02.ExecuteNonQuery();
            //*
            string sql1 = ("INSERT INTO TabProg (CODPARC, DIASEM, TEMPO, ATIVO, LIMDIA, LIMHORA, DIA) VALUES (@CODPARC, 'dom', '12', 'True', 'Sábado', 10, 7)");
            SqlCommand comm1 = new SqlCommand(sql1, conn);
            comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            comm1.ExecuteNonQuery();
            string sql2 = ("INSERT INTO TabProg (CODPARC, DIASEM, TEMPO, ATIVO, LIMDIA, LIMHORA, DIA) VALUES (@CODPARC, 'seg', '12', 'True', 'Sábado', 10, 7)");
            SqlCommand comm2 = new SqlCommand(sql2, conn);
            comm2.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            comm2.ExecuteNonQuery();
            string sql3 = ("INSERT INTO TabProg (CODPARC, DIASEM, TEMPO, ATIVO, LIMDIA, LIMHORA, DIA) VALUES (@CODPARC, 'ter', '12', 'True', 'Segunda-Feira', 10, 2)");
            SqlCommand comm3 = new SqlCommand(sql3, conn);
            comm3.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            comm3.ExecuteNonQuery();
            string sql4 = ("INSERT INTO TabProg (CODPARC, DIASEM, TEMPO, ATIVO, LIMDIA, LIMHORA, DIA) VALUES (@CODPARC, 'qua', '12', 'True', 'Terça-Feira', 10, 3)");
            SqlCommand comm4 = new SqlCommand(sql4, conn);
            comm4.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            comm4.ExecuteNonQuery();
            string sql5 = ("INSERT INTO TabProg (CODPARC, DIASEM, TEMPO, ATIVO, LIMDIA, LIMHORA, DIA) VALUES (@CODPARC, 'qui', '12', 'True', 'Quarta-Feira', 10, 4)");
            SqlCommand comm5 = new SqlCommand(sql5, conn);
            comm5.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            comm5.ExecuteNonQuery();
            string sql6 = ("INSERT INTO TabProg (CODPARC, DIASEM, TEMPO, ATIVO, LIMDIA, LIMHORA, DIA) VALUES (@CODPARC, 'sex', '12', 'True', 'Quinta-Feira', 10, 5)");
            SqlCommand comm6 = new SqlCommand(sql6, conn);
            comm6.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            comm6.ExecuteNonQuery();
            string sql7 = ("INSERT INTO TabProg (CODPARC, DIASEM, TEMPO, ATIVO, LIMDIA, LIMHORA, DIA) VALUES (@CODPARC, 'sáb', '12', 'True', 'Sexta-Feira', 10, 6)");
            SqlCommand comm7 = new SqlCommand(sql7, conn);
            comm7.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            comm7.ExecuteNonQuery();
            conn.Close();
            Lbl01.Text = " ";
            GridView1.DataBind();
            GridView3.DataBind();
            GridView4.DataBind();
            GridView5.DataBind();
            GridView6.DataBind();
            GridView7.DataBind();
            GridView8.DataBind();
            GridView9.DataBind();
        }
        protected void DDL1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Semana = DDL1.Text;
            string Dia = "seg";
            int Numdia = DDL1.SelectedIndex;
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string cbnome = ("UPDATE TabProg SET LIMDIA=@LIMDIA,DIA=@NUMDIA WHERE CODPARC=@CODPARC AND DIASEM = @DIASEM");
            SqlCommand commse = new SqlCommand(cbnome, conn);
            commse.Parameters.AddWithValue("@LIMDIA", Semana);
            commse.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            commse.Parameters.AddWithValue("@DIASEM", Dia);
            commse.Parameters.AddWithValue("@NUMDIA", Numdia);
            commse.ExecuteNonQuery();
            conn.Close();
        }

        protected void DDL2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Hora = DDL2.Text;
            string Dia = "seg";

            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string cbhora = ("UPDATE TabProg SET LIMHORA=@LIMHORA WHERE CODPARC=@CODPARC AND DIASEM = @DIASEM");
            SqlCommand commho = new SqlCommand(cbhora, conn);
            commho.Parameters.AddWithValue("@LIMHORA", Hora);
            commho.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            commho.Parameters.AddWithValue("@DIASEM", Dia);
            commho.ExecuteNonQuery();
            conn.Close();
        }

        protected void DDL3_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Semana = DDL3.Text;
            string Dia = "ter";
            int Numdia = DDL3.SelectedIndex;
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string cbnome = ("UPDATE TabProg SET LIMDIA=@LIMDIA,DIA=@NUMDIA WHERE CODPARC=@CODPARC AND DIASEM = @DIASEM");
            SqlCommand commse = new SqlCommand(cbnome, conn);
            commse.Parameters.AddWithValue("@LIMDIA", Semana);
            commse.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            commse.Parameters.AddWithValue("@DIASEM", Dia);
            commse.Parameters.AddWithValue("@NUMDIA", Numdia);
            commse.ExecuteNonQuery();
            conn.Close();
        }

        protected void DDL4_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Hora = DDL4.Text;
            string Dia = "ter";

            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string cbhora = ("UPDATE TabProg SET LIMHORA=@LIMHORA WHERE CODPARC=@CODPARC AND DIASEM = @DIASEM");
            SqlCommand commho = new SqlCommand(cbhora, conn);
            commho.Parameters.AddWithValue("@LIMHORA", Hora);
            commho.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            commho.Parameters.AddWithValue("@DIASEM", Dia);
            commho.ExecuteNonQuery();
            conn.Close();
        }

        protected void DDL5_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Semana = DDL5.Text;
            string Dia = "qua";
            int Numdia = DDL5.SelectedIndex;
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string cbnome = ("UPDATE TabProg SET LIMDIA=@LIMDIA,DIA=@NUMDIA WHERE CODPARC=@CODPARC AND DIASEM = @DIASEM");
            SqlCommand commse = new SqlCommand(cbnome, conn);
            commse.Parameters.AddWithValue("@LIMDIA", Semana);
            commse.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            commse.Parameters.AddWithValue("@DIASEM", Dia);
            commse.Parameters.AddWithValue("@NUMDIA", Numdia);
            commse.ExecuteNonQuery();
            conn.Close();
        }

        protected void DDL6_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Hora = DDL6.Text;
            string Dia = "qua";

            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string cbhora = ("UPDATE TabProg SET LIMHORA=@LIMHORA WHERE CODPARC=@CODPARC AND DIASEM = @DIASEM");
            SqlCommand commho = new SqlCommand(cbhora, conn);
            commho.Parameters.AddWithValue("@LIMHORA", Hora);
            commho.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            commho.Parameters.AddWithValue("@DIASEM", Dia);
            commho.ExecuteNonQuery();
            conn.Close();
        }
        protected void DDL7_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Semana = DDL7.Text;
            string Dia = "qui";
            int Numdia = DDL7.SelectedIndex;
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string cbnome = ("UPDATE TabProg SET LIMDIA=@LIMDIA,DIA=@NUMDIA WHERE CODPARC=@CODPARC AND DIASEM = @DIASEM");
            SqlCommand commse = new SqlCommand(cbnome, conn);
            commse.Parameters.AddWithValue("@LIMDIA", Semana);
            commse.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            commse.Parameters.AddWithValue("@DIASEM", Dia);
            commse.Parameters.AddWithValue("@NUMDIA", Numdia);
            commse.ExecuteNonQuery();
            conn.Close();
        }

        protected void DDL8_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Hora = DDL8.Text;
            string Dia = "qui";

            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string cbhora = ("UPDATE TabProg SET LIMHORA=@LIMHORA WHERE CODPARC=@CODPARC AND DIASEM = @DIASEM");
            SqlCommand commho = new SqlCommand(cbhora, conn);
            commho.Parameters.AddWithValue("@LIMHORA", Hora);
            commho.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            commho.Parameters.AddWithValue("@DIASEM", Dia);
            commho.ExecuteNonQuery();
            conn.Close();
        }
        protected void DDL9_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Semana = DDL9.Text;
            string Dia = "sex";
            int Numdia = DDL9.SelectedIndex;
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string cbnome = ("UPDATE TabProg SET LIMDIA=@LIMDIA,DIA=@NUMDIA WHERE CODPARC=@CODPARC AND DIASEM = @DIASEM");
            SqlCommand commse = new SqlCommand(cbnome, conn);
            commse.Parameters.AddWithValue("@LIMDIA", Semana);
            commse.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            commse.Parameters.AddWithValue("@DIASEM", Dia);
            commse.Parameters.AddWithValue("@NUMDIA", Numdia);
            commse.ExecuteNonQuery();
            conn.Close();
        }

        protected void DDL10_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Hora = DDL10.Text;
            string Dia = "sex";

            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string cbhora = ("UPDATE TabProg SET LIMHORA=@LIMHORA WHERE CODPARC=@CODPARC AND DIASEM = @DIASEM");
            SqlCommand commho = new SqlCommand(cbhora, conn);
            commho.Parameters.AddWithValue("@LIMHORA", Hora);
            commho.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            commho.Parameters.AddWithValue("@DIASEM", Dia);
            commho.ExecuteNonQuery();
            conn.Close();
        }
        protected void DDL11_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Semana = DDL11.Text;
            string Dia = "sáb";
            int Numdia = DDL11.SelectedIndex;
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string cbnome = ("UPDATE TabProg SET LIMDIA=@LIMDIA,DIA=@NUMDIA WHERE CODPARC=@CODPARC AND DIASEM = @DIASEM");
            SqlCommand commse = new SqlCommand(cbnome, conn);
            commse.Parameters.AddWithValue("@LIMDIA", Semana);
            commse.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            commse.Parameters.AddWithValue("@DIASEM", Dia);
            commse.Parameters.AddWithValue("@NUMDIA", Numdia);
            commse.ExecuteNonQuery();
            conn.Close();
        }

        protected void DDL12_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Hora = DDL12.Text;
            string Dia = "sáb";

            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string cbhora = ("UPDATE TabProg SET LIMHORA=@LIMHORA WHERE CODPARC=@CODPARC AND DIASEM = @DIASEM");
            SqlCommand commho = new SqlCommand(cbhora, conn);
            commho.Parameters.AddWithValue("@LIMHORA", Hora);
            commho.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            commho.Parameters.AddWithValue("@DIASEM", Dia);
            commho.ExecuteNonQuery();
            conn.Close();
        }
        protected void DDL13_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Semana = DDL13.Text;
            string Dia = "dom";
            int Numdia = DDL13.SelectedIndex;
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string cbnome = ("UPDATE TabProg SET LIMDIA=@LIMDIA,DIA=@NUMDIA WHERE CODPARC=@CODPARC AND DIASEM = @DIASEM");
            SqlCommand commse = new SqlCommand(cbnome, conn);
            commse.Parameters.AddWithValue("@LIMDIA", Semana);
            commse.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            commse.Parameters.AddWithValue("@DIASEM", Dia);
            commse.Parameters.AddWithValue("@NUMDIA", Numdia);
            commse.ExecuteNonQuery();
            conn.Close();
        }

        protected void DDL14_SelectedIndexChanged(object sender, EventArgs e)
        {
            string Hora = DDL14.Text;
            string Dia = "dom";

            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string cbhora = ("UPDATE TabProg SET LIMHORA=@LIMHORA WHERE CODPARC=@CODPARC AND DIASEM = @DIASEM");
            SqlCommand commho = new SqlCommand(cbhora, conn);
            commho.Parameters.AddWithValue("@LIMHORA", Hora);
            commho.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
            commho.Parameters.AddWithValue("@DIASEM", Dia);
            commho.ExecuteNonQuery();
            conn.Close();
        }
        protected void CBox1_CheckedChanged(object sender, EventArgs e)
        {
            
            
        }

        protected void CBox2_CheckedChanged(object sender, EventArgs e)
        {
                       
        }

        protected void CBox3_CheckedChanged(object sender, EventArgs e)
        {
                       
        }

        protected void CBox4_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void CBox5_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void CBox6_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void CBox7_CheckedChanged(object sender, EventArgs e)
        {
                      
        }

        protected void CBo1_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void CBo2_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void CBo3_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void CBo4_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void CBo5_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void CBo6_CheckedChanged(object sender, EventArgs e)
        {
         
        }

        protected void CBo7_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void Btn3_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.RawUrl);
        }

        protected void Btt1_Click(object sender, EventArgs e)
        {
            if (CBox1.Checked == true)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='False' WHERE CODPARC=@CODPARC AND DIASEM =('seg')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                conn.Close();
                GridView1.Visible = false;
            }
            if (CBo1.Checked == true)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='True' WHERE CODPARC=@CODPARC AND DIASEM =('seg')");
                                SqlCommand comm1 = new SqlCommand(selet1, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                conn.Close();
                GridView1.Visible = true;
            }
               GridView1.DataBind();
        }
        protected void Btt2_Click(object sender, EventArgs e)
        {
            if (CBox2.Checked == true)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='False' WHERE CODPARC=@CODPARC AND DIASEM =('ter')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                conn.Close();
                GridView3.Visible = false;
            }
            if (CBo2.Checked == true)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='True' WHERE CODPARC=@CODPARC AND DIASEM =('ter')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                conn.Close();
                GridView3.Visible = true;
            }
            GridView3.DataBind();
        }

        protected void Btt3_Click(object sender, EventArgs e)
        {
            if (CBox3.Checked == true)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='False' WHERE CODPARC=@CODPARC AND DIASEM =('qua')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                conn.Close();
                GridView4.Visible = false;
            }
            if (CBo3.Checked == true)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='True' WHERE CODPARC=@CODPARC AND DIASEM =('qua')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                conn.Close();
                GridView4.Visible = true;
            }
            GridView4.DataBind();
        }

        protected void Btt4_Click(object sender, EventArgs e)
        {
            if (CBox4.Checked == true)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='False' WHERE CODPARC=@CODPARC AND DIASEM =('qui')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                conn.Close();
                GridView5.Visible = false;
            }
            if (CBo4.Checked == true)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='True' WHERE CODPARC=@CODPARC AND DIASEM =('qui')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                conn.Close();
                GridView5.Visible = true;
            }
            GridView5.DataBind();
        }

        protected void Btt5_Click(object sender, EventArgs e)
        {
            if (CBox5.Checked == true)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='False' WHERE CODPARC=@CODPARC AND DIASEM =('sex')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                conn.Close();
                GridView6.Visible = false;
            }
            if (CBo5.Checked == true)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='True' WHERE CODPARC=@CODPARC AND DIASEM =('sex')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                conn.Close();
                GridView6.Visible = true;
            }
            GridView6.DataBind();
        }

        protected void Btt6_Click(object sender, EventArgs e)
        {
            if (CBox6.Checked == true)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='False' WHERE CODPARC=@CODPARC AND DIASEM =('sáb')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                conn.Close();
                GridView7.Visible = false;
            }
            if (CBo6.Checked == true)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='True' WHERE CODPARC=@CODPARC AND DIASEM =('sáb')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                conn.Close();
                GridView7.Visible = true;
            }
            GridView7.DataBind();
        }

        protected void Btt7_Click(object sender, EventArgs e)
        {
            if (CBox7.Checked == true)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='False' WHERE CODPARC=@CODPARC AND DIASEM =('dom')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                conn.Close();
                GridView8.Visible = false;
            }
            if (CBo7.Checked == true)
            {
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string selet1 = ("UPDATE TabProg SET ATIVO='True' WHERE CODPARC=@CODPARC AND DIASEM =('dom')");
                SqlCommand comm1 = new SqlCommand(selet1, conn);
                comm1.Parameters.AddWithValue("@CODPARC", TxtBox1.Text);
                comm1.ExecuteNonQuery();
                conn.Close();
                GridView8.Visible = true;
            }
            GridView8.DataBind();
        }
    }
}