using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.IO;
using System.Security.Cryptography;
using System.Net.Mail;
using System.Net.Configuration;
using System.Configuration;
using System.Net;
using static System.Net.WebRequestMethods;
using Antlr.Runtime.Tree;
using System.Threading.Tasks;

namespace moviestore2110_22876
{
    public partial class guestmasterpage : System.Web.UI.MasterPage
    {
        private string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Request.Cookies["adminun"] != null &&
                Request.Cookies["adminpass"] != null)
                {
                    subadminlogin.Username = Request.Cookies["adminun"].Value;
                    subadminlogin.Password = Request.Cookies["adminpass"].Value;
                }
            }

            //Disable/Enable some menu items
            if (Session["adminun"] != null)
            {
                hyregister.Visible = false;
                lgregis.CssClass = "nav navbar-nav navbar-right";
                lbllgged.CssClass = "btn btn-outline-success text-white";
                lbllgged.Text = "Welcome " + Session["adminuname"];
                btnlgout.Visible = true;
                pnlmanage.Visible = true;
                pnlmanagemov.Visible = true;
                pnlprofile.Style.Add("visibility", "hidden");
                Page.Controls.Remove(pnlprofile);
                pnllog.Style.Add("visibility", "hidden");
                Page.Controls.Remove(pnllog);
            }
            //verify if session username is not null
            if (Session["userun"] != null)
            {
                pnllog.Style.Add("visibility", "hidden");
                Page.Controls.Remove(pnllog);
                lgregis.CssClass = "nav navbar-nav navbar-right";
                lbllgged.CssClass = "btn btn-outline-success text-white";
                //add the session name 
                lbllgged.Text = "Welcome " + Session["userun"];
                btnlgout.Visible = true;
                pnlprofile.Visible = true;
                //Retrieve the User Id Session
                //int user_id = Convert.ToInt32( );

                //hyuser.Attributes["href"]=ResolveUrl("~/tutorials/week5/updateprofile?id="
                // + user_id + "");

            }
        }

        protected void btnlgout_Click(object sender, EventArgs e)
        {
            lgout();
        }

        void lgout()
        {
            if (Session["userun"] != null || Session["adminuname"] != null)
            {
                //Remove all session
                Session.RemoveAll();
                //Destroy all Session objects
                Session.Abandon();
                //Redirect to homepage or login page
                Response.Redirect("~/home.aspx");
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //get the value of username and password fields and state of checkbox from
            //admin login form
            string username = subadminlogin.Username;
            string password = subadminlogin.Password;
            bool chk =subadminlogin.Chk ;

            SqlConnection con = new SqlConnection(_conString);
            // Create Command
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            //searching for a record containing matching username & password with
            //an active status
            cmd.CommandText = "select * from tblsubadmin where sa_username=@un and sa_password=@pass and sa_status=@status";
            //create three parameterized queries for the above select statement
            cmd.Parameters.AddWithValue("@un", username);
            cmd.Parameters.AddWithValue("@pass", password);
            cmd.Parameters.AddWithValue("@status", 1);
            //use above variables
            //Create DataReader
            SqlDataReader dr;
            con.Open();
            dr = cmd.ExecuteReader();
            // check if the DataReader contains a record
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    //create a memory cookie to store adminusername and pwd\
                    Response.Cookies["adminun"].Value = username;
                    Response.Cookies["adminpass"].Value = password;


                    if (chk)
                    {
                        //if checkbox is checked, make cookies persistent
                        Response.Cookies["adminun"].Expires = DateTime.Now.AddDays(100);
                        Response.Cookies["adminpass"].Expires = DateTime.Now.AddDays(100);
                    }
                    else
                    {
                        //delete the cookies if checkbox is unchecked
                        //delete content of password field
                        Response.Cookies["adminun"].Expires = DateTime.Now.AddDays(-100);
                        Response.Cookies["adminpass"].Expires = DateTime.Now.AddDays(-100);
                    }
                    //create and save adminuname in a session variable
                    Session["adminun"] = username;
                    //create and save adminid in a session variable
                    Session["adminid"] = dr["sa_id"];
                    //redirect to the dashboard page
                    Response.Redirect("dashboard.aspx");
                }
                con.Close();
            }
            else
            {
                //delete content of password field
                lblmsg.Style.Add("margin-left", "10%");
                lblmsg.ForeColor = System.Drawing.Color.Red;
                username = "";
                password = "";
                lblmsg.Text = "You are not registered or your account has been suspended!";
            }

        }
    }
}