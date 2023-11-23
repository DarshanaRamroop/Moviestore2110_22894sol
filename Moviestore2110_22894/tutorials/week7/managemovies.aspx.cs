using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using static System.Net.Mime.MediaTypeNames;
using System.IO;
using Microsoft.Ajax.Utilities;

namespace Moviestore2110_22894.tutorials.week7
{
    public partial class managemovies : System.Web.UI.Page
    {
        private string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindMovieData();
                BindCategory();
                ListItem li = new ListItem("Select Category", "-1");
                ddlcat.Items.Insert(0, li);
            }

        }
        private void BindMovieData()
        {
            SqlConnection con = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblMovies";
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
        private void BindCategory()
        {
            SqlConnection con = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblCategory";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //Create a DataTable
            DataTable dtcat = new DataTable();
            using (da)
            {
                //Populate the DataTable
                da.Fill(dtcat);
            }
            //Set the DataTable as the DataSource
            ddlcat.DataSource = dtcat;
            //assign the FIELD values to the dropdown
            ddlcat.DataTextField = "Category_Name";
            ddlcat.DataValueField = "Category_Id";
            ddlcat.DataBind();
        }

        protected void gvs_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblMsg.Text = "";
            Image1.Visible = true;
            Image2.Visible = true;
            //Retrieve the Primary Key MovieId from the GridView
            txtMovieId.Text = (gvs.DataKeys[gvs.SelectedIndex].Value.ToString());


            //Retrieve the Moviename from the GridView
            txtmoviename.Text = ((Label)gvs.SelectedRow.FindControl("lblMovieName")).Text;


            SqlConnection con = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            //create the movieid parameter
            cmd.Parameters.AddWithValue("@mid", txtMovieId.Text);
            //assign the parameter to the sql statement

            cmd.CommandText = "SELECT * FROM tblMovies where movie_id = @mid";
            SqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {//retrieving FIELD values and assign the form controls
                ddlcat.SelectedIndex = Convert.ToInt32(dr["category_id"]);
                txtdirector.Text = dr["Director"].ToString();
                txtdesc.Text = dr["description"].ToString();
                txtbox.Text = dr["boxofficetotals"].ToString();
                chkstatus.Checked = (Boolean)dr["status"];
                Image1.ImageUrl = "~/images/" + dr["poster"].ToString();
                Image2.ImageUrl = "~/images/" +
                dr["schedule"].ToString().Substring(12);
            }
            con.Close();
            btnAddmovies.Visible = false;
            btnupdate.Visible = true;
            btndelete.Visible = true;
            btncancel.Visible = true;
        }

        protected void btnAddmovies_Click(object sender, EventArgs e)
        {
            String filen = "avatar.jpg";
            String fileshe = "avatar2.jpg";
            //check if the fileupload contains a file before uploading
            if (fuposter.HasFile)
            {
                filen = Path.GetFileName(fuposter.PostedFile.FileName);
                fuposter.PostedFile.SaveAs(Server.MapPath("~/images/") + filen);
            }
            //check if the fileupload contains a file before uploading
            if (fuschedule.HasFile)
            {
                fileshe = Path.GetFileName(fuschedule.PostedFile.FileName);
                fuschedule.PostedFile.SaveAs(Server.MapPath("~/images/") +
               fileshe);
            }
            //set the IsAdded flag to false
            Boolean IsAdded = false;
            SqlConnection con = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            //add INSERT statement to create new movie
            cmd.CommandText = "insert into tblMovies(category_id, moviename, description, director, boxofficetotals, poster, schedule, status, sa_id) values(@cid, @mname, @desc, @direc, @box, @poster, @schedule, @status, @admin) ";
            //create Parameterized query to prevent sql injection by
            cmd.Parameters.AddWithValue("@cid", ddlcat.SelectedValue);
            cmd.Parameters.AddWithValue("@mname", txtmoviename.Text.Trim());
            cmd.Parameters.AddWithValue("@desc", txtdesc.Text.Trim());
            cmd.Parameters.AddWithValue("@direc", txtdirector.Text.Trim());
            cmd.Parameters.AddWithValue("@box", txtbox.Text.Trim());
            cmd.Parameters.AddWithValue("@poster", filen);
            cmd.Parameters.AddWithValue("@schedule", "../../images/" + fileshe);
            cmd.Parameters.AddWithValue("@status", chkstatus.Checked);
            cmd.Parameters.AddWithValue("@admin", 1);
            cmd.Connection = con;
            con.Open();
            //use Command method to execute INSERT statement and return

            //Boolean true if number of records inserted is greater than zero
            IsAdded = cmd.ExecuteNonQuery() > 0;
            con.Close();
            if (IsAdded)
            {
                lblMsg.Text = txtmoviename.Text + " movie added successfully!";
                lblMsg.ForeColor = System.Drawing.Color.Green;
                //Refresh the GridView by calling the BindMovieData()

            }
            else
            {
                lblMsg.Text = "Error while adding movie " + txtmoviename.Text;
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            ResetAll();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            //check whether the moviename textbox is empty
            if (string.IsNullOrWhiteSpace(txtmoviename.Text))
            {
                lblMsg.Text = "Please select record to update";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }
            Boolean IsUpdated = false;
            //get the movieid from the textbox
            int movieid = Convert.ToInt32(txtMovieId.Text);
            SqlConnection con = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            //Add UPDATE statement to update the movie
            cmd.CommandText = "update tblMovies set moviename= @mname, description=@desc, director=@direc, boxofficetotals=@box, poster=@poster, schedule=@schedule, status=@status where movie_id = @mid ";
            //Create the parameterized queries
            cmd.Parameters.AddWithValue("@mid", movieid);
            cmd.Parameters.AddWithValue("@mname", txtmoviename.Text.Trim());
            cmd.Parameters.AddWithValue("@desc", txtdesc.Text.Trim());
            cmd.Parameters.AddWithValue("@direc", txtdirector.Text.Trim());
            cmd.Parameters.AddWithValue("@box", txtbox.Text.Trim());
            String filen = Image1.ImageUrl.Substring(8);
            String fileshe = Image2.ImageUrl.Substring(8);
            if (fuposter.HasFile)
            {
                filen = Path.GetFileName(fuposter.PostedFile.FileName);
                fuposter.PostedFile.SaveAs(Server.MapPath("~/images/") + filen);
            }
            if (fuschedule.HasFile)
            {
                fileshe = Path.GetFileName(fuschedule.PostedFile.FileName);
                fuschedule.PostedFile.SaveAs(Server.MapPath("~/images/") +
               fileshe);
            }
            cmd.Parameters.AddWithValue("@poster", filen);
            cmd.Parameters.AddWithValue("@schedule", "../../images/" + fileshe);
            cmd.Parameters.AddWithValue("@status", chkstatus.Checked);
            cmd.Connection = con;
            con.Open();
            //use Command method to execute UPDATE statement and return
            //boolean if number of records UPDATED is greater than zero
            IsUpdated = cmd.ExecuteNonQuery() > 0;
            con.Close();
            if (IsUpdated)
            {
                lblMsg.Text = txtmoviename.Text + " movie updated successfully!";
                lblMsg.ForeColor = System.Drawing.Color.Green;
                //Refresh the GridView by calling the BindMovieData()
            }
            else
            {
                lblMsg.Text = "Error while updating movie " + txtmoviename.Text;
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            ResetAll();

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            //check whether the txtmoviename textbox is empty
            if (string.IsNullOrWhiteSpace(txtmoviename.Text))
            {
                lblMsg.Text = "Please select record to delete";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }
            Boolean IsDeleted = false;
            //get the movieid from the textbox
            int movieid = Convert.ToInt32(txtMovieId.Text);
            SqlConnection con = new SqlConnection(_conString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            //Add DELETE statement to delete the selected movie
            cmd.CommandText = "delete from tblmovies where movie_id = @mid";
            //Create a parametererized query
            cmd.Parameters.AddWithValue("@mid", movieid);
            cmd.Connection = con;
            con.Open();
            //use Command method to execute DELETE statement and return
            //Boolean True if number of records DELETED is greater than zero
            IsDeleted = cmd.ExecuteNonQuery() > 0;
            con.Close();
            if (IsDeleted)
            {
                lblMsg.Text = txtmoviename.Text + " movie deleted successfully!";
                lblMsg.ForeColor = System.Drawing.Color.Green;
                //Refresh the GridView by calling the BindMovieData()
            }
            else
            {
                lblMsg.Text = "Error while deleting movie " + txtmoviename.Text;
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            ResetAll();
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            ResetAll();
        }
        private void ResetAll()
        {
            btnAddmovies.Visible = true;
            btncancel.Visible = false;
            btndelete.Visible = false;
            ddlcat.SelectedIndex = 0;
            txtmoviename.Text = "";
            txtdirector.Text = "";
            txtdesc.Text = "";
            txtbox.Text = "";
            chkstatus.Checked = false;
            Image1.ImageUrl = "";
            Image2.ImageUrl = "";
        }
    }
}