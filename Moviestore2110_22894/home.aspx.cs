using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace moviestore2110_22876
{
    public partial class home : System.Web.UI.Page
    {

        private static string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;


        SqlConnection con = new SqlConnection(_conString);
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack)
            {
                LoadCategory();
            }
            TextBox1_TextChanged(TextBox1, null);
        }

        private void LoadCategory()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(_conString))
            {
                try
                {
                    SqlDataAdapter da = new SqlDataAdapter("SELECT * from tblCategory", _conString);
                    da.Fill(dt);


                    ddlCategory.DataSource = dt;
                    ddlCategory.DataTextField = "category_name";
                    ddlCategory.DataValueField = "category_id";
                    ddlCategory.DataBind();
                }
                catch (Exception ex)
                {
                    lblmsg.Text = ex.Message;
                }
            }
            ddlCategory.Items.Insert(0, new ListItem("Select Category", "-1"));
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            String CatIDs = ddlCategory.SelectedValue;
            SqlConnection con = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            String sqlParam = "";
            String sqlParamCat = "";


            if (TextBox1.Text.Trim() != null)
                sqlParam = " and moviename LIKE '%' + @mname + '%'";
            if (CatIDs != "-1")
                sqlParamCat = " and tblMovies.category_id = @CatID";
            cmd.CommandText = "SELECT Movie_id, moviename, description, Director,BoxOfficeTotals, poster FROM tblMovies WHERE status = 1 " + sqlParam + sqlParamCat;
            cmd.Parameters.AddWithValue("@mname", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@CatID", CatIDs);
            DataTable table = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(table);
            lvMovies.DataSource = table;
            lvMovies.DataBind();
        }

        protected void lvMovies_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (lvMovies.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            TextBox1_TextChanged(TextBox1, null);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("~/tutorials/week5/login");
            }
            else
            {
                LinkButton btn = (LinkButton)sender;
                int mid = Convert.ToInt32(btn.CommandArgument.ToString());
                if (chkexist(mid))
                {
                    lblmsg.Text = "Already sent request for this movie!";
                    lblmsg.ForeColor = System.Drawing.Color.Red;

                    btn.Text = "Request sent";

                }
                else
                {
                    SqlConnection con = new SqlConnection(_conString);
                    SqlCommand cmd = new SqlCommand();
                    //add INSERT statement to request access to movie

                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into tblMovieUser(Movie_id, User_id,accessdate, status) " + "values (@mid, @uid, @dateaccess, @status)";
                    cmd.Parameters.AddWithValue("@uid", Session["uid"]);
                    cmd.Parameters.AddWithValue("@mid",mid );
                    cmd.Parameters.AddWithValue("@dateaccess",DateTime.Now);
                    cmd.Parameters.AddWithValue("@status",0 );
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();


                    btn.Text = "Request sent";
                    lblmsg.Text = "Request sent!";

                    lblmsg.ForeColor = System.Drawing.Color.Green;
                }
            }
        }

        private Boolean chkexist(int x)
        {
            // Create Connection
            SqlConnection con = new SqlConnection(_conString);
            // Create Command
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            //search for user
            cmd.CommandText = "select * from tblMovieUser where movie_id=@mid and user_id = @uid";
            cmd.Connection = con;
            //create a parameterized query
            cmd.Parameters.AddWithValue("@uid", Session[""]);
            cmd.Parameters.AddWithValue("@mid",x );
            //Create DataReader
            SqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();
            //Check if user subscription already exists in the table
            if (dr.HasRows )
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }

}