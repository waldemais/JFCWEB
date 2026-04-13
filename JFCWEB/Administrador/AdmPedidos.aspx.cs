using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            // Efeito hover removido pois agora usamos a classe 'table-hover' do Bootstrap
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

        protected void GridView2_Load(object sender, EventArgs e)
        {
            
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(TextBox4.Text))
            {
                Session["Ped"] = TextBox4.Text.Trim();
            }
            string numped = TextBox4.Text;
           // Session["Ped"] = numped;
            Response.Redirect("~/Paginas/Pedidos.aspx" );
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected string GetStatusClass(string status)
        {
            if (string.IsNullOrEmpty(status)) return "status-badge bg-secondary text-white";
            switch (status.ToUpper())
            {
                case "ABERTO": return "status-badge bg-success text-white";
                case "CANCELADO": return "status-badge bg-danger text-white";
                case "FINALIZADO": return "status-badge bg-primary text-white";
                default: return "status-badge bg-secondary text-white";
            }
        }
    }
}