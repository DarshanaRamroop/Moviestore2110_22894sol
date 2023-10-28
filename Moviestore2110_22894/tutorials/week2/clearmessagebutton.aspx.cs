using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week2
{
    public partial class clearmessagebutton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (Request.Form["__EVENTTARGET"] == Button1.UniqueID)
                {
                    
                    Button1.Text = string.Empty;
                }
            }

        }
    }
}