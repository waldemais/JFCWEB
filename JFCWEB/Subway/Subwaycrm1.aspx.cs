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

namespace JFCWEB.Subway
{
    public partial class Subwaycrm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TB1.Text = GridView1.SelectedRow.Cells[0].Text;
            string numped = TB1.Text;
            Session["Ped"] = numped;
            Response.Redirect("~/Paginas/Crm1A.aspx");
        }
    }
}