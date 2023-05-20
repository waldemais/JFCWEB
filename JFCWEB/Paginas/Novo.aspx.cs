using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Net.Mail;
using System.Net;
using System.Text;
using System.Web.UI.HtmlControls;
using System.IO;
//using AjaxControlToolkit;

namespace JFCWEB.Paginas
{
    public partial class Novo : System.Web.UI.Page
    {

        protected void Butt1_Click(object sender, EventArgs e)
        {
            string hh0;
          //  int dte1 = DpLi1.SelectedIndex;
            hh0 = DateTime.Now.ToString("HH:mm");
          //dt2 = (Grid4.Rows[dte1].Cells[3].Text);xxxxxxxx
            var dtex = (Grid4.Rows[0].Cells[4].Text);
            var dta = Grid4.Rows[0].Cells[6].ToString();
            var dt1 = DateTime.Now.DayOfWeek.ToString();
          //  var hh2 = TimeSpan.FromHours(Convert.ToDouble(Grid4.Rows[dte1].Cells[4].Text));
          //  var hh1 = TimeSpan.Parse(DateTime.Now.ToString("HH:mm:ss"));


        if (dt1==dta)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "alert('O horário limite foi ultrapassado!')", true);
            }
//***********************************

            decimal ValorTotal = 0;

            foreach (GridViewRow row in GrdV2.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    if (!String.IsNullOrEmpty(row.Cells[3].Text))
                        ValorTotal += Decimal.Parse(row.Cells[3].Text);
                }
            }
            if (ValorTotal > 0)
                {
                string CGC_CPF = " ";
                CGC_CPF = TxtBox1.Text;
                strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
                conn = new SqlConnection(strcon);
                conn.Open();
                string dte = DpLi1.SelectedItem.Value.ToString();
                string data = ("SELECT COUNT(*) AS PED FROM PEDIDO WHERE (CGC_CPF=@CGC_CPF) AND (DTENTREGA=@dte) AND STATUS <> 'CANCELADO'");
                SqlCommand commdt = new SqlCommand(data, conn);
                commdt.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
                commdt.Parameters.AddWithValue("@dte", dte);
                int Ped = (int)commdt.ExecuteScalar();
                if (Ped > 0)
                {
                   // Label5.Visible = true;
                    //Label5.Text = ("EXISTE PEDIDO PARA ESTA DATA, PARA EMITIR NOVO PEDIDO DEVERÁ CANCELAR O ATUAL!");
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "alert('Existe pedido para esta data, è necessário cancelar o atual!')", true);

                }

                else
                {
                    string UFf = GrdView1.Rows[0].Cells[4].Text;
                    string Cod = GrdView1.Rows[0].Cells[3].Text;
                    string sql = ("INSERT INTO PEDIDO (CGC_CPF, CODPARC, UF) VALUES (@CGC_CPF, @CODPAR, @UF)");
                SqlCommand comm = new SqlCommand(sql, conn);
                comm.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
                comm.Parameters.AddWithValue("@UF", UFf.ToString());
                comm.Parameters.AddWithValue("@CODPAR", Cod.ToString());

                    int x = comm.ExecuteNonQuery();
                if (x == 1)
                {
                    string sqlped = ("SELECT DISTINCT pedidoID FROM PEDIDO WHERE CGC_CPF = @CGC_CPF AND DTENTREGA IS NULL");
                    SqlCommand commped = new SqlCommand(sqlped, conn);
                    commped.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
                    var entrega = commped.ExecuteScalar();
                                      
                        string sql1 = ("UPDATE PEDIDO SET DTENTREGA=@dte,DTEMISSAO=@emissao,STATUS='ABERTO' WHERE pedidoID=@entrega");
                        SqlCommand commsql1 = new SqlCommand(sql1, conn);
                        commsql1.Parameters.AddWithValue("@dte", dte);
                        commsql1.Parameters.AddWithValue("@entrega", entrega);
                        commsql1.Parameters.AddWithValue("@emissao", TxtBox2.Text);
                        commsql1.ExecuteNonQuery();
                        //
                        string sqlitem = ("UPDATE ITENS_PEDIDO SET pedidoID=@pedidoID WHERE CGC_CPF=@CGC_CPF AND pedidoID IS NULL");
                        SqlCommand commsqlitem = new SqlCommand(sqlitem, conn);
                        commsqlitem.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
                        commsqlitem.Parameters.AddWithValue("@pedidoID", entrega);
                        commsqlitem.ExecuteNonQuery();
                        //
                        Label2.Text = ("Pedido n°") + Convert.ToString(entrega);
                      //  conn.Close();
                        Session["Ped"] = entrega;
                        Butt2.Enabled = true;
                        string destinatario;
                        destinatario = Text2.Text;
                        Response.Redirect("~/Paginas/Relatorio.aspx");
                    }
                }
                conn.Close();
            }
            else
            {
                //Label1.Text = ("Informe a Quantidade e click em OK!");
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "alert('Informe a quantidade e click em OK!')", true);
            }
        
        }

        public string strcon { get; set; }
        public SqlConnection conn { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            string data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15;
            string dia1, dia2, dia3, dia4, dia5, dia6, dia7, dia8, dia9, dia10, dia11, dia12, dia13, dia14, dia15;
            TxtBox1.Text = Session["cgc"].ToString();
            TxtBox2.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
            //
            data1 = DateTime.Now.AddDays(1).ToString("dd/MM/yyyy");
            dia1 = DateTime.Now.AddDays(1).ToString("ddd");
            data2 = DateTime.Now.AddDays(2).ToString("dd/MM/yyyy");
            dia2 = DateTime.Now.AddDays(2).ToString("ddd");
            data3 = DateTime.Now.AddDays(3).ToString("dd/MM/yyyy");
            dia3 = DateTime.Now.AddDays(3).ToString("ddd");
            data4 = DateTime.Now.AddDays(4).ToString("dd/MM/yyyy");
            dia4 = DateTime.Now.AddDays(4).ToString("ddd");
            data5 = DateTime.Now.AddDays(5).ToString("dd/MM/yyyy");
            dia5 = DateTime.Now.AddDays(5).ToString("ddd");
            data6 = DateTime.Now.AddDays(6).ToString("dd/MM/yyyy");
            dia6 = DateTime.Now.AddDays(6).ToString("ddd");
            data7 = DateTime.Now.AddDays(7).ToString("dd/MM/yyyy");
            dia7 = DateTime.Now.AddDays(7).ToString("ddd");
            data8 = DateTime.Now.AddDays(8).ToString("dd/MM/yyyy");
            dia8 = DateTime.Now.AddDays(8).ToString("ddd");
            data9 = DateTime.Now.AddDays(9).ToString("dd/MM/yyyy");
            dia9 = DateTime.Now.AddDays(9).ToString("ddd");
            data10 = DateTime.Now.AddDays(10).ToString("dd/MM/yyyy");
            dia10 = DateTime.Now.AddDays(10).ToString("ddd");
            data11 = DateTime.Now.AddDays(11).ToString("dd/MM/yyyy");
            dia11 = DateTime.Now.AddDays(11).ToString("ddd");
            data12 = DateTime.Now.AddDays(12).ToString("dd/MM/yyyy");
            dia12 = DateTime.Now.AddDays(12).ToString("ddd");
            data13 = DateTime.Now.AddDays(13).ToString("dd/MM/yyyy");
            dia13 = DateTime.Now.AddDays(13).ToString("ddd");
            data14 = DateTime.Now.AddDays(14).ToString("dd/MM/yyyy");
            dia14 = DateTime.Now.AddDays(14).ToString("ddd");
            data15 = DateTime.Now.AddDays(15).ToString("dd/MM/yyyy");
            dia15 = DateTime.Now.AddDays(15).ToString("ddd");
            //
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            //
            string sqldel = ("DELETE FROM ENTREGA WHERE CGC_CPF = @deleta");
            SqlCommand commdel = new SqlCommand(sqldel, conn);
            commdel.Parameters.AddWithValue("@deleta", TxtBox1.Text);
            commdel.ExecuteNonQuery();
            //
            string sql1 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data1, @CGC_CPF, @dia1)");
            string sql2 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data2, @CGC_CPF, @dia2)");
            string sql3 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data3, @CGC_CPF, @dia3)");
            string sql4 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data4, @CGC_CPF, @dia4)");
            string sql5 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data5, @CGC_CPF, @dia5)");
            string sql6 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data6, @CGC_CPF, @dia6)");
            string sql7 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data7, @CGC_CPF, @dia7)");
            string sql8 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data8, @CGC_CPF, @dia8)");
            string sql9 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data9, @CGC_CPF, @dia9)");
            string sql10 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data10, @CGC_CPF, @dia10)");
            string sql11 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data11, @CGC_CPF, @dia11)");
            string sql12 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data12, @CGC_CPF, @dia12)");
            string sql13 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data13, @CGC_CPF, @dia13)");
            string sql14 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data14, @CGC_CPF, @dia14)");
            string sql15 = ("INSERT INTO ENTREGA (DTENTREGA, CGC_CPF, DIASEM) VALUES (@data15, @CGC_CPF, @dia15)");
            //
            SqlCommand comm1 = new SqlCommand(sql1, conn);
            SqlCommand comm2 = new SqlCommand(sql2, conn);
            SqlCommand comm3 = new SqlCommand(sql3, conn);
            SqlCommand comm4 = new SqlCommand(sql4, conn);
            SqlCommand comm5 = new SqlCommand(sql5, conn);
            SqlCommand comm6 = new SqlCommand(sql6, conn);
            SqlCommand comm7 = new SqlCommand(sql7, conn);
            SqlCommand comm8 = new SqlCommand(sql8, conn);
            SqlCommand comm9 = new SqlCommand(sql9, conn);
            SqlCommand comm10 = new SqlCommand(sql10, conn);
            SqlCommand comm11 = new SqlCommand(sql11, conn);
            SqlCommand comm12 = new SqlCommand(sql12, conn);
            SqlCommand comm13 = new SqlCommand(sql13, conn);
            SqlCommand comm14 = new SqlCommand(sql14, conn);
            SqlCommand comm15 = new SqlCommand(sql15, conn);
            //
            comm1.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm1.Parameters.AddWithValue("@data1", data1);
            comm1.Parameters.AddWithValue("@dia1", dia1);
            comm2.Parameters.AddWithValue("@data2", data2);
            comm2.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm2.Parameters.AddWithValue("@dia2", dia2);
            comm3.Parameters.AddWithValue("@data3", data3);
            comm3.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm3.Parameters.AddWithValue("@dia3", dia3);
            comm4.Parameters.AddWithValue("@data4", data4);
            comm4.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm4.Parameters.AddWithValue("@dia4", dia4);
            comm5.Parameters.AddWithValue("@data5", data5);
            comm5.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm5.Parameters.AddWithValue("@dia5", dia5);
            comm6.Parameters.AddWithValue("@data6", data6);
            comm6.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm6.Parameters.AddWithValue("@dia6", dia6);
            comm7.Parameters.AddWithValue("@data7", data7);
            comm7.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm7.Parameters.AddWithValue("@dia7", dia7);
            comm8.Parameters.AddWithValue("@data8", data8);
            comm8.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm8.Parameters.AddWithValue("@dia8", dia8);
            comm9.Parameters.AddWithValue("@data9", data9);
            comm9.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm9.Parameters.AddWithValue("@dia9", dia9);
            comm10.Parameters.AddWithValue("@data10", data10);
            comm10.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm10.Parameters.AddWithValue("@dia10", dia10);
            comm11.Parameters.AddWithValue("@data11", data11);
            comm11.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm11.Parameters.AddWithValue("@dia11", dia11);
            comm12.Parameters.AddWithValue("@data12", data12);
            comm12.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm12.Parameters.AddWithValue("@dia12", dia12);
            comm13.Parameters.AddWithValue("@data13", data13);
            comm13.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm13.Parameters.AddWithValue("@dia13", dia13);
            comm14.Parameters.AddWithValue("@data14", data14);
            comm14.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm14.Parameters.AddWithValue("@dia14", dia14);
            comm15.Parameters.AddWithValue("@data15", data15);
            comm15.Parameters.AddWithValue("@CGC_CPF", TxtBox1.Text);
            comm15.Parameters.AddWithValue("@dia15", dia15);
            //
            comm1.ExecuteNonQuery();
            comm2.ExecuteNonQuery();
            comm3.ExecuteNonQuery();
            comm4.ExecuteNonQuery();
            comm5.ExecuteNonQuery();
            comm6.ExecuteNonQuery();
            comm7.ExecuteNonQuery();
            comm8.ExecuteNonQuery();
            comm9.ExecuteNonQuery();
            comm10.ExecuteNonQuery();
            comm11.ExecuteNonQuery();
            comm12.ExecuteNonQuery();
            comm13.ExecuteNonQuery();
            comm14.ExecuteNonQuery();
            comm15.ExecuteNonQuery();
            conn.Close();
            //
        }

        protected void GrdV2_Load(object sender, EventArgs e)
        {
            Butt1.Enabled = true;
            Butt2.Enabled = false;
            //
            GrdV2.Attributes.Add("onkeydown", "if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {document.getElementById.click();return false;}} else {return true}; ");
            //
                    }
        protected void DpLi1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Butt1.Enabled = true;
            //Lab8.Visible = true;            
        }

        protected void GrdV2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes.Add("onMouseOver", "this.style.backgroundColor='#99FF66'");
                e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=''");
            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string Status = DataBinder.Eval(e.Row.DataItem, "QTDE").ToString();
                if (Status == "0")
                {
                   e.Row.Cells[2].ForeColor = System.Drawing.Color.Red;
                   // e.Row.Cells[5].Enabled = false;
                }
                   
            }
        }

        public String vlr { get; set; }
        public String idd { get; set; }
        public String inn { get; set; }
        protected void TxtBox01_DataBinding(object sender, EventArgs e)
        {

        }

        protected void TxtBox01_TextChanged(object sender, EventArgs e)
        {
            Butt1.Enabled = true;
            // int idseq = 0;

            //
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string vlr1 = ("UPDATE ITENS_PEDIDO SET QTDE=@QTDE");
            SqlCommand comm1 = new SqlCommand(vlr1, conn);
            // comm1.Parameters.AddWithValue("@IDSEM", idseq);
            // comm1.Parameters.AddWithValue("@QTDE",TxtBox01.ToString());
            comm1.ExecuteNonQuery();
            conn.Close();
        }

        protected void GrdV2_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            Butt1.Enabled = true;
        }

        protected void DpLi1_Load(object sender, EventArgs e)
        {
        }

        protected void Grid4_Load(object sender, EventArgs e)
        {
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string hh0, dt2, dtex;
            //Double hh1 = 0;
            //Double hh2 = 0;
            Double test1 = 0;
            //Double test2 = 0;
            // String dte = DpLi1.DataValueField;
            int dte1 = DpLi1.SelectedIndex;
            // dt0 = (Grid4.Rows[0].Cells[0].Text);
            hh0 = DateTime.Now.ToString("HH");
            dt2 = (Grid4.Rows[dte1].Cells[3].Text);
            dtex = (Grid4.Rows[dte1].Cells[0].Text);
            //************************************
            //  dte = DpLi1.SelectedValue.ToString();
            var dtd = Grid4.Rows[0].Cells[5].Text;
            var dta = Grid4.Rows[0].Cells[6].Text;
            var dtn = Grid4.Rows[0].Cells[7].Text;
            var dtu = Grid4.Rows[0].Cells[8].Text;
            var Dnome = "BK";
            var Duf = "RJ";
            var Dufsp = "SP";
            var Dufpr = "PR";
            // dt0 =Grid4.Rows[0].Cells[0].Text;
            //**********************************
            //******************************************************
            var dt1 = DateTime.Now.ToString("dddd");
            var hh2 = TimeSpan.FromHours(Convert.ToDouble(Grid4.Rows[dte1].Cells[4].Text));
            var hh1 = TimeSpan.Parse(DateTime.Now.ToString("HH:mm:ss"));
            //*******************************************************
         //   var dta = Grid4.Rows[0].Cells[6].Text;
            double test2 = Convert.ToDouble(dta);
            if (dt1 == "domingo")
            {
                test1 = 1;
            }
            if (dt1 == "segunda-feira")
            {
                test1 = 2;
            }
            if (dt1 == "terça-feira")
            {
                test1 = 3;
            }
            if (dt1 == "quarta-feira")
            {
                test1 = 4;
            }
            if (dt1 == "quinta-feira")
            {
                test1 = 5;
            }
            if (dt1 == "sexta-feira")
            {
                test1 = 6;
            }
            if (dt1 == "sábado")
            {
                test1 = 7;
            }
            //*****
                 var dt0 = Grid4.Rows[0].Cells[0].Text;
            var Xteste = (test2-test1);
           Label1.Text =test1+" - "+hh1+" - "+ dtn.Substring(0,2);
           Label2.Text =test2 + " - " + hh2 + " - "+dtu + " = "+Xteste;
           if (test1 == test2 && hh1 > hh2)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "alert("+dt1+")", true);
                string Ped1 = ("DELETE FROM ENTREGA WHERE CGC_CPF=@CGC AND DTENTREGA=@ENTREGA");
                SqlCommand comm1 = new SqlCommand(Ped1, conn);
                comm1.Parameters.AddWithValue("@CGC", TxtBox1.Text);
                comm1.Parameters.AddWithValue("@ENTREGA", dt0);
                comm1.ExecuteNonQuery();
                Label5.Text = "O HORÁRIO ULTRAPASSOU PARA SOLICITAR PEDIDOS PARA O DIA " + dt0 + ".";
                            }
            if (test1 > test2 && hh1 > hh2 & Dnome != dtn.Substring(0, 2))
            // if (test1 > test2 && hh1>hh2 && Duf != dtu)
            {
                string Ped1 = ("DELETE FROM ENTREGA WHERE CGC_CPF=@CGC AND DTENTREGA=@ENTREGA");
                SqlCommand comm1 = new SqlCommand(Ped1, conn);
               comm1.Parameters.AddWithValue("@CGC", TxtBox1.Text);
              comm1.Parameters.AddWithValue("@ENTREGA", dt0);
                comm1.ExecuteNonQuery();
                 Label5.Text = "EXPIROU O PRAZO PARA SOLICITAR PEDIDO PARA ==> " + dt0 ;
                         }
            //************************************
            //SÃO PAULO
            //**********************************
            if (test1 > test2 && hh1 > hh2 && dtu == Dufsp)
            {
                var dtx0 = Grid4.Rows[1].Cells[0].Text;
                string Ped1 = ("DELETE FROM ENTREGA WHERE CGC_CPF=@CGC AND DTENTREGA<=@ENTREGA");
                SqlCommand comm1 = new SqlCommand(Ped1, conn);
                comm1.Parameters.AddWithValue("@CGC", TxtBox1.Text);
                comm1.Parameters.AddWithValue("@ENTREGA", dtx0);
                comm1.ExecuteNonQuery();
               // Label5.Text = "TESTE1 - SOLICITAR PEDIDOS PARA  SP ATÉ O DIA " + dtx0 + " ATÉ AS " + hh2;
                Label5.Text = "EXPIROU O PRAZO PARA SOLICITAR PEDIDOS PARA SP PARA O DIA " + dtx0 + ".";
            }
            if (test1 > test2 && hh1<hh2 && dtu == Dufsp)
            {
                var dtx0 = Grid4.Rows[0].Cells[0].Text;
                string Ped1 = ("DELETE FROM ENTREGA WHERE CGC_CPF=@CGC AND DTENTREGA<=@ENTREGA");
                SqlCommand comm1 = new SqlCommand(Ped1, conn);
                comm1.Parameters.AddWithValue("@CGC", TxtBox1.Text);
                comm1.Parameters.AddWithValue("@ENTREGA", dtx0);
                comm1.ExecuteNonQuery();
               // Label5.Text = "TESTE2 - SOLICITAR PEDIDOS PARA  SP ATÉ O DIA " + dtx0 + " ATÉ AS " + hh2;
                Label5.Text = "NÃO É POSSÍVEL SOLICITAR PEDIDOS PARA SP PARA O DIA " + dtx0 + ".";
            }
            if (test1 < test2 && hh1 < hh2 & Dnome == dtn.Substring(0, 2) & Dufsp == dtu)
            {
                var dtx0 = Grid4.Rows[0].Cells[0].Text;
                string Ped1 = ("DELETE FROM ENTREGA WHERE CGC_CPF=@CGC AND DTENTREGA<=@ENTREGA");
                SqlCommand comm1 = new SqlCommand(Ped1, conn);
                comm1.Parameters.AddWithValue("@CGC", TxtBox1.Text);
                comm1.Parameters.AddWithValue("@ENTREGA", dtx0);
                comm1.ExecuteNonQuery();
                Label5.Text = "NÃO É POSSÍVEL SOLICITAR PEDIDOS PARA São Paulo PARA O DIA " + dtx0 + ".";
            }
            if (test1 < test2 && hh1 > hh2 & Dnome == dtn.Substring(0, 2) & Dufsp == dtu)
            {
                var dtx0 = Grid4.Rows[1].Cells[0].Text;
                string Ped1 = ("DELETE FROM ENTREGA WHERE CGC_CPF=@CGC AND DTENTREGA<=@ENTREGA");
                SqlCommand comm1 = new SqlCommand(Ped1, conn);
                comm1.Parameters.AddWithValue("@CGC", TxtBox1.Text);
                comm1.Parameters.AddWithValue("@ENTREGA", dtx0);
                comm1.ExecuteNonQuery();
                Label5.Text = "NÃO É POSSÍVEL SOLICITAR PEDIDOS PARA São Paulo PARA O DIA " + dtx0 + ".";
            }
            //*************************************
            //RJ
            // **************************************
            if (test1 > test2 && Duf == dtu)
            {
                string Ped1 = ("DELETE FROM ENTREGA WHERE CGC_CPF=@CGC AND DTENTREGA=@ENTREGA");
                SqlCommand comm1 = new SqlCommand(Ped1, conn);
                comm1.Parameters.AddWithValue("@CGC", TxtBox1.Text);
                comm1.Parameters.AddWithValue("@ENTREGA", dt0);
                comm1.ExecuteNonQuery();
                Label5.Text = "NÃO É POSSÍVEL SOLICITAR PEDIDOS PARA O DIA " + dt0;
            }
            if (test1 < test2 && Duf == dtu & Xteste>2)
            {   var dtx0 = Grid4.Rows[0].Cells[0].Text;
                string Ped1 = ("DELETE FROM ENTREGA WHERE CGC_CPF=@CGC AND DTENTREGA<=@ENTREGA");
                SqlCommand comm1 = new SqlCommand(Ped1, conn);
                comm1.Parameters.AddWithValue("@CGC", TxtBox1.Text);
                comm1.Parameters.AddWithValue("@ENTREGA", dtx0);
                comm1.ExecuteNonQuery();
                Label5.Text = "NÃO É POSSÍVEL SOLICITAR PEDIDOS P/O Rio de Janeiro para o dia: " + dt0;
            }


            //*********************
            //**Paraná**
            //*************************
            if (test1 > test2 && hh1 < hh2 & Dnome == dtn.Substring(0,2) & Dufpr == dtu)
            {
                var dtx0 = Grid4.Rows[0].Cells[0].Text;
                string Ped1 = ("DELETE FROM ENTREGA WHERE CGC_CPF=@CGC AND DTENTREGA<=@ENTREGA");
                SqlCommand comm1 = new SqlCommand(Ped1, conn);
                comm1.Parameters.AddWithValue("@CGC", TxtBox1.Text);
                comm1.Parameters.AddWithValue("@ENTREGA", dtx0);
                comm1.ExecuteNonQuery();
                Label5.Text = "NÃO É POSSÍVEL SOLICITAR PEDIDOS PARA O Paraná PARA O DIA " + dtx0 + ".";
            }
            if (test1 > test2 && hh1 > hh2 & Dnome == dtn.Substring(0, 2) & Dufpr == dtu)
            {
                
                Label5.Text = "EXPIROU O PRAZO PARA PEDIDOS PARA O Paraná NO DIA " + dt0;
            }
            //*****diferente de BK e diferente do Rio
            if (test1 < test2 && Dnome != dtn.Substring(0,2) & Duf != dtu)
            {
                string Ped1 = ("DELETE FROM ENTREGA WHERE CGC_CPF=@CGC AND DTENTREGA=@ENTREGA");
                SqlCommand comm1 = new SqlCommand(Ped1, conn);
                comm1.Parameters.AddWithValue("@CGC", TxtBox1.Text);
                comm1.Parameters.AddWithValue("@ENTREGA", dt0);
                comm1.ExecuteNonQuery();
                Label5.Text = "NÃO É POSSÍVEL SOLICITAR PEDIDOS PARA O DIA " + dt0 + ".";
            }
            // NOVO D2 ************
         //   var dt01 = DateTime.Now.ToString();
          //  int dttotal = dt01 - dt0;
            
            if (test1 < test2 & dt1=="domingo" & dtd=="seg")
            {
                string Ped1 = ("DELETE FROM ENTREGA WHERE CGC_CPF=@CGC AND DTENTREGA=@ENTREGA");
                SqlCommand comm1 = new SqlCommand(Ped1, conn);
                comm1.Parameters.AddWithValue("@CGC", TxtBox1.Text);
                comm1.Parameters.AddWithValue("@ENTREGA", dt0);
                comm1.ExecuteNonQuery();
                Label5.Text = "NÃO É POSSÍVEL PEDIDOS PARA O DIA " + dt0 + ".";
            }
            conn.Close();
        }

        protected void Test01_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GrdV2_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void TxtB2_TextChanged(object sender, EventArgs e)
        {
            TextBox TxtB2 = (TextBox)sender;
            GridViewRow gv = (GridViewRow)TxtB2.Parent.Parent;
            inn = (TxtB2.Text).ToString();
                   }

        protected void GrdV2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            vlr = (GrdV2.SelectedRow.Cells[5].Text).ToString();
           Decimal tot = Convert.ToDecimal(vlr) * Convert.ToDecimal(inn);
            idd = (GrdV2.SelectedRow.Cells[0].Text).ToString();
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            conn.Open();
            string item = ("UPDATE ITENS_PEDIDO SET QTDE = @qtde,STATUS='1', TOTAL= @total WHERE itemID=@itemID");
            SqlCommand comm1 = new SqlCommand(item, conn);
            comm1.Parameters.AddWithValue("@qtde", Convert.ToInt32(inn));
            comm1.Parameters.AddWithValue("@itemID", Convert.ToInt64(idd));
            comm1.Parameters.AddWithValue("@total", Convert.ToDecimal(tot));
            comm1.ExecuteNonQuery();
           
            GrdV2.DataBind();
            conn.Close();
        }

           protected void GrdView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GrdView1_Load(object sender, EventArgs e)
        {
            Lab6.Text = (GrdView1.Rows[0].Cells[0].Text);
            Lab7.Text = (GrdView1.Rows[0].Cells[1].Text);
            Text2.Text = (GrdView1.Rows[0].Cells[2].Text);
            Lab10.Text = (GrdView1.Rows[0].Cells[3].Text);
                         }

        protected void Text2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Butt2_Click(object sender, EventArgs e)
        {

        }

        protected void GrdV2_DataBound(object sender, EventArgs e)
        {
            Decimal ValorTotal = 0;
            foreach (GridViewRow row in GrdV2.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    if (!String.IsNullOrEmpty(row.Cells[6].Text))
                        ValorTotal += Decimal.Parse(row.Cells[6].Text);
                    Lbl11.Text = "Valor Total: "+ ValorTotal.ToString();
                }
            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}