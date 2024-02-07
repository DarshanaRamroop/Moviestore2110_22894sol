using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week4
{
    public partial class lab4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double initialHighestBid = 100.0; // Replace with your logic to get the highest bid
            txtHighestBid.Text = initialHighestBid.ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        protected void cvNumberRange_ServerValidate(object source, ServerValidateEventArgs args)
        {

            int firstNumber, secondNumber, thirdNumber;

            if (int.TryParse(txtFirstNumber.Text, out firstNumber) &&
                int.TryParse(txtSecondNumber.Text, out secondNumber) &&
                int.TryParse(txtThirdNumber.Text, out thirdNumber))
            {
                args.IsValid = (thirdNumber >= firstNumber && thirdNumber <= secondNumber);
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btnPlaceBid_Click(object sender, EventArgs e)
        {
            double currentHighestBid = Convert.ToDouble(txtHighestBid.Text);
            double yourBid = Convert.ToDouble(txtYourBid.Text);

            if (yourBid > currentHighestBid)
            {

                txtHighestBid.Text = yourBid.ToString();

            }
        }

        protected void btnValidate_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string creditCardNumber = txtCreditCard.Text;
                // Strip away everything except numerals
                creditCardNumber = new string(creditCardNumber.Where(char.IsDigit).ToArray());

                // Process or display the validated and stripped credit card number
                lblValidationResult.Text = "Validated Credit Card Number: " + creditCardNumber;
            }
        }
    }
}