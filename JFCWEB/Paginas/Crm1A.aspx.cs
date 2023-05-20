using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JFCWEB.Paginas
{
    public partial class Crm1A : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["Ped"].ToString();
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (!String.IsNullOrEmpty(row.Cells[0].Text))
                TextBox2.Text = (row.Cells[0].Text).ToString();
                TextBox3.Text = (row.Cells[1].Text).ToString();
                TextBox4.Text = (row.Cells[2].Text).ToString();
                TextBox5.Text = (row.Cells[3].Text).ToString();
                TextBox7.Text = (row.Cells[4].Text).ToString();
                TextBox8.Text = (row.Cells[5].Text).ToString();
                TextBox9.Text = (row.Cells[6].Text).ToString();
                TextBox10.Text = (row.Cells[7].Text).ToString();
                TextBox6.Text = (row.Cells[8].Text).ToString();

                            }
            int imagemID = int.Parse(TextBox1.Text);
            hplnkExibeImagem.NavigateUrl= "~/Paginas/ExibirImagem.aspx?ID=" + imagemID.ToString();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
    }
}