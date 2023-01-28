using project7;
using project7.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_tickets.Admin
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        VisionCinemaEntities1 obj = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["ID"];
            int id1 = Convert.ToInt32(id);

            var q1 = (from s in obj.Movies
                      where(s.Movie_Id== id1)
                      select new
                      {
                          s.Movie_Id,
                          s.Title,
                          s.Duration,
                          s.genre,
                          s.Release_Date,
                          s.Movie_Description,
                          s.Movie_Image,

                      }).ToList();

            DetailsView1.DataSource = q1;
            DetailsView1.DataBind();


        }
        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            var x = new Movy { Movie_Id = id };
            obj.Entry(x).State = EntityState.Deleted;
            obj.SaveChanges();

            Response.Redirect("Movies.aspx");
        }
        protected void ButtonCancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("Movies.aspx");
        }
    }
}