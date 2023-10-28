using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week2
{
    public partial class task4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int thetime = DateTime.Now.Hour;
            if (thetime < 12)
            {
                Label1.Text = "Good morning";
            }

            else
            {
                Label1.Text = "Good afternoon";
            }

        }
    }
}