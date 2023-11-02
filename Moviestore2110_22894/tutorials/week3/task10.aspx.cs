using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week3
{
    public partial class task10 : System.Web.UI.Page
    {
        private string[] advert = { "~/images/1.jpg", "~/images/2.jpg", "~/images/3.jpg" };
        private int current = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
             

            }

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

            current= (current+1) % advert.Length;
            Image1.ImageUrl= advert[current];


        }
    }
}