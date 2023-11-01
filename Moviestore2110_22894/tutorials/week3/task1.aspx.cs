using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week3
{
    public partial class task1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.TextChanged += TextBox1_TextChanged;

        }

        private void TextBox1_TextChanged(object sender, EventArgs e)
        {

            TextBox2.Text = TextBox1.Text;
           
        }
    }
}