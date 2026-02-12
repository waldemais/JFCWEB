using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;

namespace JFCWEB.Paginas
{
    public partial class CRM4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Lbel1.Text = Session["cgc"].ToString();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                e.Row.Attributes.Add("onMouseOver", "this.style.backgroundColor='#99FF66'");

                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=''");

            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string Status = DataBinder.Eval(e.Row.DataItem, "Status").ToString();
                if (Status == "CANCELADO")
                    e.Row.Cells[3].ForeColor = System.Drawing.Color.Red;
                if (Status == "FINALIZADO")
                    e.Row.Cells[3].ForeColor = System.Drawing.Color.Blue;
            }
        }
        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TBo1.Text = GridView1.SelectedRow.Cells[0].Text;
            string numped = TBo1.Text;
            Session["Ped"] = numped;
            Response.Redirect("Pedidos.aspx");
        }

        
    }
}