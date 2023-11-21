using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Moviestore2110_22894.tutorials.week6
{
    public partial class ex3 : System.Web.UI.Page
    {
        private string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            getMovieDetails();

        }

        private void getMovieDetails()
        {
            // Create Connection
            SqlConnection con = new SqlConnection(_conString);
            // Create Command
            SqlCommand scmd = new SqlCommand();
            scmd.Connection = con;
            scmd.CommandType = CommandType.Text;
            scmd.CommandText = "SELECT * FROM tblCategory tc, tblmovies tm where tc.Category_Id=tm.Category_Id";
            con.Open();
            //Creating a DataReader
            SqlDataReader dr;
           dr = scmd.ExecuteReader();
            while (dr.Read())
            {
                ListItem li =new ListItem();
                li.Text = dr["Category_Name"] + ";" + dr["Moviename"] + ",$" + dr["Boxofficetotals"];
                BulletedList1.Items.Add(li);


            }


            con.Close();
        }


    }
}