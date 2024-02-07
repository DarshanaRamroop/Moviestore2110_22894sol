using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Moviestore2110_22894.tutorials.week11
{
    public partial class task5 : System.Web.UI.Page
    {
        private string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblcategory";
            //Create DataReader
            SqlDataReader dr;
            //open connection
            con.Open();
            //execute sql statememt
            dr = cmd.ExecuteReader();
            //Bind the reader to the repeater control
            rptMovieCategories.DataSource = dr;
            rptMovieCategories.DataBind();

            con.Close();
            con.Open();
            int qs = Convert.ToInt32(Request.QueryString["id"]);
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con;
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select * from tblmovies where category_id =" + qs;
            SqlDataReader dr2 = cmd2.ExecuteReader();
            dlstMovieDetails.DataSource = dr2;
            dlstMovieDetails.DataBind();
            con.Close();
        }
    }
}