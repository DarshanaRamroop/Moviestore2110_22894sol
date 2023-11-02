using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week3
{
    public partial class task9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string adults = TextBox1.Text;
            string children = TextBox2.Text;
            string departure = TextBox3.Text;
            string returnd = TextBox4.Text;
        }
    }
}