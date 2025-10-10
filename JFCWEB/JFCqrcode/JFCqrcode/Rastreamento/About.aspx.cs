using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.OleDb;

namespace Rastreamento
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            UpArquivo();
           
        }
        private void UpArquivo()
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string nomeArquivo = FileUpload1.FileName;
                    FileUpload1.SaveAs(@"D:\web\localuser\jfcverduras\www\upload\" + nomeArquivo);

                }
                catch (Exception ex)
                {
                    Response.Write(ex);
                }
            }

        }
    
    }
}