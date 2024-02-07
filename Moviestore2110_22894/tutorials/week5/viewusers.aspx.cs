using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Drawing;
using static System.Net.Mime.MediaTypeNames;

namespace Moviestore2110_22894.tutorials.week5
{
    public partial class viewusers : System.Web.UI.Page
    {
        private string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(_conString);
                SqlCommand cmd = new SqlCommand("SELECT user_id, imageurl, email, status FROM tblUser", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                con.Open();
                da.Fill(dt);
                con.Close();

                dlstuser.DataSource = dt;
                dlstuser.DataBind();

                foreach (DataListItem item in dlstuser.Items)
                {
                    ImageButton imgButton = item.FindControl("ImageButton1") as ImageButton;
                    if (imgButton != null)
                    {
                        DataRowView drv = item.DataItem as DataRowView;
                        if (drv != null && drv.Row != null)
                        {
                            int userID = Convert.ToInt32(drv["user_id"]);
                            string imageUrl = drv["imageurl"].ToString();

                            imgButton.Click += (s, args) =>
                            {
                                Response.Redirect($"UserDetailsPage.aspx?userID={userID}");
                            };
                        }
                    }
                }
            }
        }
    }
}



