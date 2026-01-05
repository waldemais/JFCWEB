using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using Microsoft.Reporting.Map.WebForms.BingMaps;

namespace JFCWEB
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Btt1_Click(object sender, EventArgs e)
        {
            string nomecgc = " ";
            string senhausu = " ";
            nomecgc = TBox1.Text;
            Session["cgc"] = nomecgc;
            senhausu = TBox2.Text;
            Session["serial"] = senhausu;
            strcon = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
            conn = new SqlConnection(strcon);
            conn.Open();
            string sql = "SELECT * FROM TBLogin WHERE CNPJ=@cnpj AND SENHA=@senha";
            string sqlx = "SELECT NIVEL FROM TBLogin WHERE CNPJ=@cnpj";
            string sqly = "SELECT ATIVO FROM TBLogin WHERE CNPJ=@cnpj";
            SqlCommand commsql = new SqlCommand(sql, conn);
            SqlCommand commsqlx = new SqlCommand(sqlx, conn);
            SqlCommand commsqly = new SqlCommand(sqly, conn);
            commsql.Parameters.AddWithValue("@cnpj", TBox1.Text);
            commsql.Parameters.AddWithValue("@senha", TBox2.Text);
            commsqlx.Parameters.AddWithValue("@cnpj", TBox1.Text);
            commsqly.Parameters.AddWithValue("@cnpj", TBox1.Text);
            string usu = TBox1.Text;
            string sen = TBox2.Text;
            var resultado = commsql.ExecuteScalar();
            var resnivel = commsqlx.ExecuteScalar();
            var resativo = commsqly.ExecuteScalar();
             conn.Close();
           if (resativo is false)
            {
                Lb1.Text = ("Entrar em contato com o Comercial.");
            }
               else if (resultado == null)
                {
                    Lb1.Text = ("Usuário ou Senha invalidos.");
                }
            
             else
            {
                if (TextBox1.Text == Session["CaptchaValue"].ToString())
                {
                    switch(resnivel)
                    {
                        case "admin":
                      Response.Redirect("Administrador/Menu1.aspx");
                            break;
                        case "Gestor":
                            Response.Redirect("Gestor/Menu2.aspx");
                            break;
                        case "Usuario":
                            Response.Redirect("Usuario/Menu3.aspx");
                            break;
                        case "Cliente":
                 Response.Redirect("Cliente/Menu4.aspx");
                  //Response.Redirect("Cliente/Popup.aspx");
                            break;
                        case "Zamp":
                            Response.Redirect("Zamp/ZampCrm1.aspx");
                            break;
                        case "Subway":
                            Response.Redirect("Subway/Subwaycrm1.aspx");
                                break;
                    }
                 
                 }
                else
               {
                    TextBox1.Text = "";
                      Lb1.Text = "Captcha Inválido, tente novamente!";
               }

            }      
             
        }
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }

            }
}