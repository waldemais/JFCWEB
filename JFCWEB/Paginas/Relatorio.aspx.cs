using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Net.Mime;
using System.Net.Configuration;
using AjaxControlToolkit;


namespace JFCWEB.Paginas
{
    public partial class Relatorio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBx1.Text = Session["Ped"].ToString();
            Labe1.Text = (GridView1.Rows[0].Cells[0].Text);
            Labe2.Text = (GridView3.Rows[0].Cells[1].Text);
            //******
        }
        private string GridViewToHtml(GridView gv)
        {
            StringBuilder sb = new StringBuilder();
            StringWriter sw = new StringWriter(sb);
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            gv.RenderControl(hw);
            return sb.ToString();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_Load(object sender, EventArgs e)
        {

        }

        protected void GridView3_Load(object sender, EventArgs e)
        {
          //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "confirm('Foi enviado um TESTE!')", true);
              
            System.Net.Mail.MailMessage mailMessage = new System.Net.Mail.MailMessage();
                string assunto = TextBx1.Text;
                string destino = Labe2.Text;
                string corpo = GridViewToHtml(GridView1);
                string corpo2 = GridViewToHtml(GridView2);
                string itens = Label2.Text;
                string total = Label3.Text;
                mailMessage.From = new System.Net.Mail.MailAddress("naoresponda@jfcverduras.com.br");
                mailMessage.To.Add(new System.Net.Mail.MailAddress(destino));
                mailMessage.CC.Add(new System.Net.Mail.MailAddress("pedidos@jfcverduras.com.br"));

                //Cópia oculta:
                //mailMessage.Bcc.Add(new System.Net.Mail.MailAddress("copia.oculta@email.com"));

                mailMessage.Subject = "Pedido JFC nº " + assunto;
                mailMessage.Body = corpo + "<br>" + corpo2 + "<br>" + "Total de Itens: " + itens + "<br>" + "Valor Total: R$" + total;
                mailMessage.IsBodyHtml = true;

                using (var smtp = new System.Net.Mail.SmtpClient())
                {
                    smtp.Host = "smtp.kinghost.net";
                    smtp.Port = 25;
                    smtp.EnableSsl = false;
                    smtp.Credentials = new System.Net.NetworkCredential("naoresponda@jfcverduras.com.br", "Jfc$0904");
                    smtp.Send(mailMessage);

                }
                try
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "alert('Foi enviado uma cópia para o email cadastrado!')", true);
                    // Labe1.Text = "Email enviado com sucesso!";
                }
                catch
                {
                    // Labe1.Text = "Ocorreu um erro ao enviar o Email.";
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "alert('Email inválido, verifique o email cadastrado!')", true);
                    //Labe2.Text = " ";
                }
                finally
                {

                
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            Response.Write("<script>window.print();</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView2_DataBound(object sender, EventArgs e)
        {
            decimal Total = 0;
            decimal TotalVlr = 0;
            foreach (GridViewRow row in GridView2.Rows)
            {
               if(row.RowType==DataControlRowType.DataRow)
                {
                    if (!string.IsNullOrEmpty(row.Cells[4].Text))
                        Total += Decimal.Parse(row.Cells[4].Text);
                        TotalVlr += Decimal.Parse(row.Cells[6].Text);
                    Label2.Text = Total.ToString();
                    Label3.Text = TotalVlr.ToString("C2");

                }
            }
          
        }
    }
}
