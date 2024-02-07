using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week2
{
    public partial class lab2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime CurrentDate = DateTime.Now;
            if (CurrentDate.Hour < 12)
            {
                lblGreeting.Text = " Goodmorning";
                afternoonLink.Visible = false;
            }
            else
            {
                lblGreeting.Text = " Good Afternoon";
                morningLink.Visible = false;
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            lblClear.Text = "";
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            if (btnshow.Text == "Hide")
            {
                lblShow.Visible = false;
                btnshow.Text = "Show";
            }
            else
            {
                lblShow.Visible = true;
                btnshow.Text = "Hide";
            }
        }

        protected void btnTransfer_Click(object sender, EventArgs e)
        {
            txtToThis.Text = txtTransferThis.Text;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = DropDownList1.SelectedValue;
            Response.Redirect($"home.aspx/{selectedValue}");
        }
    }
}