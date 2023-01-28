using project7.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        VisionCinemaEntities1 db = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

            var id = Request.QueryString["id"];

            var id2 = Convert.ToInt32(id);
            //int id2 = 1;
            var sho = db.Shows.Find(id2);
            

            var pic = db.Shows.FirstOrDefault(d => d.Show_id == id2).Movy.Movie_Image;
            var R_date = db.Shows.FirstOrDefault(d => d.Show_id == id2).Movy.Release_Date;
            var tle = db.Shows.FirstOrDefault(d => d.Show_id == id2).Movy.Title;
            var dec = db.Shows.FirstOrDefault(d => d.Show_id == id2).Movy.Movie_Description;
            var gen = db.Shows.FirstOrDefault(d => d.Show_id == id2).Movy.genre;
            var dur = db.Shows.FirstOrDefault(d => d.Show_id == id2).Movy.Duration;
            var trlr = db.Shows.FirstOrDefault(d => d.Show_id == id2).Movy.Trailer;

            DateTime date5 = Convert.ToDateTime(sho.Show_Date);
            

            var u = R_date;
            DateTime date4 = Convert.ToDateTime(u);
            year.InnerHtml += date4.ToString("dd/MM/yyyy");
            title.InnerHtml += tle;
            description.InnerHtml = dec;
            date.InnerHtml += date5.ToString("dd/MM/yyyy");
            time.InnerHtml += sho.Show_Start_Date.ToString() +"-" +sho.Show_End_Date.ToString();
            genre.InnerHtml +=gen;
            Duration.InnerHtml += dur;
            img.Src = pic;
            iframeId.Src = trlr;


            btn.HRef = $"SeatPage.aspx?id={id}";

            






            //var ybINFO = from ss in db.Shows
            //             where ss.Show_id == id2
            //             select  new { ss.Movy.Movie_Image, ss.Movy.Movie_Id }; 



           

        }
    }
}