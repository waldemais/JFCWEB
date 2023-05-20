using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net.Mime;
using System.Net.Configuration;
using System.Net;
using System.Text;
using System.IO;
using System.Web.UI.HtmlControls;

namespace JFCWEB.Paginas
{
    public partial class CrmProcedente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TB1.Text = Session["Ped"].ToString();
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
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }
        protected void Button1_Click(object sender, EventArgs e)
        {
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            string sql = ("UPDATE CRM1 SET Qautoriz=@Q,Nomeaprov=@N,Emailaprov=@E,Obser=@O,Status='Procedente' WHERE Id=@ID");
            SqlCommand comm = new SqlCommand(sql, conn);
            comm.Parameters.AddWithValue("@Q", TextBox1.Text);
            comm.Parameters.AddWithValue("@N", TextBox2.Text);
            comm.Parameters.AddWithValue("@E", TextBox3.Text);
            comm.Parameters.AddWithValue("@O", TextBox4.Text);
            comm.Parameters.AddWithValue("@ID", TB1.Text);
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            Button1.Enabled = false;
            GridView1.DataBind();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "confirm('Deseja enviar email para o solicitante?')", true);
            try
            {
            var Eid = (GridView1.Rows[0].Cells[0].Text);
            var Esol = (GridView1.Rows[0].Cells[7].Text);
            string corpo = GridViewToHtml(GridView1);
            
                System.Net.Mail.MailMessage mailMessage = new System.Net.Mail.MailMessage();

            mailMessage.From = new System.Net.Mail.MailAddress("pedidos@jfcverduras.com.br");
            mailMessage.To.Add(new System.Net.Mail.MailAddress(Esol.ToString()));

            //Cópia:
            //mailMessage.CC.Add(new System.Net.Mail.MailAddress("copia@email.com"));

            //Cópia oculta:
            //mailMessage.Bcc.Add(new System.Net.Mail.MailAddress("copia.oculta@email.com"));

            mailMessage.Subject = "CRM JFC Nº " + Eid;
            mailMessage.Body = "a Solicitação foi PROCEDENTE " + "<br>" + corpo;
            mailMessage.IsBodyHtml = true;

            using (var smtp = new System.Net.Mail.SmtpClient())
            {
                smtp.Host = "smtp.kinghost.net";
                smtp.Port = 25;
                smtp.EnableSsl = false;
                smtp.Credentials = new System.Net.NetworkCredential("pedidos@jfcverduras.com.br", "Jfc$0905");
                    smtp.Send(mailMessage);
                //Exemplo de anexo de texto:
                //mailMessage.Attachments.Add(new System.Net.Mail.Attachment(
                //   new MemoryStream(Encoding.UTF8.GetBytes("conteudo do arquivo")),
                //   "anexo.txt", System.Net.Mime.MediaTypeNames.Text.Plain));
            }
                       
                //MailMessage.Send(mail);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "alert('a resposta foi enviada para o Solicitante!')", true);
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sua-mensagem", "alert('Ocorreu um problema ao enviar o emai!')", true);
            }
            finally
            {
               // mail = null;
            }
        }
    }
}