using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week3
{
    public partial class task5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Random random = new Random();
            int randno = random.Next(1,4);

            switch (randno)
            {
                case 1:
                    Image1.ImageUrl = "~/images/1.jpg";
                    break;
                    case 2:
                    Image1.ImageUrl = "~/images/2.jpg";
                    break;
                    case 3:
                    Image1.ImageUrl = "~/images/3.jpg";
                    break;
                default:
                    break;

            }

        }
    }
}