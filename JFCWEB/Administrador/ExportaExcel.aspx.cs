using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Drawing;
using System.Configuration;

namespace JFCWEB.Administrador
{
    public partial class ExportaExcel : System.Web.UI.Page
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
  string strConnstring = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Integrated Security=True;Pooling=False";
            using (SqlConnection con = new SqlConnection(strConnstring))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Customers"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                     {
                           
                        }
                    }
                }
            }
        }

        protected void dgv_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgv.PageIndex = e.NewPageIndex;

            this.BindGrid();
        }
        protected void btnExcel_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=BK_RJ_MG.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);

                //To Export all pages
                dgv.AllowPaging = false;
                this.BindGrid();
             dgv.HeaderRow.BackColor = Color.White;
                foreach (TableCell cell in dgv.HeaderRow.Cells)
                {
                    cell.BackColor = dgv.HeaderStyle.BackColor;
                }
                foreach (GridViewRow row in dgv.Rows)
                {
                    row.BackColor = Color.White;
                    foreach (TableCell cell in row.Cells)
                    {
                        if (row.RowIndex % 2 == 0)
                        {
                            cell.BackColor = dgv.AlternatingRowStyle.BackColor;
                        }
                        else
                        {
                            cell.BackColor = dgv.RowStyle.BackColor;
                        }
                        cell.CssClass = "textmode";
                    }
                    strconrj = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
                    connrj = new SqlConnection(strconrj);
                    connrj.Open();
                    string sqlrj = ("UPDATE PEDIDO SET STATUS = 'FINALIZADO' WHERE pedidoID = ANY (SELECT pedidoID from Exporta WHERE DTENTREGA = @ENTREGA AND QTDE <> 0 AND UF IN('RJ', 'MG', 'NULL') AND NOMEPARC LIKE('%BK%') AND STATUS = 'ABERTO')");
                    // ("UPDATE PEDIDO SET STATUS = 'FINALIZADO' WHERE UF IN ('RJ','MG') AND STATUS='ABERTO' AND (DTENTREGA = @ENTREGA)");
                    SqlCommand commrj = new SqlCommand(sqlrj, connrj);
                    commrj.Parameters.AddWithValue("@ENTREGA",Calendar1.SelectedDate.ToShortDateString());
                    commrj.ExecuteNonQuery();
                    connrj.Close();
                                    
                }

                dgv.RenderControl(hw);

                //style to format numbers to string
                string style = @"<style> .textmode { } </style>";
                Response.Write(style);
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();
                
            }
            dgv.DataBind();
        }
        protected void dgv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgv1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }
        protected void btnExcel1_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=BK_SP.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw1 = new StringWriter())
            {
                HtmlTextWriter hw1 = new HtmlTextWriter(sw1);

                //To Export all pages
                dgv1.AllowPaging = false;
                this.BindGrid();

                dgv1.HeaderRow.BackColor = Color.White;
                foreach (TableCell cell in dgv1.HeaderRow.Cells)
                {
                    cell.BackColor = dgv1.HeaderStyle.BackColor;
                }
                foreach (GridViewRow row in dgv1.Rows)
                {
                    row.BackColor = Color.White;
                    foreach (TableCell cell in row.Cells)
                    {
                        if (row.RowIndex % 2 == 0)
                        {
                            cell.BackColor = dgv1.AlternatingRowStyle.BackColor;
                        }
                        else
                        {
                            cell.BackColor = dgv1.RowStyle.BackColor;
                        }
                        cell.CssClass = "textmode";
                    }
                    strconsp = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
                    connsp = new SqlConnection(strconsp);
                    connsp.Open();
                    string sqlsp = ("UPDATE PEDIDO SET STATUS = 'FINALIZADO' WHERE pedidoID = ANY (SELECT pedidoID from Exporta WHERE DTENTREGA = @ENTREGA AND QTDE <> 0 AND UF IN('SP') AND NOMEPARC LIKE('%BK%') AND STATUS = 'ABERTO')");
                    SqlCommand commsp = new SqlCommand(sqlsp, connsp);
                    commsp.Parameters.AddWithValue("@ENTREGA", Calendar1.SelectedDate.ToShortDateString());
                    commsp.ExecuteNonQuery();
                    connsp.Close();
                }

                dgv1.RenderControl(hw1);

                //style to format numbers to string
                string style = @"<style> .textmode { } </style>";
                Response.Write(style);
                Response.Output.Write(sw1.ToString());
                Response.Flush();
                Response.End();
            }

        }
        public string strconsp { get; set; }
        public SqlConnection connsp { get; set; }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        public System.Data.DataTable dt { get; set; }

        protected void BtnPrevia_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=BK_Prévia.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);

                //To Export all pages
                Gprev.AllowPaging = false;
                this.BindGrid();

                Gprev .HeaderRow.BackColor = Color.White;
                foreach (TableCell cell in Gprev.HeaderRow.Cells)
                {
                    cell.BackColor = Gprev.HeaderStyle.BackColor;
                }
                foreach (GridViewRow row in Gprev.Rows)
                {
                    row.BackColor = Color.White;
                    foreach (TableCell cell in row.Cells)
                    {
                        if (row.RowIndex % 2 == 0)
                        {
                            cell.BackColor = Gprev.AlternatingRowStyle.BackColor;
                        }
                        else
                        {
                            cell.BackColor = Gprev.RowStyle.BackColor;
                        }
                        cell.CssClass = "textmode";
                    }
                }

               Gprev.RenderControl(hw);

                //style to format numbers to string
                string style = @"<style> .textmode { } </style>";
                Response.Write(style);
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();
            }
        }
        public string strconrj { get; set; }
        public SqlConnection connrj { get; set; }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
         Lbel01.Text = "Pedidos solicitados para a data " + Calendar1.SelectedDate.ToShortDateString();
         Lbel2.Visible = true;
            Label1.Visible = true;
            Label2.Visible = true;
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void btnExcel2_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=BK_SAP_RJ.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);

                //Para Exportar todas as páginas
                dgv2.AllowPaging = false;
                this.BindGrid();

                dgv2.HeaderRow.BackColor = Color.White;
                foreach (TableCell cell in dgv2.HeaderRow.Cells)
                {
                    cell.BackColor = dgv2.HeaderStyle.BackColor;
                }
                foreach (GridViewRow row in dgv2.Rows)
                {
                    row.BackColor = Color.White;
                    foreach (TableCell cell in row.Cells)
                    {
                        if (row.RowIndex % 2 == 0)
                        {
                            cell.BackColor = dgv2.AlternatingRowStyle.BackColor;
                        }
                        else
                        {
                            cell.BackColor = dgv2.RowStyle.BackColor;
                        }
                        cell.CssClass = "textmode";
                    }
                    
                }

                dgv2.RenderControl(hw);

                //style to format numbers to string
                string style = @"<style> .textmode { } </style>";
                Response.Write(style);
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();

            }
            dgv2.DataBind();
        }

        protected void btnExcel3_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=BK_PR.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw1 = new StringWriter())
            {
                HtmlTextWriter hw1 = new HtmlTextWriter(sw1);

                //To Export all pages
                dgv3.AllowPaging = false;
                this.BindGrid();

                dgv3.HeaderRow.BackColor = Color.White;
                foreach (TableCell cell in dgv3.HeaderRow.Cells)
                {
                    cell.BackColor = dgv3.HeaderStyle.BackColor;
                }
                foreach (GridViewRow row in dgv3.Rows)
                {
                    row.BackColor = Color.White;
                    foreach (TableCell cell in row.Cells)
                    {
                        if (row.RowIndex % 2 == 0)
                        {
                            cell.BackColor = dgv3.AlternatingRowStyle.BackColor;
                        }
                        else
                        {
                            cell.BackColor = dgv3.RowStyle.BackColor;
                        }
                        cell.CssClass = "textmode";
                    }
                    strconpr = "Data Source=mssql02-farm22.kinghost.net;Initial Catalog=jfcverduras;Persist Security Info=True;User ID=jfcverduras;Password=Campanha#2025;TrustServerCertificate=True";
                    connpr = new SqlConnection(strconpr);
                    connpr.Open();
                    string sqlpr = ("UPDATE PEDIDO SET STATUS = 'FINALIZADO' WHERE pedidoID = ANY (SELECT pedidoID from Exporta WHERE DTENTREGA = @ENTREGA AND QTDE <> 0 AND UF IN('PR') AND NOMEPARC LIKE('%BK%') AND STATUS = 'ABERTO')");
                    SqlCommand commpr = new SqlCommand(sqlpr, connpr);
                    commpr.Parameters.AddWithValue("@ENTREGA", Calendar1.SelectedDate.ToShortDateString());
                    commpr.ExecuteNonQuery();
                    connpr.Close();
                }

                dgv3.RenderControl(hw1);

                //style to format numbers to string
                string style = @"<style> .textmode { } </style>";
                Response.Write(style);
                Response.Output.Write(sw1.ToString());
                Response.Flush();
                Response.End();
            }
        }
        public string strconpr { get; set; }
        public SqlConnection connpr { get; set; }

        protected void btnExcel4_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=BK_SAP_SP.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);

                //Para Exportar todas as páginas
                dgv4.AllowPaging = false;
                this.BindGrid();

                dgv4.HeaderRow.BackColor = Color.White;
                foreach (TableCell cell in dgv4.HeaderRow.Cells)
                {
                    cell.BackColor = dgv4.HeaderStyle.BackColor;
                }
                foreach (GridViewRow row in dgv4.Rows)
                {
                    row.BackColor = Color.White;
                    foreach (TableCell cell in row.Cells)
                    {
                        if (row.RowIndex % 2 == 0)
                        {
                            cell.BackColor = dgv4.AlternatingRowStyle.BackColor;
                        }
                        else
                        {
                            cell.BackColor = dgv4.RowStyle.BackColor;
                        }
                        cell.CssClass = "textmode";
                    }

                }

                dgv4.RenderControl(hw);

                //style to format numbers to string
                string style = @"<style> .textmode { } </style>";
                Response.Write(style);
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();

            }
            dgv4.DataBind();

        }

        protected void BtnExcel5_Click(object sender, EventArgs e)
        {

            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=BK_SAP_PR.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (StringWriter sw = new StringWriter())
            {
                HtmlTextWriter hw = new HtmlTextWriter(sw);

                //Para Exportar todas as páginas
                dgv5.AllowPaging = false;
                this.BindGrid();

                dgv5.HeaderRow.BackColor = Color.White;
                foreach (TableCell cell in dgv5.HeaderRow.Cells)
                {
                    cell.BackColor = dgv5.HeaderStyle.BackColor;
                }
                foreach (GridViewRow row in dgv5.Rows)
                {
                    row.BackColor = Color.White;
                    foreach (TableCell cell in row.Cells)
                    {
                        if (row.RowIndex % 2 == 0)
                        {
                            cell.BackColor = dgv5.AlternatingRowStyle.BackColor;
                        }
                        else
                        {
                            cell.BackColor = dgv5.RowStyle.BackColor;
                        }
                        cell.CssClass = "textmode";
                    }

                }

                dgv5.RenderControl(hw);

                //style to format numbers to string
                string style = @"<style> .textmode { } </style>";
                Response.Write(style);
                Response.Output.Write(sw.ToString());
                Response.Flush();
                Response.End();

            }
            dgv5.DataBind();
        }
    }
}