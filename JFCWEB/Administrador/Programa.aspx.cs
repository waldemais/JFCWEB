using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;
using System.Configuration;

namespace JFCWEB.Administrador
{
    public partial class Programação : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindGrid();
            }

        }
        private void BindGrid()
        {
           // string strConnstring = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;Integrated Security=False;Pooling=False;User ID=jfcverduras;Password=jfc102030";
              string strConnstring = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            using (SqlConnection con = new SqlConnection(strConnstring))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM VPrograma"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            //GridView1.DataSource = dt;
                           // GridView1.DataBind();
                        }
                    }
                }
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();

        }

        protected void btnExcel_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=GradeExporta.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);

                //To Export all pages
                GridView1.AllowPaging = false;
                this.BindGrid();

                GridView1.HeaderRow.BackColor = Color.White;
                foreach (TableCell cell in GridView1.HeaderRow.Cells)
                {
                    cell.BackColor = GridView1.HeaderStyle.BackColor;
                }
                foreach (GridViewRow row in GridView1.Rows)
                {
                    row.BackColor = Color.White;
                    foreach (TableCell cell in row.Cells)
                    {
                        if (row.RowIndex % 2 == 0)
                        {
                            cell.BackColor = GridView1.AlternatingRowStyle.BackColor;
                        }
                        else
                        {
                            cell.BackColor = GridView1.RowStyle.BackColor;
                        }
                        cell.CssClass = "textmode";
                    }
                   
                }
                 GridView1.RenderControl(hw);
                //style to format numbers to string
                string style = @"<style> .textmode { } </style>";
                Response.Write(style);
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();
            }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}