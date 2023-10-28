using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week2
{
    public partial class task6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.Items.Add(new ListItem("Avatar"));

                DropDownList1.Items.Add(new ListItem("Conjuring"));

                DropDownList1.Items.Add(new ListItem("Harry Potter"));

                string choice = Request.Form[DropDownList1.UniqueID]

                    if (!string.IsNullOrEmpty(choice))
                {
                    Response.Redirect(choice);
                }


            }

        }
    }
}