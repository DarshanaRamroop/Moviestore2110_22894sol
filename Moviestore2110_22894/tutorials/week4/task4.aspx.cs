using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week4
{
    public partial class task4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string num = txtcredit.Text.Replace(" ", "").Replace("-", "");

            if (System.Text.RegularExpressions.Regex.IsMatch(num, @"^\d{4}[-\s]?\d{4}[-\s]?\d{4}[-\s]?\d{4}$"))
            {
                Response.Write("Vaild card number");
            }
            else
            {
                Response.Write("Invalid card number!");
            }
        }
    }
}