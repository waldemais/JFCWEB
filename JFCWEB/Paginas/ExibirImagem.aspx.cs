using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JFCWEB.Paginas
{
    public partial class ExibirImagem : System.Web.UI.Page
    {
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            strcon = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
            conn = new SqlConnection(strcon);
            try
            {
                int imagemID = Convert.ToInt32(Request.QueryString["Id"]);
               
                //using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {

                    const string SQL = "SELECT [Mime],[Foto] FROM [CRM1] WHERE [Id] = @id";

                    SqlCommand myCommand = new SqlCommand(SQL, conn);
                    myCommand.Parameters.AddWithValue("@id", imagemID);
                    conn.Open();
                    SqlDataReader myReader = myCommand.ExecuteReader();

                    if (myReader.Read())

                    {
                        Response.ContentType = myReader["Mime"].ToString();
                        Response.BinaryWrite((byte[])myReader["Foto"]);

                    }
                    myReader.Close();

                    conn.Close();

                }

            }

            catch (Exception ex)

            {

                Response.Write(ex.ToString());

            }
        }
    }
}