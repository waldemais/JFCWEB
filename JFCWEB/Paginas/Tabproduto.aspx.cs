using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace JFCWEB
{
    public partial class Tabproduto : System.Web.UI.Page
    {
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BttoProd_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            strcon = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
                conn = new SqlConnection(strcon);
                conn.Open();
                string itempar = ("INSERT INTO ItemParceiros(CODPROD, CODPARC) VALUES (@codprod, @codparc)");
                SqlCommand comm = new SqlCommand(itempar, conn);
                comm.Parameters.AddWithValue("@codparc",TxtBxProd.Text);
                comm.Parameters.AddWithValue("@codprod",TxtBxprod1.Text);
                comm.ExecuteNonQuery();
                conn.Close();
                GridView1.DataBind();
        }

        protected void Butexc_Click(object sender, EventArgs e)
        {
            strcon = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
            conn = new SqlConnection(strcon);
            conn.Open();
            string itempar = ("DELETE FROM TABPROD WHERE CODPARC=@codparc AND CODPROD=@codprod");
            SqlCommand comm = new SqlCommand(itempar, conn);
            comm.Parameters.AddWithValue("@codparc", TxtBxProd.Text);
            comm.Parameters.AddWithValue("@codprod", TxtBxprod1.Text);
            comm.ExecuteNonQuery();
            conn.Close();
            GridView1.DataBind();
        }
    }
}