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

namespace Moviestore2110_22894.tutorials.week5
{
    public partial class regis : System.Web.UI.Page
    {
        private string _conString = WebConfigurationManager.ConnectionStrings["MoviesCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (!Page.IsPostBack)
                {
                    // invoke the getCountry method
                    getCountry();
                    // Insert a default item in Dropdown
                    ListItem li = new ListItem("Choose a a country", "-1");
                    ddlCountry.Items.Insert(0, li);
                }
            }
        }
        public void getCountry()
        {
            // Create Connection
            SqlConnection con = new SqlConnection(_conString);
            // Create Command
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblCountry";
            cmd.Connection = con;
            //Create DataAdapter
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //Create a Datatable or a DataSet
            DataTable dtCountry = new DataTable();
            //Fill the Dataset and ensure the DB Connection is closed
            using (da)
            {
                da.Fill(dtCountry);
            }
            //To load country names in dropdown
            ddlCountry.DataSource = dtCountry;
            //assign a field name and id to ddl
            ddlCountry.DataTextField = "Country_Name";
            ddlCountry.DataValueField = "Country_Id";
            ddlCountry.DataBind();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFname.Text = "";
            txtLname.Text = "";
            txtDob.Text = "";
            ddlCountry.SelectedIndex = 0;
            txtStreet.Text = "";
            txtEmail.Text = "";
            txtUsername.Text = "";
            txtPassword.Text = "";
            txtCpassword.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string filen = "avatar.jpg";
            //Check whether the fileupload contains a file
            if (FileUpload1.HasFile)
            {
                if (CheckFileType(FileUpload1.FileName))
                {
                    filen = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") +
                    filen);
                }
            }
            // Create Connection
            SqlConnection con = new SqlConnection(_conString);
            // Create Command
            SqlCommand scmd = new SqlCommand();
            scmd.CommandType = CommandType.Text;
            scmd.Connection = con;
            //create a parameterized query for the username
            scmd.Parameters.AddWithValue("@un", txtUsername.Text.Trim());
            //search for username from tbluser
            scmd.CommandText = "select * from tbluser where username = @un";
            //Create DataReader
            SqlDataReader dr;
            con.Open();
            dr = scmd.ExecuteReader();
            //Check if username already exists in the DB
            if (dr.HasRows)
            {
                lblmsg.Text = "Username Already Exist, Please Choose Another";
                lblmsg.ForeColor = System.Drawing.Color.Red;
                txtUsername.Focus();
            }
            else
            {
                //Ensure the DataReader is closed
                dr.Close();

                string strDate = txtDob.Text;
                DateTime dt = Convert.ToDateTime(strDate);
                // Create another Command object for the insert statement
                SqlCommand icmd = new SqlCommand();
                icmd.Connection = con;
                icmd.CommandText = "INSERT INTO tbluser(firstname, lastname, country_id, street, DOB, imageurl, email, username, pwd, status) VALUES(@firstname, @lastname, @country, @street, @dob, @imgname, @email, @username, @pwd, @status)";
                icmd.Parameters.AddWithValue("@firstname", txtFname.Text);
                icmd.Parameters.AddWithValue("@lastname", txtLname.Text);
                //retrieve the country dropdown list value
                icmd.Parameters.AddWithValue("@country", ddlCountry.SelectedValue);
                icmd.Parameters.AddWithValue("@street", txtStreet.Text);
                icmd.Parameters.AddWithValue("@dob", dt);
                icmd.Parameters.AddWithValue("@imgname", filen);
                icmd.Parameters.AddWithValue("@email", txtEmail.Text);
                icmd.Parameters.AddWithValue("@username", txtUsername.Text);
                //add a method to encrypt your password
                icmd.Parameters.AddWithValue("@pwd", Encrypt(txtPassword.Text));
                //set the status to active or inactive
                icmd.Parameters.AddWithValue("@status", 1);
                icmd.CommandType = CommandType.Text;
                icmd.ExecuteNonQuery();
                //call the sendemail method
                sendemail();
                con.Close();
                Response.Redirect("login.aspx");
            }
        }
        //check file format before uploading
        bool CheckFileType(string fileName)
        {
            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".gif":
                    return true;
                case ".png":
                    return true;
                case ".jpg":
                    return true;
                case ".jpeg":
                    return true;
                default:
                    return false;
            }
        }
        public string Encrypt(string clearText)
        {
            // defining encrytion key
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new
               byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    // encoding using key
                    using (CryptoStream cs = new CryptoStream(ms,
                   encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }
        //Sending an email to notify and welcome user
        private void sendemail()
        {
            string filen = "avatar.jpg";
            //Check whether the fileupload contains a file
            if (FileUpload1.HasFile)
            {
                if (CheckFileType(FileUpload1.FileName))
                {
                    filen = Path.GetFileName(FileUpload1.PostedFile.FileName);
                }
            }
            SmtpSection smtpSection =
           (SmtpSection)ConfigurationManager.GetSection("system.net/mailSettings/smtp");
            using (MailMessage m = new MailMessage(smtpSection.From, txtEmail.Text.Trim()))
            {
                SmtpClient sc = new SmtpClient();
                try
                {
                    m.Subject = "This is a Test Mail";
                    m.IsBodyHtml = true;
                    StringBuilder msgBody = new StringBuilder();
                    msgBody.Append("Dear " + txtUsername.Text + ", your registration is successful, thank you for signing up on xyz.");
                    //msgBody.Append(txtbody.Text.Trim());
                    m.Attachments.Add(new Attachment(Server.MapPath("~/Images/") + filen));
                    msgBody.Append("<a href='https://" + HttpContext.Current.Request.Url.Authority + "/tutorials/week5/login'>Click here to login to...</ a > ");
                    m.Body = msgBody.ToString();
                    sc.Host = smtpSection.Network.Host;
                    sc.EnableSsl = smtpSection.Network.EnableSsl;
                    NetworkCredential networkCred = new
                    NetworkCredential(smtpSection.Network.UserName, smtpSection.Network.Password);
                    sc.UseDefaultCredentials = smtpSection.Network.DefaultCredentials;
                    sc.Credentials = networkCred;
                    sc.Port = smtpSection.Network.Port;
                    sc.Send(m);
                    Response.Write("Email Sent successfully");
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }
    }
}