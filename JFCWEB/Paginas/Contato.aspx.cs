using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JFCWEB.Paginas
{
    public partial class CONTATO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = (GridView3.Rows[0].Cells[1].Text);
        }

        protected void Btpopup_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage popEmail = new MailMessage();
                popEmail.From = (LABE2;
                popEmail.To.Add("pedidos@jfcverduras.com.br");
                popEmail.Priority = MailPriority.Normal;
                popEmail.IsBodyHtml = true;
                popEmail.Subject = ("CRM");
                popEmail.Body = Txtpopup.Text;
                popEmail.SubjectEncoding = Encoding.GetEncoding("ISO-8859-1");
                popEmail.BodyEncoding = Encoding.GetEncoding("ISO-8859-1");
                //*
            }
    }
}