using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["userid"] as string)) 
            {
                ticket.Visible= true;
                logout.Visible = true;
                login.Visible = false;
            }


        }
        protected void Logout(object sender, EventArgs e) 
        {
            Session.Abandon();
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            Response.Redirect("Homepage.aspx");
        }

    }
}