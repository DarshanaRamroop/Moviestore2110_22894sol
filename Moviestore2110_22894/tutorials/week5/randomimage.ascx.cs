using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week5
{
    public partial class randomimage : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string imageToDisplay = GetRandomImage();
            imgRandom.ImageUrl = Path.Combine("~/images", imageToDisplay);
            lblRandom.Text = imageToDisplay;
        }
        private string GetRandomImage()
        {
            Random rnd = new Random();
            string[] images = Directory.GetFiles(MapPath("~/images"), "*.jpg");
            string imageToDisplay = images[rnd.Next(images.Length)];
            return Path.GetFileName(imageToDisplay);
        }
       
    }
}