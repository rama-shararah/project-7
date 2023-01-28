using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using project7.Models;
namespace project7
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        VisionCinemaEntities1 cinema = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime currentDate1 = DateTime.Now.Date;
            var q = (from pd in cinema.Movies
                     join od in cinema.Shows on pd.Movie_Id equals od.Movie_id
                     where od.Show_Date >= currentDate1
                     select new
                     {
                         od.Show_id,
                         od.Show_Start_Date,
                         od.Show_End_Date,
                         od.Show_Date,
                         pd.Movie_Image,
                         pd.Title,
                         pd.Movie_Description

                     }).ToList();
            int counter = 0;
            foreach (var item in q)
            {

                if (counter <= 5)
                {
                    con.InnerHtml += $"<div class=\"col-lg-4 col-md-6 wow fadeInUp bigg\"  data-wow-delay=\"0.1s\" id=\"bigg\">\r\n                    <div class=\"service-item rounded d-flex h-100\">\r\n                        <div class=\"service-img rounded small\">\r\n                            <img class=\"img-fluid \" src=\"{item.Movie_Image}\" alt=\"\">\r\n\r\n                        </div>\r\n                        <div class=\"service-text rounded p-5\">\r\n                            <div class=\"btn-square rounded-circle mx-auto mb-3 small\" id=\"small\">\r\n                                \r\n                            </div>\r\n                            <div class=\"desc\">\r\n                            <h4 class=\"mb-3\">{item.Title}</h4>\r\n                            <p class=\"mb-4 \" style=\"text-align:center;align-items:center\">{item.Movie_Description}</p>\r\n                                </div>\r\n                            <a class=\"btn btn-sm\" href=\"single.aspx?id={item.Show_id}\"><i class=\"fa fa-plus text-primary me-2\"></i>Read More</a>\r\n                        </div>\r\n                    </div>\r\n                </div>";
                }
                else
                {
                    return;
                }
                counter++;
            }



            DateTime currentDate = DateTime.Now.Date;
            DateTime twoWeeksLater = currentDate.AddDays(14);
            //Label1.Text = currentDate.ToString();


            var comingSoon = cinema.Movies
             .Select(c => new { c.Movie_Id, c.Title, c.Movie_Image, c.Movie_Description, c.Release_Date, c.Trailer }).Where(c => c.Release_Date >= currentDate).ToList();


            foreach (var item in comingSoon)
            {

                coming.InnerHtml += $"<div style='width:31%;margin:10px' class='col-lg-4 col-md-6 portfolio-item first wow fadeInUp' data-wow-delay='0.1s'>" +
                        "<div class='portfolio-inner rounded'>" +
                            $"<img class='img-fluid' src='{item.Movie_Image}' alt=''>" +
                            "<div class='portfolio-text'>" +
                                $"<h4 class='text-white mb-4'>{item.Title}</h4>" +
                "<div class='d-flex'>" +
                                  $"<a href='https://localhost:44339/trailer.aspx?id={item.Movie_Id}' class='btn btn-lg-square rounded-circle mx-2'  onclick='openModal({item.Movie_Id}); return false;'  >" +
                                         "<i class=\"fa-sharp fa-solid fa-play\"></i></a>" + " <div class=\"arrow-info\">   <div class=\"arrow\" id=\"arrow\"></div>\r\n<div class=\"info\" id=\"info\">watch trailer</div> </div> " +
                                    $"<a class='btn btn-lg-square rounded-circle mx-2' href='{item.Trailer}'><i class='fa fa-link'></i></a>" +
                                "</div>" +
                            "</div>" +
                        "</div>" +
                    "</div>" + $" <div id=\"myModal\" class=\"modal\">\r\n    <div class=\"modal-content\">\r\n         <span class=\"close\" onclick=\"closeModal()\">&times;</span>\r\n           <div class=\"close-icon\" onclick=\"closeModal()\">&times;</div>\r\n        <iframe id='myIframe'  width=\"100%\" height=\"1200\" src=\'{item.Trailer}' title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen style='width: 100vw;\r\n  height: 100vh;\r\n  position: fixed;\r\n  top: 0;\r\n  left: 0;\r\n  z-index: 9999;'></iframe>\r\n    </div>\r\n</div>";


            }

            var feedbackusers = (from c in cinema.Feedbacks
                                 join ct in cinema.AspNetUsers on c.userId equals ct.Id

                                 select new
                                 {
                                     c.Comment,
                                     c.approve,
                                     ct.UserName,
                                     ct.user_image,


                                 }).Where(c => c.approve == true);
            //Ticket tk = new Ticket();
            //tk.Show.Movy.Release_Date = currentDate;
            //tk.AspNetUser.

            foreach (var item in feedbackusers)
            {
                string[] parts = item.UserName.Split('@');
                string userName = parts[0];

                feedbackuser.InnerHtml += $"     <div class=\"testimonial-item\">\r\n                            <img class=\"img-fluid rounded mb-3\" src=\"{item.user_image}\" alt=\"\">\r\n                            <p class=\"fs-5\" style=\"color:white\">{item.Comment}</p>\r\n                            <h4 style=\"color:darkred\">{userName}</h4>\r\n                          \r\n                        </div>";
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {




            suggestion1 sug = new suggestion1();
            //suggestion1 sug=new suggestion1();
            if (message.Value == "" || gname.Value == "" || cname.Value == "" || cage.Value == "")
            {
                return;
            }
            else
            {



                sug.username = gname.Value;
                sug.moviename = gmail.Value;
                sug.movie_history = cname.Value;
                sug.movie_type = cage.Value;
                sug.siggestion = message.Value;


                cinema.suggestion1.Add(sug);

                cinema.SaveChanges();
            }
            if (message.Value == "" || gname.Value == "" || cname.Value == "" || cage.Value == "")
            {
                return;
            }
            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert",
               "swal('Good job!', 'thanks for your Suggestions ')", true);

            gname.Value = "";
            gmail.Value = "";
            cname.Value = "";
            cage.Value = "";
            message.Value = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Feedback feedbacks = new Feedback();

            if (TextBox1.Text == "")
            {
                return;
            }
            if (Session["userid"] != null) { 

              feedbacks.userId = Session["userid"].ToString();
              feedbacks.approve = false;
              feedbacks.Comment = TextBox1.Text;
              cinema.Feedbacks.Add(feedbacks);
              cinema.SaveChanges();

            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }

            TextBox1.Text = "";
            //   ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert",
            //"swal('Good job!', 'thanks for your Suggestions ')", true);


            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"pass(\"\" ,\"Please log in first\");", true);


        }
    }
}