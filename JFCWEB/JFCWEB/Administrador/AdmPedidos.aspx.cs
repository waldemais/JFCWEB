using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JFCWEB.Usuario
{
    public partial class AdmPedidos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
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
                    e.Row.Cells[5].ForeColor = System.Drawing.Color.Red;
                if (Status == "FINALIZADO")
                    e.Row.Cells[5].ForeColor = System.Drawing.Color.Blue;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TBo1.Text = GridView1.SelectedRow.Cells[0].Text;
            string numped = TBo1.Text;
            Session["Ped"] = numped;
            Response.Redirect("~/Paginas/Pedidos.aspx");
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
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
                    e.Row.Cells[5].ForeColor = System.Drawing.Color.Red;
                if (Status == "FINALIZADO")
                    e.Row.Cells[5].ForeColor = System.Drawing.Color.Blue;
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TBo1.Text = GridView2.SelectedRow.Cells[0].Text;
            string numped = TBo1.Text;
            Session["Ped"] = numped;
            Response.Redirect("~/Paginas/Pedidos.aspx");
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            TBo1.Text = GridView3.SelectedRow.Cells[0].Text;
            string numped = TBo1.Text;
            Session["Ped"] = numped;
            Response.Redirect("~/Paginas/Pedidos.aspx");
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

       
    }
}