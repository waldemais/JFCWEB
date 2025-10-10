using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;

namespace JFCWEB
{
    public partial class TPrograma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime dt1 = Convert.ToDateTime("23:00");
            DateTime dt2 = Convert.ToDateTime("15");

        TimeSpan ts =dt1 - dt2;

       // WriteLine($"Diferença em horas {ts.TotalHours}");
       // WriteLine($"Diferença em minutos {ts.TotalMinutes}");
       // WriteLine($"Diferença em dias {ts.TotalDays}");            
       // WriteLine($"Diferença maior que 4 horas: {ts.TotalHours >= 4}");  
            
            // string tempo1 = "SELECT TEMPO FROM VPrograma WHERE (IDSEM = 1)";
           // string tempo = Request.QueryString["JFC"];
           // this.Label2.Text = "" + tempo1 + "BENVINDO";


            Label2.Text ="Diferença em horas "+ ts.TotalHours;
           }

        } 
    }