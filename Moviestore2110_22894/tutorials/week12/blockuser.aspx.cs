using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace Moviestore2110_22894.tutorials
{
    public partial class blockuser : System.Web.UI.Page
    {

        private static string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;


        SqlConnection con = new SqlConnection(_conString);
        protected void Page_Load(object sender, EventArgs e)
        {
            getActiveUsers();
            getinActiveUsers();
        }

        void getActiveUsers()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select user_id, firstname, lastname, username,imageurl from tbluser ";
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvs.DataSource = dt;
            gvs.DataBind();
        }

        void getinActiveUsers()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select user_id, firstname, lastname, username,imageurl from tbluser where status = 0";
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvs.DataSource = dt;
            gvs.DataBind();
        }

        protected void lnkblock_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32((sender as LinkButton).CommandArgument);

            //open Connection
            con.Open();
            //Create Command
            SqlCommand ucmd = new SqlCommand();
            ucmd.CommandType = CommandType.Text;
            ucmd.CommandText = "update tblUser set status='0'";
            ucmd.Connection = con;
            ucmd.ExecuteNonQuery();
            con.Close();
            getActiveUsers();
        }

        protected void lnkunblock_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32((sender as LinkButton).CommandArgument);

            //open Connection
            con.Open();
            //Create Command
            SqlCommand ucmd = new SqlCommand();
            ucmd.CommandType = CommandType.Text;
            ucmd.CommandText = "update tblUser set status='1'";
            ucmd.Connection = con;
            ucmd.ExecuteNonQuery();
            con.Close();
            getActiveUsers();
        }

        protected void gvs_PreRender(object sender, EventArgs e)
        {
            if (gvs.Rows.Count > 0)
            {
                //This replaces <td> with <th> and adds the scope attribute
                gvs.UseAccessibleHeader = true;
                //This will add the <thead> and <tbody> elements
                gvs.HeaderRow.TableSection =
                TableRowSection.TableHeader;
            }
        }
    }
}