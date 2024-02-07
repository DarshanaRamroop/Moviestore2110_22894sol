using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Moviestore2110_22894.tutorials.week13
{
    public partial class reviews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void srcReview_Inserting(object sender, ObjectDataSourceMethodEventArgs e)
        {
            string ip = "";
            string strHostName = "";
            strHostName = System.Net.Dns.GetHostName();
            IPHostEntry ipEntry = System.Net.Dns.GetHostEntry(strHostName);
            IPAddress[] addr = ipEntry.AddressList;
            ip = addr[3].ToString();
            int uid = Convert.ToInt32(Session["userid"]);
            e.InputParameters.Add("IPAddress", ip);
            e.InputParameters.Add("User_Id", uid);
        }
    }
}