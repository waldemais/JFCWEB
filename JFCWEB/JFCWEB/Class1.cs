using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
namespace JFCWEB
{
    public class Class1
    {
        public class class1 : Page
        {
            public override void VerifyRenderingInServerForm(Control controle)
            {
                GridView grid = controle as GridView;
                if (grid != null && grid.ID == "GrdV2")

                    return;
                else

                    base.VerifyRenderingInServerForm(controle);
            }
        }
    }
}