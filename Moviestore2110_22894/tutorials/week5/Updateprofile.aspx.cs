using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace Moviestore2110_22894.tutorials.week5
{
    public partial class Updateprofile : System.Web.UI.Page
    {
        private string _conString = WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //checks whether the session variable has been created
            //from the login page and if null redirect to login page
            //else grant access to the page and display username
            if (string.IsNullOrEmpty(Session["userun"].ToString()))
            {
                Response.Redirect("~/tutorials/week5/login.aspx");
            }
            else
            {
                if (!Page.IsPostBack)
                {
                    // Create Connection
                    SqlConnection con = new SqlConnection(_conString);
                    // Create Command
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    //To replace the txtusername.Text by the session variable
                    cmd.CommandText = "SELECT * FROM tbluser WHERE username= '" + Session["userun"] + "'";
                    con.Open();
                    //Create DataReader
                    SqlDataReader reader;

                    reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        //retrieve the values using the reader[“fieldname”] and
                        //store in corresponding Textboxes
                        txtFname.Text = reader["firstname"].ToString();
                        txtLname.Text = reader["lastname"].ToString();
                        txtEmail.Text = reader["email"].ToString();
                    }
                    reader.Close();
                    //create a dataadapter
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    //create a datatable
                    DataTable dtpic = new DataTable();

                    //populate the datatable
                    using (da)
                    {
                        da.Fill(dtpic);
                    }
                    //bind the datatable to the repeater control
                    rptimg.DataSource = dtpic;
                    rptimg.DataBind();
                    con.Close();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string updateSQL;
            updateSQL = "UPDATE tblUser SET firstname=@fname, lastname = @lname, email = @email WHERE username = '" + Session["userun"] + "'";
            SqlConnection con = new SqlConnection(_conString);
            SqlCommand ucmd = new SqlCommand();
            ucmd.CommandType = CommandType.Text;
            ucmd.CommandText = updateSQL;
            ucmd.Connection = con;
            //Create a parameter for the Session username
            ucmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
            // Add the 3 parameters for firstname, lastname and email
            // ucmd.Parameters.AddWithValue( );
            ucmd.Parameters.AddWithValue("@lname", txtLname.Text.Trim());
            ucmd.Parameters.AddWithValue("@fname", txtFname.Text.Trim());
            int updated = 0;
            //Add a “try – catch” block to handle any exceptions thrown during
            //program execution and displays the error Message if any
            try
            {
                con.Open();
                updated = ucmd.ExecuteNonQuery();
                lblmsg.Text = updated.ToString() + " record updated.";
            }
            catch (Exception ex)
            {
                lblmsg.Text = "Error updating. " + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}