using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

namespace Moviestore2110_22894.tutorials.week12
{
    public partial class viewmovieschedule : System.Web.UI.Page
    {
        private static string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;


        SqlConnection con = new SqlConnection(_conString);
        protected void Page_Load(object sender, EventArgs e)
        {
            getMovies();
        }
        void getMovies()
        {
            con.Open();
            SqlCommand ccmd = new SqlCommand();
            ccmd.Connection = con;
            ccmd.CommandType = CommandType.Text;
            ccmd.CommandText = "Select tm.movie_id as movie_id, ";
            ccmd.CommandText += "tm.moviename as mname, ";
            ccmd.CommandText += "tm.schedule as schedule, ";
            ccmd.CommandText += "tm.status as status, ";
            ccmd.CommandText += "tm.Description as descr, ";
            ccmd.CommandText += "tm.poster as poster, ";
            ccmd.CommandText += "tm.Boxofficetotals as box, ";
            ccmd.CommandText += "tc.category_name as cat_name ";
            ccmd.CommandText += "from tblMovies tm, tblcategory tc ";
            ccmd.CommandText += "where tm.category_id = tc.category_id ";
            ccmd.CommandText += "and tm.Status = 'True' ";
            SqlDataAdapter sqlda = new SqlDataAdapter(ccmd);
            DataTable dta = new DataTable();
            sqlda.Fill(dta);
            con.Close();
            gvs2.DataSource = dta;
            gvs2.DataBind();
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
             
            //string schedule;
            //con.Open();
            //SqlCommand scmd = new SqlCommand();
            //scmd.Connection = con;
            //scmd.CommandType = CommandType.Text;
            ////scmd.CommandText = "Select schedule from tblmovies where movie_id = '" + mov_id + "'";
            //scmd.Connection = con;
            //SqlDataReader rd = scmd.ExecuteReader();
            //if (rd.HasRows)
            //{
            //    while (rd.Read())
            //    {
            //        schedule = Server.MapPath(rd[0].ToString());
            //        if (!String.IsNullOrEmpty(schedule))
            //        {
            //            File.Delete(schedule);
            //        }
            //    }
            //}
            //rd.Close();
            //SqlCommand dcmd = new SqlCommand();
            //dcmd.Connection = con;
            //dcmd.CommandType = CommandType.Text;
            //dcmd.CommandText = "delete from tblmovies where movie_id= " +mov_id;
            //dcmd.ExecuteNonQuery();
            //con.Close();
            //Response.Redirect(Request.RawUrl);
        }

        protected void gvs2_PreRender(object sender, EventArgs e)
        {
            if (gvs2.Rows.Count > 0)
            {
                //This replaces <td> with <th> and adds the scope attribute
                gvs2.UseAccessibleHeader = true;
                //This will add the <thead> and <tbody> elements
                gvs2.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
    }
}