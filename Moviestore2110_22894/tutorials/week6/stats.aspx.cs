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
    public partial class stats : System.Web.UI.Page
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
            scmd.CommandText = "select count(*) from tblmovies";
            con.Open();
            //Creating a DataReader
            hymovies.Text= scmd.ExecuteScalar().ToString();

          
        }
    }
}