using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using project7.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CreateUser_Click(object sender, EventArgs e)
        {    
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text,PhoneNumber=Phone.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            
            if (result.Succeeded)
            {
                string email = Email.Text;
                var db = new VisionCinemaEntities1();
                var userId = db.AspNetUsers
                    .Where(m => m.Email == email)
                    .Select(m => m.Id)
                    .SingleOrDefault();
                manager.AddToRole(userId,"User");
                var newUser = db.AspNetUsers.Find(userId);
                newUser.First_name = Name.Text;
                newUser.user_image = "img/" + FileUpload1.FileName;
                string folderpath = Server.MapPath("~/img/");
                FileUpload1.SaveAs(folderpath + FileUpload1.FileName);
                db.SaveChanges();
                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                //signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                Response.Redirect("LoginPage.aspx");
                //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}