using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week2
{
    public partial class task5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int thetime = DateTime.Now.Hour;
            if (thetime < 12)
            {
                HyperLink1.Text = "Visit Morning Session";
            }
            else
            {
                HyperLink1.Text="Visit Afternoon Session";
            }
        }
    }
}