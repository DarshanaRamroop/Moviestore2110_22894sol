using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;


namespace Moviestore2110_22894.tutorials.week6
{
    public partial class ex2 : System.Web.UI.Page

    {
        private string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            getCategorylist();
        }

        private void getCategorylist()
        {
            // Create Connection
            SqlConnection con = new SqlConnection(_conString);
            // Create Command
            SqlCommand scmd = new SqlCommand();
            scmd.Connection = con;
            scmd.CommandType = CommandType.Text;
            scmd.CommandText = "SELECT * FROM tblCategory";
            con.Open();
            rdCategories.DataSource = scmd.ExecuteReader();
            rdCategories.DataTextField = "Category_Name";
            rdCategories.DataValueField = "Category_Id";
            rdCategories.DataBind();



            con.Close();
        }
    }
}
