using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelBrokersWeb
{
    public partial class AdminMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dangxuat_ServerClick(object sender, EventArgs e)
        {
            Session.Remove("login-admin");
            Response.Redirect("LoginForm.aspx");
        
        }
    }
}