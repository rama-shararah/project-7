using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using project7.Models;
using Microsoft.AspNet.Identity;

namespace project7
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user password
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

                // This doen't count login failures towards account lockout
                // To enable password failures to trigger lockout, change to shouldLockout: true
                var result = signinManager.PasswordSignIn(Email.Text, Password.Text, false, shouldLockout: false);

                switch (result)
                {
                    case SignInStatus.Success:
                        
                        string email= Email.Text;
                        var db = new VisionCinemaEntities1();
                        var userId = db.AspNetUsers
                            .Where(m => m.Email ==email)
                            .Select(m => m.Id)
                            .SingleOrDefault();
                        Session["userid"] = userId.ToString();
                        if (manager.IsInRole(userId, "Admin")) { Response.Redirect("Admin/Movies.aspx"); }
                        else {
                            if (Session["backurl"] != null)
                            {
                                Response.Redirect(Session["backurl"].ToString());
                            }
                          Response.Redirect("Homepage.aspx");
                        }
                        break;
                    case SignInStatus.LockedOut:
                        Response.Redirect("/Account/Lockout");
                        break;
                    case SignInStatus.RequiresVerification:
                        Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
                                                        Request.QueryString["ReturnUrl"]
                                                        ),
                                          true);
                        break;
                    case SignInStatus.Failure:
                    default:
                        FailureText.Text = "Invalid login attempt";
                        ErrorMessage.Visible = true;
                        break;
                }
            }
        }
    }
}