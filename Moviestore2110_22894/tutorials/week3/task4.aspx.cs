using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week3
{
    public partial class task4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            int x = 20;
            int y = 30;
            int radius = 50;

            bool bulleye = Math.Abs(x - y) > radius;
            TextBox1.Text = bulleye ? $"You hit the bulleye at ({e.X},{e.Y})" : "You missed the bulleye";





        }
    }
}