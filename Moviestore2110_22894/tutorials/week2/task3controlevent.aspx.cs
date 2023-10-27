using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviestore2110_22876.tutorials.week2
{
    public partial class task3controlevent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Click Me!";
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Label1.Text = "Thanks!";
        }
    }
}