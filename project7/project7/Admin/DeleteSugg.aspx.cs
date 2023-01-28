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
    public partial class WebForm11 : System.Web.UI.Page
    {
        VisionCinemaEntities1 obj = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["ID"];
            int id1 = Convert.ToInt32(id);
            var q1 = (from s in obj.suggestion1
                      where(s.id == id1)
                      select new
                      {
                          s.id,
                          s.username,
                          s.moviename,
                          s.movie_history,
                          s.movie_type,
                          s.siggestion,

                      }).ToList();

            DetailsView1.DataSource = q1;
            DetailsView1.DataBind();

        }
        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            var x = new suggestion1 { id = id };
            obj.Entry(x).State = EntityState.Deleted;
            obj.SaveChanges();

            Response.Redirect("suggestion.aspx");
        }
        protected void ButtonCancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("suggestion.aspx");
        }
    }
}