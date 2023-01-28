using project7.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7
{
    public partial class trailer : System.Web.UI.Page
    {
        VisionCinemaEntities1 cinema = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            var q = Request.QueryString["id"];
            var q1 = Convert.ToInt32(q);
            var det = cinema.Movies.Find(q1);
            iframeId.Src = det.Trailer;
        }
    }
}