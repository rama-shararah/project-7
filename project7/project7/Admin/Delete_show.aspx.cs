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
    public partial class WebForm8 : System.Web.UI.Page
    {
        VisionCinemaEntities1 obj = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var q = (from pd in obj.Movies
                     join od in obj.Shows on pd.Movie_Id equals od.Movie_id
                     select new
                     {
                         od.Show_id,
                         od.Show_Date,
                         od.Show_Start_Date,
                         od.Show_End_Date,
                         pd.Title,

                     }).ToList();


           DetailsView1.DataSource = q;
            DetailsView1.DataBind();
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            var x = new Show { Show_id = id };
            obj.Entry(x).State = EntityState.Deleted;
            obj.SaveChanges();

            Response.Redirect("Shows.aspx");
        }
        protected void ButtonCancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("Shows.aspx");
        }
    }
}