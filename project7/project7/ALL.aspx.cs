using project7.Models;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        VisionCinemaEntities1 db = new VisionCinemaEntities1();

        protected void moviesInDate(int plusDate) 
        {
            TimeSpan d = TimeSpan.Parse(plusDate.ToString());
            DateTime date = DateTime.Now.Add(d).Date;
            

            var q = (from pd in db.Movies
                     join od in db.Shows on pd.Movie_Id equals od.Movie_id
                     select new
                     {
                         od.Show_id,
                         od.Show_Start_Date,
                         od.Show_End_Date,
                         od.Show_Date,
                         pd.Movie_Image,
                         pd.Title,

                     }).ToList();

            foreach (var item in q)
            {
                if(item.Show_Date == date) {

                    containerr.InnerHtml += $"<div class=\"col-lg-4 col-md-6 wow fadeInUp bigg\" style=\"width:22%\" data-wow-delay=\"0.1s\" id=\"bigg\">\r\n                    <div class=\"service-item rounded d-flex h-100\">\r\n                        <div class=\"service-img rounded small\">\r\n                            <img class=\"img-fluid \" src=\"{item.Movie_Image}\" alt=\"\">\r\n\r\n                        </div>\r\n                        <div class=\"service-text rounded p-5\">\r\n                            <div class=\"btn-square rounded-circle mx-auto mb-3 small\" id=\"small\">\r\n                                \r\n                            </div>\r\n                            <div class=\"desc\">\r\n                            <h4 class=\"mb-3\">{item.Title}</h4>\r\n                            <p class=\"mb-4 \" style=\"text-align:center;align-items:center\">{item.Show_Start_Date}-{item.Show_End_Date}</p>\r\n                                </div>\r\n                            <a class=\"btn btn-sm\" href=\"single.aspx?id={item.Show_id}\"><i class=\"fa fa-plus text-primary me-2\"></i>Book Now</a>\r\n                        </div>\r\n                    </div>\r\n                </div>";
                }
            }


        }
        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime currentDate = DateTime.Now.Date;
            DateTime oneLater = currentDate.AddDays(1);
            DateTime twoLater = currentDate.AddDays(2);
            DateTime threeLater = currentDate.AddDays(3);
            DateTime fourLater = currentDate.AddDays(4);
            DateTime fiveLater = currentDate.AddDays(5);

            Button1.Text= currentDate.ToString("dd/MM/yyyy");
            Button2.Text= oneLater.ToString("dd/MM/yyyy");
            Button3.Text= twoLater.ToString("dd/MM/yyyy");
            Button4.Text= threeLater.ToString("dd/MM/yyyy");
            Button5.Text= fourLater.ToString("dd/MM/yyyy");
            Button6.Text= fiveLater.ToString("dd/MM/yyyy");

            Button1.BackColor = ColorTranslator.FromHtml("#fff");
            Button2.BackColor = ColorTranslator.FromHtml("#fff");
            Button3.BackColor = ColorTranslator.FromHtml("#fff");
            Button4.BackColor = ColorTranslator.FromHtml("#fff");
            Button5.BackColor = ColorTranslator.FromHtml("#fff");
            Button6.BackColor = ColorTranslator.FromHtml("#fff");
            Button7.BackColor = ColorTranslator.FromHtml("#fff");





            if (!IsPostBack) { 
            var q = (from pd in db.Movies
                     join od in db.Shows on pd.Movie_Id equals od.Movie_id
                     where od.Show_Date >= currentDate
                     select new
                     {
                         od.Show_id,
                         od.Show_Start_Date,
                         od.Show_End_Date,
                         od.Show_Date,
                         pd.Movie_Image,
                         pd.Title,

                     }).ToList();

              foreach (var item in q)
              {

                containerr.InnerHtml += $"<div class=\"col-lg-4 col-md-6 wow fadeInUp bigg\" style=\"width:22%\" data-wow-delay=\"0.1s\" id=\"bigg\">\r\n                    <div class=\"service-item rounded d-flex h-100\">\r\n                        <div class=\"service-img rounded small\">\r\n                            <img class=\"img-fluid \" src=\"{item.Movie_Image}\" alt=\"\">\r\n\r\n                        </div>\r\n                        <div class=\"service-text rounded p-5\">\r\n                            <div class=\"btn-square rounded-circle mx-auto mb-3 small\" id=\"small\">\r\n                                \r\n                            </div>\r\n                            <div class=\"desc\">\r\n                            <h4 class=\"mb-3\">{item.Title}</h4>\r\n                            <p class=\"mb-4 \" style=\"text-align:center;align-items:center\">{item.Show_Start_Date}-{item.Show_End_Date}</p>\r\n                                </div>\r\n                            <a class=\"btn btn-sm\" href=\"single.aspx?id={item.Show_id}\"><i class=\"fa fa-plus text-primary me-2\"></i>Book Now</a>\r\n                        </div>\r\n                    </div>\r\n                </div>";
              }
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            containerr.InnerHtml = "";
            moviesInDate(0);
            Button1.BackColor = ColorTranslator.FromHtml("#c5c5c5");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            containerr.InnerHtml = ""; 
            moviesInDate(1);
            Button2.BackColor = ColorTranslator.FromHtml("#c5c5c5");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            containerr.InnerHtml = "";
            moviesInDate(2);
            Button3.BackColor = ColorTranslator.FromHtml("#c5c5c5");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            containerr.InnerHtml = "";
            moviesInDate(3);
            Button4.BackColor = ColorTranslator.FromHtml("#c5c5c5");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            containerr.InnerHtml = "";
            moviesInDate(4);
            Button5.BackColor = ColorTranslator.FromHtml("#c5c5c5");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            containerr.InnerHtml = "";
            moviesInDate(5);
            Button6.BackColor = ColorTranslator.FromHtml("#c5c5c5");


        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Button7.BackColor = ColorTranslator.FromHtml("#c5c5c5");
            containerr.InnerHtml = "";
            DateTime currentDate = DateTime.Now.Date;

            var q = (from pd in db.Movies
                     join od in db.Shows on pd.Movie_Id equals od.Movie_id
                     where od.Show_Date >= currentDate
                     select new
                     {
                         od.Show_id,
                         od.Show_Start_Date,
                         od.Show_End_Date,
                         od.Show_Date,
                         pd.Movie_Image,
                         pd.Title,

                     }).ToList();

            foreach (var item in q)
            {

                containerr.InnerHtml += $"<div class=\"col-lg-4 col-md-6 wow fadeInUp bigg\" style=\"width:22%\" data-wow-delay=\"0.1s\" id=\"bigg\">\r\n                    <div class=\"service-item rounded d-flex h-100\">\r\n                        <div class=\"service-img rounded small\">\r\n                            <img class=\"img-fluid \" src=\"{item.Movie_Image}\" alt=\"\">\r\n\r\n                        </div>\r\n                        <div class=\"service-text rounded p-5\">\r\n                            <div class=\"btn-square rounded-circle mx-auto mb-3 small\" id=\"small\">\r\n                                \r\n                            </div>\r\n                            <div class=\"desc\">\r\n                            <h4 class=\"mb-3\">{item.Title}</h4>\r\n                            <p class=\"mb-4 \" style=\"text-align:center;align-items:center\">{item.Show_Start_Date}-{item.Show_End_Date}</p>\r\n                                </div>\r\n                            <a class=\"btn btn-sm\" href=\"single.aspx?id={item.Show_id}\"><i class=\"fa fa-plus text-primary me-2\"></i>Book Now</a>\r\n                        </div>\r\n                    </div>\r\n                </div>";
            }
        }
    }
}