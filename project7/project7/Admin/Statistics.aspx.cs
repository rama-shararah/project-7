using project7;
using project7.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_tickets.Admin
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        VisionCinemaEntities1 obj = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var numUser = (from u in obj.AspNetUsers select u.Id).Count();
            user1.Text = numUser.ToString();


            var numMov = (from m in obj.Movies select m.Movie_Id).Count();
            Movy.Text = numMov.ToString();


            var numSug = (from g in obj.suggestion1 select g.id).Count();
            sug1.Text = numSug.ToString();



            var numTic =(from t in obj.Tickets select t.Ticket_id).Count();
            Tick.Text = numTic.ToString();
        }
    }
}