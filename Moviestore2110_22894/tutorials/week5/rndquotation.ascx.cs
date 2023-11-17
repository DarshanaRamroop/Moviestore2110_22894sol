using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week5
{
    public partial class rndquotation : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> quotes = new List<string>();
            quotes.Add("All paid jobs absorb and degrade the mind -- Aristotle");
            quotes.Add("No evil can happen to a good man, either in life or after death --Plato");
            quotes.Add("The only good is knowledge and the only evil is ignorance -Plato");
            Random rnd = new Random();
            lblQuote.Text = quotes[rnd.Next(quotes.Count)];
        }
    }
}