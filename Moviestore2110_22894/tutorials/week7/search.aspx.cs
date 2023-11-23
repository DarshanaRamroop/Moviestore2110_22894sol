using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Moviestore2110_22894.tutorials.week7
{
    public partial class search : System.Web.UI.Page
    {
        private string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtmovieid_TextChanged(object sender, EventArgs e)
        {

            //Add the following codes in a TextChanged event
            SqlConnection con = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            //create the movieid parameter
            cmd.Parameters.AddWithValue("@ParamValue", txtmovieid.Text);
            //assign the parameter to the sql statement
            cmd.CommandText = "SELECT * FROM tblMovies where movie_id= @ParamValue";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //Create a DataTable
            DataTable dtmovies = new DataTable();

            using (da)
            {
                //Populate the DataTable
                da.Fill(dtmovies);
            }
            //Set the DataTable as the DataSource
            gvs.DataSource = dtmovies;
            gvs.DataBind();
        }
    }
}