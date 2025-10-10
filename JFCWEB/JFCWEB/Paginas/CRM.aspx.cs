using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Reflection.Emit;

namespace JFCWEB.Paginas
{
    public partial class CRM : System.Web.UI.Page
    {
        public string strcon { get; set; }
        public SqlConnection conn { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            TBox12.Text = Session["cgc"].ToString();
            TBox13.Text = Grid1.Rows[0].Cells[0].Text;
            TBox2.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
            
        }

        protected void Bton1_Click(object sender, EventArgs e)
        {
            string Box2;
            Box2 = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
            strcon = "Data Source=mssql.jfcverduras.com.br;Initial Catalog=jfcverduras;User ID=jfcverduras;Password=jfc102030";
            conn = new SqlConnection(strcon);
            byte[] imageBytes = new byte[FileUp.PostedFile.InputStream.Length + 1];
            FileUp.PostedFile.InputStream.Read(imageBytes, 0, imageBytes.Length);
           String nome = FileUp.FileName;
            String ext = "image/jpeg";
            var mensagem = string.Empty;
            if (this.FileUp.HasFile)
            {
                this.FileUp.SaveAs(Server.MapPath("~/Fotos/" + FileUp.FileName));
                //mensagem = "Arquivo gravado com sucesso!";

            }
           // else
             //   mensagem = "É obrigatório o arquivo da imagem";
          //  ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Mensagem", "alert('" + mensagem + "')", true);



            string sql = ("INSERT INTO CRM1(Dtatual,Numnota,Ocor,CGC,Nomepar,Produto,Qentregue,Qreclamada,Lote,Ocorrencia,Dtemb,Dtvenc,Nome,Tel,BKNumber,Emailsol,Status,Foto,Classe,Mime,Extensao) VALUES (@TB2,@TB5,@TB3,@TB12,@TB13,@Dl1,@TB6,@TB7,@TB8,@TB11,@TB9,@TB10,@TB14,@TB15,@TB16,@TB17,'Aberto',@imagem,@TB01,@Mime,@nome) SELECT SCOPE_IDENTITY()");
            SqlCommand comm = new SqlCommand(sql, conn);
            comm.Parameters.AddWithValue("@TB2", Box2);
            comm.Parameters.AddWithValue("@TB5", TBox5.Text);
            comm.Parameters.AddWithValue("@TB3", TBox3.Text);
            comm.Parameters.AddWithValue("@TB12", TBox12.Text);
            comm.Parameters.AddWithValue("@TB13", TBox13.Text);
            comm.Parameters.AddWithValue("@Dl1", Dl1.Text);
            comm.Parameters.AddWithValue("@TB6", TBox6.Text);
            comm.Parameters.AddWithValue("@TB7", TBox7.Text);
            comm.Parameters.AddWithValue("@TB8", TBox8.Text);
            comm.Parameters.AddWithValue("@TB11", TBox11.Text);
            comm.Parameters.AddWithValue("@TB9", TBox9.Text);
            comm.Parameters.AddWithValue("@TB10", TBox10.Text);
            comm.Parameters.AddWithValue("@Tb14", TBox14.Text);
            comm.Parameters.AddWithValue("@Tb15", TBox15.Text);
            comm.Parameters.AddWithValue("@imagem", imageBytes);
            comm.Parameters.AddWithValue("@Tb16", TBox16.Text);
            comm.Parameters.AddWithValue("@Tb17", TBox17.Text);
            comm.Parameters.AddWithValue("@TB01", TBox.Text);
            comm.Parameters.AddWithValue("@Mime", ext);
            comm.Parameters.AddWithValue("@nome",nome);
            conn.Open();
            //comm.ExecuteNonQuery();
            int imagemID = Convert.ToInt16(comm.ExecuteScalar());
            hplnkExibeImagem.NavigateUrl = "~/Paginas/ExibirImagem.aspx?ID=" + imagemID.ToString();
            conn.Close();
            Bton1.Enabled = false;
            TBox2.Text = Box2.ToString();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('" + " CRM incluido com sucesso e enviado para análise.')", true);
            hplnkExibeImagem.Visible = true;
            FileUp.FileContent.Flush();
            TBox11.Text = "";
            //*************************
            System.Net.Mail.MailMessage mailMessage = new System.Net.Mail.MailMessage();
            string assunto = TBox5.Text;
            string destino = "pedidos@grupocampanha.com.br";
            string corpo = "Olá, Você esta recebendo um novo CRM referente a nota " + TBox5.Text;
            string corpo2 = " O Cliente é: "+TBox12.Text+" - "+TBox13.Text;
            
            //string itens = Label2.Text;
            //string total = Label3.Text;
            mailMessage.From = new System.Net.Mail.MailAddress("pedidos@jfcverduras.com.br");
            mailMessage.To.Add(new System.Net.Mail.MailAddress(destino));

            //Cópia:
            //mailMessage.CC.Add(new System.Net.Mail.MailAddress("copia@email.com"));

            //Cópia oculta:
            //mailMessage.Bcc.Add(new System.Net.Mail.MailAddress("copia.oculta@email.com"));

            mailMessage.Subject = "Crm nota nº." + assunto;
            mailMessage.Body = corpo + "<br>" + corpo2 + "</br>"+"<br>"+"acesse www.jfcverduras.com.br"+"</br>";
            mailMessage.IsBodyHtml = true;

            using (var smtp = new System.Net.Mail.SmtpClient())
            {
                smtp.Host = "smtp.kinghost.net";
                smtp.Port = 25;
                smtp.EnableSsl = false;
                smtp.Credentials = new System.Net.NetworkCredential("pedidos@jfcverduras.com.br", "Jfc$0905");
                smtp.Send(mailMessage);

            }
            try
            {

                //Response.Redirect("~/Paginas/Menucrm.aspx");
                //Labe1.Text = "Email enviado com sucesso!";
            }
            catch
            {
              //  Labe1.Text = "Ocorreu um erro ao enviar o Email.";

              
            }
            finally
            {

            }
            
        }
        
        protected void RBList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String valor1 = "1";
            String valor2 = "2";

            if (RBList1.Items[0].Selected)
            {
                TBox.Text = valor1.ToString();
            }
            if (RBList1.Items[1].Selected)
            {
                TBox.Text = valor2.ToString();
            }
        }

        
    }
}
               