using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.NetworkInformation;
using System.Web.Configuration;
using System.IO;
using System.Xml.Linq;

namespace Moviestore2110_22894.tutorials.week11
{
    public partial class uploaddocument : System.Web.UI.Page
    {
        private string _conString =
WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            //check if file upload contains a file
            if (upDoc.HasFile)
            {
                //add the filename as an argument
                if (CheckFileType(upDoc.FileName))
                {
                    //Add a folder bearing the Username in the path below
                    string customfolder = "~/files/" + Session["userun"] + "/doc/";
                    string folderPath = Server.MapPath(customfolder);

                    SqlConnection con = new SqlConnection(_conString);
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    //search database to see if the given filename already exist
                    cmd.CommandText = "SELECT file_name FROM tbldocs WHERE file_name = @fn";
                    cmd.Parameters.AddWithValue("@fn", txtfilename.Text);
                    SqlDataReader reader;
                    con.Open();
                    reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        lblmsg.Text = "Choose Another Filename";
                        lblmsg.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        reader.Close();
                        //create above directory by using
                        //Directory.CreateDirectory() method
                        Directory.CreateDirectory(folderPath);
                        //Upload file in filesystem by concatenating the
                        //folderpath with the filename
                        upDoc.SaveAs(folderPath + upDoc.FileName);
                        SqlCommand cmd1 = new SqlCommand();
                        cmd1.Connection = con;
                        //To insert the User_Id Foreign key to know which user
                        //uploaded the file
                        cmd1.CommandType = CommandType.Text;
                        cmd1.CommandText = "INSERT INTO tbldocs(file_name, file_path,user_id ) VALUES(@fname, @fpath, @userid)";
                        cmd1.Parameters.AddWithValue("@fname", txtfilename.Text);
                        cmd1.Parameters.AddWithValue("@fpath", customfolder +
                        upDoc.FileName);
                        //Create a parameter for the user_id using the
                        //Session variable created in the login form
                        cmd1.Parameters.AddWithValue("@userid", Session["userid"]);
                        cmd1.ExecuteNonQuery();
                        con.Close();
                        lblmsg.Text = "File has been successfully uploaded!";
                    }

                }
                bool CheckFileType(string fileName)
                {
                    string ext = Path.GetExtension(fileName);
                    switch (ext.ToLower())
                    {
                        case ".doc":
                            return true;
                        case ".docx":
                            return true;
                        case ".pdf":
                            return true;
                        default:
                            return false;
                    }
                }
            }
        }
    }
}