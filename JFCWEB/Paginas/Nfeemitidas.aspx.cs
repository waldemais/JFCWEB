using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JFCWEB.Paginas
{
    public partial class Nfeemitidas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtBox1.Text = Session["cgc"].ToString();
        }
    }
}