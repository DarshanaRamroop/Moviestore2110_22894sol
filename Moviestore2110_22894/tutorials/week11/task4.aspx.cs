using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace Moviestore2110_22894.tutorials.week11
{
    public partial class task4 : System.Web.UI.Page
    {
        private string _conString =
    WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtmoviename_TextChanged(txtmoviename, null);

        }

        protected void txtmoviename_TextChanged(object sender, EventArgs e)
        {

            //retrieve the values from the textbox and dropdown
            string moviename = txtmoviename.Text.Trim();
            string movieddl = ddlboxtotals.SelectedValue;
            //declare two variables and initialize to empty string literal
            string sqlmovie = "";
            string sqlamount = "";
            //check if moviename textbox is not empty
            if (moviename != "")
            {
                sqlmovie = " and moviename like @moviename + '%'";
            }
            //assign sql to search for moviename by starting character

            //check if a dropdown item has been selected
            if (movieddl != "-1")
            {
                sqlamount = " and boxofficetotals > @amount";
            }
            //assign sql to check if boxofficetotals is greater than dropdown value
            SqlConnection dbconn = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = dbconn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblMovies where status=1" + sqlmovie + sqlamount;
            //create two parameters: moviename and box
            cmd.Parameters.AddWithValue("@moviename", moviename);
            cmd.Parameters.AddWithValue("@amount", movieddl);
            SqlDataReader reader;
            dbconn.Open();
            reader = cmd.ExecuteReader();
            dlstMovies.DataSource = reader;
            dlstMovies.DataBind();
            dbconn.Close();
        }
    }
}