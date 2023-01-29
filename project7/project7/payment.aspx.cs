using project7.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel.Design.Serialization;

namespace project7
{
    public partial class WebForm5 : System.Web.UI.Page
    {

        VisionCinemaEntities1 db = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {


            var id = Request.QueryString["id"];
            var id2 = Convert.ToInt32(id);

            var ses = Session["ticket"].ToString();
            int j = Convert.ToInt32(ses);


            var u = db.Shows.FirstOrDefault(d => d.Show_id == id2).Show_Date;
            DateTime date4 = Convert.ToDateTime(u);
            //string ses = "2";
            //int id2 = 1;
            //int j = 2;
            var pricee = j * 7;

            film.InnerHtml = db.Shows.FirstOrDefault(d => d.Show_id == id2).Movy.Title;
            tic.InnerHtml = ses;
            price.InnerHtml = pricee.ToString();
            datee.InnerHtml = date4.ToString("dd/MM/yyyy");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["payment"] = "paid";


            if (Request.Form["senderName"] != "" && Request.Form["senderEmail"] != "" && Request.Form["receiverName"] != "" && Request.Form["receiverEmail"] != "")
            {

                var id = Request.QueryString["id"];
                var id2 = Convert.ToInt32(id);
                //var id2 = 1;

                var name = db.Shows.FirstOrDefault(d => d.Show_id == id2).Movy.Title;

                string senderName = Request.Form["senderName"]; // Get the sender name from the input form
                string senderEmail = Request.Form["senderEmail"]; // Get the sender email from the input form
                string receiverName = Request.Form["receiverName"]; // Get the receiver name from the input form
                string receiverEmail = Request.Form["receiverEmail"]; // Get the receiver email from the input form
                string subject = "Gift Card";
                string body = "Dear " + receiverName + ",\n\n" + senderName + " has sent you a gift card Ticket to watch " + name + "Movie in MovieMaster Cinema.\n\n Please check your email for the gift card details.\n\nThank you.";

                using (MailMessage message = new MailMessage(senderEmail, receiverEmail))
                {
                    message.Subject = subject;
                    message.Body = body;
                    message.IsBodyHtml = false; // Set to true if the message body should be sent as HTML

                    using (SmtpClient client = new SmtpClient())
                    {
                        // Mail server or mail service settings
                        client.Host = "smtp.gmail.com"; // mail server or mail service address
                        client.Port = 587; // mail server or mail service port
                        client.EnableSsl = true; // enable SSL if required
                        client.Credentials = new NetworkCredential("lubnaajlouni97@gmail.com", "gbkqyqhyyvetsbzn"); // mail server or mail service username and password

                        client.Send(message);



                    }
                }
            }



            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"pass(\"\" ,\"Please log in first\");", true);



        }
    }
}