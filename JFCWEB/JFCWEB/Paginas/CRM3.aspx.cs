using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JFCWEB.Paginas
{
    public partial class CRM3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TBox1.Text = Session["cgc"].ToString();
        }

               protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            TBo1.Text = GridView1.SelectedRow.Cells[0].Text;
            string numped = TBo1.Text;
            Session["Ped"] = numped;
            Response.Redirect("~/Paginas/Crm1A.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}