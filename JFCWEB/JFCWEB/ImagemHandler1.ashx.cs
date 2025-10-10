using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace JFCWEB
{
    /// <summary>
    /// Descrição resumida de ImagemHandler1
    /// </summary>
    public class ImagemHandler1 : IHttpHandler
    {
        string strcon = ConfigurationManager.ConnectionStrings["Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=rh##1234"].ConnectionString;

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Olá, Mundo");
            string imagemID = context.Request.QueryString["ImgID"];
            SqlConnection connection = new SqlConnection(strcon);
            connection.Open();
            SqlCommand command = new SqlCommand("select Foto from CRM1 where id=" + imagemID, connection);
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