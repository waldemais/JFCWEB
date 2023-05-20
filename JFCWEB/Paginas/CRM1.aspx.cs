using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JFCWEB.Paginas
{
    public partial class CRM1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TBo1.Text = GridView1.SelectedRow.Cells[0].Text;
            string numped = TBo1.Text;
            Session["Ped"] = numped;
            Response.Redirect("~/Paginas/CRM2.aspx");
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}