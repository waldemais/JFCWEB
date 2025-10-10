using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Drawing.Imaging;
namespace JFCWEB.Paginas
{
    public partial class CRM21 : System.Web.UI.Page
    {
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
                    TB1.Text = Session["Ped"].ToString();
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (!String.IsNullOrEmpty(row.Cells[0].Text))
                TB1.Text = (row.Cells[0].Text).ToString();
                Label1.Text = (row.Cells[12].Text).ToString();
                Label2.Text = (row.Cells[13].Text).ToString();
                Label3.Text = (row.Cells[1].Text).ToString();
                TextBox1.Text = (row.Cells[14].Text).ToString();
                TextBox2.Text = (row.Cells[15].Text).ToString();
                TextBox3.Text = (row.Cells[5].Text).ToString();
                TextBox4.Text = (row.Cells[3].Text).ToString();
                TextBox5.Text = (row.Cells[6].Text).ToString();
                TextBox6.Text = (row.Cells[7].Text).ToString();
                TextBox7.Text = (row.Cells[15].Text).ToString();
                TextBox8.Text = (row.Cells[11].Text).ToString();
                           }
            int imagemID = int.Parse(TB1.Text);
            hplnkExibeImagem.NavigateUrl = "~/Paginas/ExibirImagem.aspx?ID=" + imagemID.ToString();

        }
    }
}