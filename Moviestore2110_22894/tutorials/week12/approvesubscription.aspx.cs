using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week12
{
    public partial class approvesubscription : System.Web.UI.Page
    {
        private static string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        SqlConnection con = new SqlConnection(_conString);
        protected void Page_Load(object sender, EventArgs e)
        {
           
               getUserMovieDetails();
           
        }

        void getUserMovieDetails()
        {
            SqlConnection con = new SqlConnection(_conString);
            con.Open();
            SqlCommand ccmd = con.CreateCommand();
            ccmd.CommandType = CommandType.Text;
            ccmd.CommandText = "Select tu.user_id as user_id, ";
            ccmd.CommandText += "tu.firstname as fname, ";
            ccmd.CommandText += "tu.lastname as lname, ";
            ccmd.CommandText += "tu.username as uname, ";
            ccmd.CommandText += "tu.imageurl as image, ";
            ccmd.CommandText += "tu.status as ustatus, ";
            ccmd.CommandText += "tum.movie_id as mid, ";
            ccmd.CommandText += "tum.accessdate as accdate, ";
            ccmd.CommandText += "tum.status as tumstatus, ";
            ccmd.CommandText += "tm.moviename as mname, ";
            ccmd.CommandText += "tm.status as mstatus ";
            ccmd.CommandText += "from tblUser tu, tblMovieUser tum, tblMovies tm ";
            ccmd.CommandText += "where tu.user_id = tum.user_id ";
            ccmd.CommandText += "and tum.movie_id = tm.movie_id ";
            ccmd.CommandText += "and tu.status = '1' ";

          
ccmd.CommandText += "and tm.status = '1' ";
            SqlDataAdapter sqlda = new SqlDataAdapter(ccmd.CommandText, con);
            DataTable dta = new DataTable();
            sqlda.Fill(dta);
            con.Close();
            gvs.DataSource = dta;
            gvs.DataBind();
        }

        protected void gvs_PreRender(object sender, EventArgs e)
        {
            if (gvs.Rows.Count > 0)
            {
                //This replaces <td> with <th> and adds the scope attribute
                gvs.UseAccessibleHeader = true;
                //This will add the <thead> and <tbody> elements
                gvs.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }

        protected void lnkdeny_Click(object sender, EventArgs e)
        {

            LinkButton lnk = (LinkButton)sender;
            GridViewRow grvRow = (GridViewRow)lnk.NamingContainer;
            HiddenField hf = grvRow.FindControl("hidmov") as HiddenField;
            int mov_id = Convert.ToInt32(hf.Value);
            int user_id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            SqlConnection con = new SqlConnection(_conString);
            con.Open();
            SqlCommand ucmd = con.CreateCommand();
            ucmd.CommandType = CommandType.Text;
            ucmd.CommandText = "update tblMovieUser set status='1' Where user_id ='"
            + user_id + "' and movie_id ='" + mov_id + "'";
            ucmd.ExecuteNonQuery();
            con.Close();
            getUserMovieDetails();
        }

        protected void lnkgrant_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            GridViewRow grvRow = (GridViewRow)lnk.NamingContainer;
            HiddenField hf = grvRow.FindControl("hidmov") as HiddenField;
            int mov_id = Convert.ToInt32(hf.Value);
            int user_id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            SqlConnection con = new SqlConnection(_conString);
            con.Open();
            SqlCommand ucmd = con.CreateCommand();
            ucmd.CommandType = CommandType.Text;
            ucmd.CommandText = "update tblMovieUser set status='1' Where user_id ='"
            + user_id + "' and movie_id ='" + mov_id + "'";
            ucmd.ExecuteNonQuery();
            con.Close();
            getUserMovieDetails();
        }
    }
}