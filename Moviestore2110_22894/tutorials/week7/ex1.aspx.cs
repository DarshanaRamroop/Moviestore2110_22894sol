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
    public partial class ex1 : System.Web.UI.Page
    {
        private string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getMovielist();
            }

        }
        private void getMovielist()
        {
            // Create Connection
            SqlConnection con = new SqlConnection(_conString);
            // Create Command
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM tblMovies";
            cmd.Connection = con;
            // Create DataAdapter (Refer to slide 8)
            SqlDataAdapter da= new SqlDataAdapter(cmd);
            DataTable dtMovies = new DataTable();

            using (da)
            {
                da.Fill(dtMovies);
            }
             gvs.DataSource= dtMovies;
            gvs.DataBind();

        }

        protected void gvs_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvs.PageIndex = e.NewPageIndex;
            getMovielist();

        }
    }
}