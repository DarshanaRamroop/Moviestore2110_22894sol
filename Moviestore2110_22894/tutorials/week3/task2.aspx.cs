using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week3
{
    public partial class task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = CheckBox1.Checked ? "True" : "False";
                Label2.Text = CheckBox2.Checked ? "True" : "False";
            }

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

            Label1.Text = CheckBox1.Checked ? "True" : "False";

        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            Label2.Text = CheckBox2.Checked ? "True" : "False";

        }
    }
}