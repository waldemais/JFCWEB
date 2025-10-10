using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace JFCWEB
{
    public partial class Grade1 : System.Web.UI.Page
    {
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Double xx1 = 0;
            Double tmp1 = 0;
            String dia1 = ("Sábado");

            // DateTime xx = DateTime.Today.AddHours(24);
            //DateTime dia = DateTime.Today.AddDays(-1);

            foreach (GridViewRow row in GridView1.Rows)
            {

                if (row.RowType == DataControlRowType.DataRow)
                {
                    if (!String.IsNullOrEmpty(row.Cells[3].Text))
                        tmp1 = Double.Parse(row.Cells[3].Text);
                }
                if (tmp1 <= 24)
                {
                    xx1 = 24;
                }
                if (tmp1 > 24)
                {
                    xx1 = 48;
                    dia1 = ("Sexta-feira");
                }
                if (tmp1 > 48)
                {
                    xx1 = 72;
                    dia1 = ("Quinta-Feira");
                }
                if (tmp1 > 72)
                {
                    xx1 = 96;
                    dia1 = ("Quarta-Feira");
                }
                if (tmp1 > 96)
                {
                    xx1 = 124;
                    dia1 = ("terça-Feira");
                }
                xx1 -= Double.Parse(row.Cells[3].Text);
                TxtBox2.Text = xx1.ToString() + (":00");
                TxtBox3.Text = dia1.ToString();
            }
        }                                      
        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Double xx3 = 0;
            Double tmp3 = 0;
            String dia3 = ("Segunda-Feira");

            foreach (GridViewRow row in GridView3.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    if (!String.IsNullOrEmpty(row.Cells[3].Text))
                        tmp3 = Double.Parse(row.Cells[3].Text);
                }
                if (tmp3 <= 24)
                {
                    xx3 = 24;
                }
                if (tmp3 > 24)
                {
                    xx3 = 48;
                    dia3 = ("Sábado");

                }
                if (tmp3 > 48)
                {
                    xx3 = 72;
                    dia3 = ("Sexta-Feira");
                }
                if (tmp3 > 72)
                {
                    xx3 = 96;
                    dia3 = ("Quinta-Feira");
                }
                if (tmp3 > 96)
                {
                    xx3 = 124;
                    dia3 = ("Quarta-Feira");
                }
                xx3 -= Double.Parse(row.Cells[3].Text);
                TxtBox4.Text = xx3.ToString() + (":00");
                TxtBox5.Text = dia3.ToString();
               
                }
            
        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            Double xx4 = 0;
            Double tmp4 = 0;
            String dia4 = ("Terça-Feira");

            foreach (GridViewRow row in GridView4.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    if (!String.IsNullOrEmpty(row.Cells[3].Text))
                        tmp4 = Double.Parse(row.Cells[3].Text);
                }
                if (tmp4 <= 24)
                {
                    xx4 = 24;
                }
                if (tmp4 > 24)
                {
                    xx4 = 48;
                    dia4 = ("Segunda-Feira");

                }
                if (tmp4 > 48)
                {
                    xx4 = 72;
                    dia4 = ("Sábado");
                }
                if (tmp4 > 72)
                {
                    xx4 = 96;
                    dia4 = ("Sexta-Feira");
                }
                if (tmp4 > 96)
                {
                    xx4 = 124;
                    dia4 = ("Quinta-Feira");
                }

                xx4 -= Double.Parse(row.Cells[3].Text);
                TxtBox6.Text = xx4.ToString() + (":00");
                TxtBox7.Text = dia4.ToString();
            }
        }

        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {
            Double xx5 = 0;
            Double tmp5 = 0;
            String dia5 = ("Quarta-Feira");

            foreach (GridViewRow row in GridView5.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    if (!String.IsNullOrEmpty(row.Cells[3].Text))
                        tmp5 = Double.Parse(row.Cells[3].Text);
                }
                if (tmp5 <= 24)
                {
                    xx5 = 24;
                }
                if (tmp5 > 24)
                {
                    xx5 = 48;
                    dia5 = ("Terça-Feira");

                }
                if (tmp5 > 48)
                {
                    xx5 = 72;
                    dia5 = ("Segunda-Feira");
                }
                if (tmp5 > 72)
                {
                    xx5 = 96;
                    dia5 = ("Sábado");
                }
                if (tmp5 > 96)
                {
                    xx5 = 124;
                    dia5 = ("Sexta-Feira");
                }

                xx5 -= Double.Parse(row.Cells[3].Text);
                TxtBox8.Text = xx5.ToString() + (":00");
                TxtBox9.Text = dia5.ToString();
            }
        
        }

        protected void GridView6_SelectedIndexChanged(object sender, EventArgs e)
        {
            Double xx6 = 0;
            Double tmp6 = 0;
            String dia6 = ("Quinta-Feira");

            foreach (GridViewRow row in GridView6.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    if (!String.IsNullOrEmpty(row.Cells[3].Text))
                        tmp6 = Double.Parse(row.Cells[3].Text);
                }
                if (tmp6 <= 24)
                {
                    xx6 = 24;
                }
                if (tmp6 > 24)
                {
                    xx6 = 48;
                    dia6 = ("Quarta-Feira");

                }
                if (tmp6 > 48)
                {
                    xx6 = 72;
                    dia6 = ("Terça-Feira");
                }
                if (tmp6 > 72)
                {
                    xx6 = 96;
                    dia6 = ("Segunda-Feira");
                }
                if (tmp6 > 96)
                {
                    xx6 = 124;
                    dia6 = ("Sábado");
                }

                xx6 -= Double.Parse(row.Cells[3].Text);
                TxtBox10.Text = xx6.ToString() + (":00");
                TxtBox11.Text = dia6.ToString();
            }
        }

        protected void GridView7_SelectedIndexChanged(object sender, EventArgs e)
        {
            Double xx7 = 0;
            Double tmp7 = 0;
            String dia7 = ("Sexta-Feira");

            foreach (GridViewRow row in GridView7.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    if (!String.IsNullOrEmpty(row.Cells[3].Text))
                        tmp7 = Double.Parse(row.Cells[3].Text);
                }
                if (tmp7 <= 24)
                {
                    xx7 = 24;
                }
                if (tmp7 > 24)
                {
                    xx7 = 48;
                    dia7 = ("Quinta-Feira");

                }
                if (tmp7 > 48)
                {
                    xx7 = 72;
                    dia7 = ("Quarta-Feira");
                }
                if (tmp7 > 72)
                {
                    xx7 = 96;
                    dia7 = ("Terça-Feira");
                }
                if (tmp7 > 96)
                {
                    xx7 = 124;
                    dia7 = ("Segunda-Feira");
                }

                xx7 -= Double.Parse(row.Cells[3].Text);
                TxtBox13.Text = xx7.ToString() + (":00");
                TxtBox12.Text = dia7.ToString();
            }
        }

        protected void GridView8_SelectedIndexChanged(object sender, EventArgs e)
        {
            Double xx8 = 0;
            Double tmp8 = 0;
            String dia8 = ("Sábado");
            
            foreach (GridViewRow row in GridView8.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    if (!String.IsNullOrEmpty(row.Cells[3].Text))
                        tmp8 = Double.Parse(row.Cells[3].Text);
                                    }
                if (tmp8 <= 24)
                {
                    xx8 = 24;
                }
                if (tmp8 > 24)
                {
                    xx8 = 48;
                    dia8 = ("Sexta-Feira");

                }
                if (tmp8 > 48)
                {
                    xx8 = 72;
                    dia8 = ("Quinta-Feira");
                }
                if (tmp8 > 72)
                {
                    xx8 = 96;
                    dia8 = ("Quarta-Feira");
                }
                if (tmp8 > 96)
                {
                    xx8 = 124;
                    dia8 = ("Terça-Feira");
                }

                xx8 -= Double.Parse(row.Cells[3].Text);
                TxtBox15.Text = xx8.ToString() + (":00");
                TxtBox14.Text = dia8.ToString();
            }
        }

            }
}