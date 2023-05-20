using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace JFCWEB
{
    public partial class Pedido : System.Web.UI.Page
    {
        protected void GridEmissao_SelectedIndexChanged(object sender, EventArgs e)
        {
            string dia;
            Double tmp1 = 0;
            string tmp2 = ("Domingo");
            Double xx1 = 0;
            string dia1 = ("  ");

            dia = DateTime.Now.ToString("dddd", new System.Globalization.CultureInfo("pt-BR")); //dia da semana dom
            //    String data1 = DateTime.Now.ToString("HH:mm"); //hora atual
            tmp1 = Double.Parse(GridEmissao.SelectedRow.Cells[3].Text); // Tempo
            tmp2 = (GridEmissao.SelectedRow.Cells[1].Text); //Semana
            DateTime data = DateTime.Today;


            switch (tmp2)
            {
                case "Segunda":
                    if (tmp1 <= 24)
                    {
                        xx1 = 24;
                        dia1 = ("Sábado");
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
                        dia1 = ("Terça-Feira");
                    }

                    if (data.DayOfWeek == DayOfWeek.Monday)
                    {
                        dia = DateTime.Now.AddDays(7).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Tuesday)
                    {
                        dia = DateTime.Now.AddDays(6).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Wednesday)
                    {
                        dia = DateTime.Now.AddDays(5).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Thursday)
                    {
                        dia = DateTime.Now.AddDays(4).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Friday)
                    {
                        dia = DateTime.Now.AddDays(3).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Saturday)
                    {
                        dia = DateTime.Now.AddDays(2).ToString("dd/MM/yyyy");
                    }
                    break;
                case "Terca":
                    if (tmp1 <= 24)
                    {
                        xx1 = 24;
                        dia1 = ("Segunda-Feira");
                    }
                    if (tmp1 > 24)
                    {
                        xx1 = 48;
                        dia1 = ("Sábado");
                    }
                    if (tmp1 > 48)
                    {
                        xx1 = 72;
                        dia1 = ("Sexta-Feira");
                    }
                    if (tmp1 > 72)
                    {
                        xx1 = 96;
                        dia1 = ("Quinta-Feira");
                    }
                    if (tmp1 > 96)
                    {
                        xx1 = 124;
                        dia1 = ("Quarta-Feira");
                    }
                    if (data.DayOfWeek == DayOfWeek.Monday)
                    {
                        dia = DateTime.Now.AddDays(8).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Tuesday)
                    {
                        dia = DateTime.Now.AddDays(7).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Wednesday)
                    {
                        dia = DateTime.Now.AddDays(6).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Thursday)
                    {
                        dia = DateTime.Now.AddDays(5).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Friday)
                    {
                        dia = DateTime.Now.AddDays(4).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Saturday)
                    {
                        dia = DateTime.Now.AddDays(3).ToString("dd/MM/yyyy");
                    }
                    break;

                case "Quarta":
                    if (tmp1 <= 24)
                    {
                        xx1 = 24;
                        dia1 = ("Terça-Feira");
                    }
                    if (tmp1 > 24)
                    {
                        xx1 = 48;
                        dia1 = ("Segunda-Feira");
                    }
                    if (tmp1 > 48)
                    {
                        xx1 = 72;
                        dia1 = ("Sábado");
                    }
                    if (tmp1 > 72)
                    {
                        xx1 = 96;
                        dia1 = ("Sexta-Feira");
                    }
                    if (tmp1 > 96)
                    {
                        xx1 = 124;
                        dia1 = ("Quinta-Feira");
                    }
                    if (data.DayOfWeek == DayOfWeek.Monday)
                    {
                        dia = DateTime.Now.AddDays(2).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Tuesday)
                    {
                        dia = DateTime.Now.AddDays(1).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Wednesday)
                    {
                        dia = DateTime.Now.AddDays(7).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Thursday)
                    {
                        dia = DateTime.Now.AddDays(6).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Friday)
                    {
                        dia = DateTime.Now.AddDays(5).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Saturday)
                    {
                        dia = DateTime.Now.AddDays(4).ToString("dd/MM/yyyy");
                    }
                    break;
                case "Quinta":
                    if (tmp1 <= 24)
                    {
                        xx1 = 24;
                        dia1 = ("Quarta-Feira");
                    }
                    if (tmp1 > 24)
                    {
                        xx1 = 48;
                        dia1 = ("Terça-Feira");
                    }
                    if (tmp1 > 48)
                    {
                        xx1 = 72;
                        dia1 = ("Segunda-Feira");
                    }
                    if (tmp1 > 72)
                    {
                        xx1 = 96;
                        dia1 = ("Sábado");
                    }
                    if (tmp1 > 96)
                    {
                        xx1 = 124;
                        dia1 = ("Sexta-Feira");
                    }
                    if (data.DayOfWeek == DayOfWeek.Monday)
                    {
                        dia = DateTime.Now.AddDays(3).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Tuesday)
                    {
                        dia = DateTime.Now.AddDays(2).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Wednesday)
                    {
                        dia = DateTime.Now.AddDays(1).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Thursday)
                    {
                        dia = DateTime.Now.AddDays(7).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Friday)
                    {
                        dia = DateTime.Now.AddDays(6).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Saturday)
                    {
                        dia = DateTime.Now.AddDays(5).ToString("dd/MM/yyyy");
                    }
                    break;
                case "Sexta":
                    if (tmp1 <= 24)
                    {
                        xx1 = 24;
                        dia1 = ("Quinta-Feira");
                    }
                    if (tmp1 > 24)
                    {
                        xx1 = 48;
                        dia1 = ("Quarta-Feira");
                    }
                    if (tmp1 > 48)
                    {
                        xx1 = 72;
                        dia1 = ("Terça-Feira");
                    }
                    if (tmp1 > 72)
                    {
                        xx1 = 96;
                        dia1 = ("Segunda-Feira");
                    }
                    if (tmp1 > 96)
                    {
                        xx1 = 124;
                        dia1 = ("Sábado");
                    }
                    if (data.DayOfWeek == DayOfWeek.Monday)
                    {
                        dia = DateTime.Now.AddDays(4).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Tuesday)
                    {
                        dia = DateTime.Now.AddDays(3).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Wednesday)
                    {
                        dia = DateTime.Now.AddDays(2).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Thursday)
                    {
                        dia = DateTime.Now.AddDays(1).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Friday)
                    {
                        dia = DateTime.Now.AddDays(7).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Saturday)
                    {
                        dia = DateTime.Now.AddDays(6).ToString("dd/MM/yyyy");
                    }
                    break;
                case "Sábado":
                    if (tmp1 <= 24)
                    {
                        xx1 = 24;
                        dia1 = ("Sexta-Feira");
                    }
                    if (tmp1 > 24)
                    {
                        xx1 = 48;
                        dia1 = ("Quinta-Feira");
                    }
                    if (tmp1 > 48)
                    {
                        xx1 = 72;
                        dia1 = ("Quarta-Feira");
                    }
                    if (tmp1 > 72)
                    {
                        xx1 = 96;
                        dia1 = ("Terça-Feira");
                    }
                    if (tmp1 > 96)
                    {
                        xx1 = 124;
                        dia1 = ("Segunda-Feira");
                    }
                    if (data.DayOfWeek == DayOfWeek.Monday)
                    {
                        dia = DateTime.Now.AddDays(5).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Tuesday)
                    {
                        dia = DateTime.Now.AddDays(4).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Wednesday)
                    {
                        dia = DateTime.Now.AddDays(3).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Thursday)
                    {
                        dia = DateTime.Now.AddDays(2).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Friday)
                    {
                        dia = DateTime.Now.AddDays(1).ToString("dd/MM/yyyy");
                    }
                    if (data.DayOfWeek == DayOfWeek.Saturday)
                    {
                        dia = DateTime.Now.AddDays(7).ToString("dd/MM/yyyy");
                    }
                    break;
            }
            String data1 = DateTime.Now.ToString("HH:mm"); //hora atual
           //Double data1 = DateTime.Now.ToOADate();
            string yy1 = Convert.ToString(xx1);
            if (yy1.CompareTo(data1) == 1)
            {
                Lbl3.Text = ("Horário excedeu o limite do dia.!");
            }
            else
            {
                xx1 -= Double.Parse(GridEmissao.SelectedRow.Cells[3].Text);
                TxtBx3.Text = dia;
                Lbl3.Text = dia1 + (" até as ") + xx1.ToString()+(":00");
            }
        }
        protected void Btt3_Click(object sender, EventArgs e)
        {
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();

            string sql = ("UPDATE PEDIDO SET DTENTREGA = @dia WHERE pedidoID = @PEDIDOid");
            SqlCommand comm = new SqlCommand(sql, conn);

            comm.Parameters.AddWithValue("@Dia", TxtBx3.Text);
            comm.Parameters.AddWithValue("@pedidoID", TxtBx2.Text);

            int x = comm.ExecuteNonQuery();
            if (x == 1)
            {
                Lbl3.Text = ("Gravado com sucesso!");
                conn.Close();
            }
            else
            {
                Lbl3.Text = ("Falha! Verifique se o pedido existe!");
            }
           
        }
    
public  string strcon { get; set; }
public  SqlConnection conn { get; set; }
    }
}