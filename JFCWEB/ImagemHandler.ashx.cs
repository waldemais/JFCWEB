
using System;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace JFCWEB
{
    /// <summary>
    /// Descrição resumida de ImagemHandler11
    /// </summary>
    public class ImagemHandler11 : IHttpHandler
    {
        string strcon = ConfigurationManager.ConnectionStrings["Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030"].ConnectionString;
        public void ProcessRequest(HttpContext context)
        {
            string imagemID = context.Request.QueryString["FOTO"];
            SqlConnection connection = new SqlConnection(strcon);
            connection.Open();
            SqlCommand command = new SqlCommand("select FOTO from CRM1 where id=" + imagemID, connection);
            SqlDataReader dr = command.ExecuteReader();
            dr.Read();
            context.Response.BinaryWrite((Byte[])dr[0]);
            connection.Close();
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}