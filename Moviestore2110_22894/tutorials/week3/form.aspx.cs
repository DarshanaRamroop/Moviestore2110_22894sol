using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week3
{
    public partial class form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                rvDOB.MinimumValue = DateTime.Now.AddYears(-45).ToShortDateString();
                rvDOB.MaximumValue = DateTime.Now.AddYears(-18).ToShortDateString();
                rvDOB.Type = ValidationDataType.Date;
                if (!Page.IsPostBack)
                {
                    //Populate DropDown Zipcode
                    ListItem lidef = new ListItem("Choose Zip Code", "-1");
                    ListItem li1 = new ListItem("11111", "1");
                    ListItem li2 = new ListItem("22222", "2");
                    ListItem li3 = new ListItem("33333", "3");
                    ddlZipCode.Items.Add(lidef);
                    ddlZipCode.Items.Add(li1);
                    ddlZipCode.Items.Add(li2);
                    ddlZipCode.Items.Add(li3);
                    //Code to run JUST on initial page visit 
                    txtFname.Focus();
                    //Xml link to populate Dropdown Countries by using Data from File
                    ListItem lidefCountry = new ListItem("Choose Country", "-1");
                    string physicalPath = Server.MapPath("~/App_Data/countries.xml");
                    DataSet dstCountries = new DataSet();
                    dstCountries.ReadXml(physicalPath);
                    ddlCountries.DataSource = dstCountries;
                    ddlCountries.DataTextField = "countryName";
                    ddlCountries.DataValueField = "countryId";
                    ddlCountries.DataBind();
                    ddlCountries.Items.Insert(0, lidefCountry);
                    

                }



            }

            protected void btnAddProd_Click(object sender, EventArgs e)
            {
                if (Page.IsValid)
                {
                    Response.Redirect("~/home");
                }
            }

            protected void txtWrkExp_TextChanged(object sender, EventArgs e)
            {
                spWrkExp.InnerHtml = txtWrkExp.Text.Length.ToString();
            }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length < 7 && args.Value.Length > 12)

                args.IsValid = false;

            else
                args.IsValid = true;
        }

        protected void chk1_CheckedChanged(object sender, EventArgs e)
            {
                if (!chk1.Checked)
                {
                    imgEmail.Visible = false;
                }
                imgEmail.ImageUrl = "~/images/email.png";
            }

            protected void chk2_CheckedChanged(object sender, EventArgs e)
            {
                if (!chk2.Checked)
                {
                    imgSocial.Visible = false;
                }

                imgSocial.ImageUrl = "~/images/social.png";
            }

            protected void ddlCountries_SelectedIndexChanged(object sender, EventArgs e)
            {
                lblCountry.Text = "You have chosen " + ddlCountries.SelectedItem.Text;
            string x = ddlCountries.SelectedItem.Text;
            if(x.Equals("Mauritius", StringComparison.OrdinalIgnoreCase))
            {
                ddlCountries.Visible= false;
            }
            else
            {
                ddlCountries.Visible= true;
            }
            }

            protected void lnkExit_Click(object sender, EventArgs e)
            {
                Server.Transfer("~/home.aspx");
            }

            protected void lnkReset_Click(object sender, EventArgs e)
            {
                txtFname.Text = "";
                ddlZipCode.SelectedIndex = 0;

            }
        }
    }