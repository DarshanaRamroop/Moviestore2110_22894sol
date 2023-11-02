using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week3
{
    public partial class task7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

            }

        }

        protected void Buttonadd_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in cblproduct.Items)
            {
                if (item.Selected && !ListBox1.Items.Contains(item))
                {
                    ListBox1.Items.Add(item);
                }
            }

        }

        protected void Buttonremove_Click(object sender, EventArgs e)
        {

            for (int i =ListBox1.Items.Count - 1; i >= 0; i--)
            {
                if (ListBox1.Items[i].Selected)
                {
                    ListBox1.Items.RemoveAt(i);
                }
            }

        }
    }
}