using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week3
{
    public partial class lab3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtFirst.Focus();
                lblCheck.Text = "False";
                GetRandomImg();
                calendarExample.SelectedDate = DateTime.Today;

            }
        }

        protected void txtFirst_TextChanged(object sender, EventArgs e)
        {
            txtSecond.Text = txtFirst.Text;
            txtSecond.Focus();
        }

        protected void chkTrue_CheckedChanged(object sender, EventArgs e)
        {
            if (chkTrue.Checked)
            {
                lblCheck.Text = "True";

            }
            else
            {
                lblCheck.Text = "False";
            }
        }

        protected void rdlMagazine_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton selectedRadioButton = sender as RadioButton;

            if (selectedRadioButton != null && selectedRadioButton.Checked)
            {
                lblResult.Text = selectedRadioButton.Text;
            }
        }

        protected void imgBtnDartboard_Command(object sender, CommandEventArgs e)
        {
            int x = Convert.ToInt32(Request.Form["imgBtnDartboard.x"]);
            int y = Convert.ToInt32(Request.Form["imgBtnDartboard.y"]);

            if (Math.Pow(x - (50), 2) + Math.Pow(y - (50), 2) <= Math.Pow(5, 2))
            {
                lblResult.Text = "You hit the target at coords (" + x + "," + y + ")";
                lblResult.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblResult.Text = "You missed  (" + x + "," + y + ")";
                lblResult.ForeColor = System.Drawing.Color.Red;
            }
        }
        private void GetRandomImg()
        {
            Random random = new Random();
            int randomNumber = random.Next(1, 4);

            switch (randomNumber)
            {
                case 1:
                    imgRandom.ImageUrl = "/images/avatar3.png";
                    break;
                case 2:
                    imgRandom.ImageUrl = "/images/avatar5.jpg";
                    break;
                case 3:
                    imgRandom.ImageUrl = "/images/avatar4.png";
                    break;


                default:
                    imgRandom.ImageUrl = "/images/dart.jpg";
                    break;
            }
        }

        protected void btnAddToCart_ServerClick(object sender, EventArgs e)
        {
            AddToCartIfChecked(chkProduct1, "Product A");
            AddToCartIfChecked(chkProduct2, "Product B");
            AddToCartIfChecked(chkProduct3, "Product C");
        }

        protected void btnRemoveFromCart_ServerClick(object sender, EventArgs e)
        {
            for (int i = lstShoppingCart.Items.Count - 1; i >= 0; i--)
            {
                if (lstShoppingCart.Items[i].Selected)
                {
                    lstShoppingCart.Items.RemoveAt(i);
                }
            }
        }

        protected void calendarExample_DayRender(object sender, DayRenderEventArgs e)
        {

            e.Cell.ForeColor = System.Drawing.Color.Blue;

            // Check if it's a weekend (Saturday or Sunday)
            if (e.Day.Date.DayOfWeek == DayOfWeek.Saturday || e.Day.Date.DayOfWeek == DayOfWeek.Sunday)
            {
                e.Cell.ForeColor = System.Drawing.Color.Green;
            }

            // Check if it's the current date
            if (e.Day.Date == DateTime.Today)
            {
                e.Cell.ForeColor = System.Drawing.Color.Yellow;
            }

            // Check if it's the selected date
            if (e.Day.Date == calendarExample.SelectedDate)
            {
                e.Cell.ForeColor = System.Drawing.Color.Orange;
            }
            e.Cell.Font.Bold = true;
        }


        private void AddToCartIfChecked(CheckBox checkBox, string productName)
        {
            if (checkBox.Checked)
            {
                if (!lstShoppingCart.Items.Contains(new ListItem(productName)))
                {
                    lstShoppingCart.Items.Add(new ListItem(productName));
                }
            }
        }

    }
    
}