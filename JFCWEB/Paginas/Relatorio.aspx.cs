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
using System.Globalization;


namespace JFCWEB.Paginas
{
    public partial class Relatorio : System.Web.UI.Page
    {
        private static decimal ParsePtBrDecimal(string input)
        {
            if (string.IsNullOrWhiteSpace(input))
            {
                return 0m;
            }

            var decoded = HttpUtility.HtmlDecode(input) ?? string.Empty;
            decoded = decoded.Replace("\u00A0", " ").Trim();

            if (decoded == "&nbsp;")
            {
                return 0m;
            }

            var styles = NumberStyles.Number | NumberStyles.AllowCurrencySymbol;
            var culture = CultureInfo.GetCultureInfo("pt-BR");

            if (decimal.TryParse(decoded, styles, culture, out var value))
            {
                return value;
            }

            decoded = decoded.Replace("R$", string.Empty).Trim();
            if (decimal.TryParse(decoded, NumberStyles.Number, culture, out value))
            {
                return value;
            }

            return 0m;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Ped"] != null)
                {
                    string orderId = Session["Ped"].ToString();
                    TextBx1.Text = orderId;
                    litOrderNum.Text = orderId;
                    litOrderNumHeader.Text = orderId;
                    
                    // Bind data first to access values
                    GridView1.DataBind();
                    
                    if (GridView1.Rows.Count > 0)
                    {
                        Labe1.Text = GridView1.Rows[0].Cells[0].Text;
                        litCnpj.Text = GridView1.Rows[0].Cells[0].Text;
                        litNomeParc.Text = GridView1.Rows[0].Cells[1].Text;
                        litDataPedido.Text = GridView1.Rows[0].Cells[2].Text;
                        litDataEntrega.Text = GridView1.Rows[0].Cells[3].Text;
                        litStatus.Text = GridView1.Rows[0].Cells[4].Text;
                    }

                    // Bind email source
                    GridView3.DataBind();
                    if (GridView3.Rows.Count > 0)
                    {
                        Labe2.Text = GridView3.Rows[0].Cells[1].Text;
                    }

                    if (string.Equals(Request.QueryString["sendEmail"], "1", StringComparison.Ordinal))
                    {
                        TrySendEmailAndRedirect();
                        return;
                    }
                }
                else
                {
                    Response.Redirect("~/Cliente/Menu4.aspx");
                }
            }
        }

        private void TrySendEmailAndRedirect()
        {
            string assunto = TextBx1.Text;
            string destino = (Labe2.Text ?? string.Empty).Trim();

            if (string.IsNullOrWhiteSpace(destino))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "email-vazio", "alert('Email do cliente não cadastrado. Atualize o cadastro antes de enviar.');", true);
                return;
            }

            try
            {
                var _ = new MailAddress(destino);
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "email-invalido", "alert('Email inválido, verifique o email cadastrado!');", true);
                return;
            }

            if (Session["EmailEnviadoPedidoId"] != null && string.Equals(Session["EmailEnviadoPedidoId"].ToString(), assunto, StringComparison.Ordinal))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "email-ja-enviado", "alert('E-mail já foi enviado para este pedido nesta sessão.');", true);
                return;
            }

            System.Net.Mail.MailMessage mailMessage = new System.Net.Mail.MailMessage();
            string corpo = GridViewToHtml(GridView1);
            string corpo2 = GridViewToHtml(GridView2);
            string itens = Label2.Text;
            string total = Label3.Text;

            mailMessage.From = new System.Net.Mail.MailAddress("naoresponda@jfcverduras.com.br");
            mailMessage.To.Add(new System.Net.Mail.MailAddress(destino));
            mailMessage.CC.Add(new System.Net.Mail.MailAddress("pedidos@jfcverduras.com.br"));
            mailMessage.Subject = "Pedido JFC nº " + assunto;
            mailMessage.Body = corpo + "<br>" + corpo2 + "<br>" + "Total de Itens: " + itens + "<br>" + "Valor Total: R$" + total;
            mailMessage.IsBodyHtml = true;

            try
            {
                using (var smtp = new System.Net.Mail.SmtpClient())
                {
                    smtp.Host = "smtp.kinghost.net";
                    smtp.Port = 25;
                    smtp.EnableSsl = false;
                    smtp.Credentials = new System.Net.NetworkCredential("naoresponda@jfcverduras.com.br", "Jfc$0904");
                    smtp.Send(mailMessage);
                }

                Session["EmailEnviadoPedidoId"] = assunto;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "email-ok", "alert('Foi enviado uma cópia para o email cadastrado!');", true);

                Response.Redirect("Relatorio.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "email-erro", "alert('Ocorreu um erro ao enviar o e-mail. Tente novamente.');", true);
            }
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
            GridView1.DataBind();
        }

        protected void GridView3_Load(object sender, EventArgs e)
        {
            GridView3.DataBind();
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
                    if (row.Cells.Count > 2 && !string.IsNullOrWhiteSpace(row.Cells[2].Text))
                    {
                        Total += ParsePtBrDecimal(row.Cells[2].Text);
                    }

                    if (row.Cells.Count > 4 && !string.IsNullOrWhiteSpace(row.Cells[4].Text))
                    {
                        TotalVlr += ParsePtBrDecimal(row.Cells[4].Text);
                    }
                    Label2.Text = Total.ToString();
                    Label3.Text = TotalVlr.ToString("C2");

                }
            }
          
        }

        protected void GridView2_Load(object sender, EventArgs e)
        {
            GridView2.DataBind();
        }
    }
}
