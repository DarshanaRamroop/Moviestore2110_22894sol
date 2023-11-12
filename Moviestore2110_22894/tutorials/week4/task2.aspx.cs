using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week4
{
    public partial class task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (int.TryParse(txtnum1.Text, out int num) && int.TryParse(txtnum2.Text, out int num1) && num < num1) {

                txtnum3.Text = (num + 1).ToString();

            }
            else
            {
                txtnum3.Text = "Wrong! please re enter the numbers";
            }
        }
    }
}