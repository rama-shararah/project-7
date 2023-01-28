using Microsoft.Ajax.Utilities;
using project7.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        VisionCinemaEntities1 cinema = new VisionCinemaEntities1();
        AspNetUser user1 = new AspNetUser();
        //where ss.userId ==1.ToString()

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["payment"] != null)
            {
                var ses = Session["userid"];
            string sess = ses.ToString();
            var user = user1.Id;
  


            var ticket = from ss in cinema.Tickets
                         where ss.userId == sess 
                         select new {  ss.Ticket_Date, ss.price, ss.Show.Movy.Title,ss.Ticket_id };
            foreach (var item in ticket)
            {
         
                var xx = cinema.Show_Seats.FirstOrDefault(d => d.Ticket_id == item.Ticket_id);

                    card.InnerHtml += $"  <div class=\"backimg\">\r\n          \r\n\r\n                <p class=\"CINEMATICK\">CINEMA TICKET</p>\r\n            <div  class=\"info\">\r\n              \r\n                <div class=\"fcolumn\">\r\n\r\n  <p>seat:</p>\r\n                 <p>Date:</p>\r\n                 <p>price:</p>\r\n                     <p> num:</p>\r\n                        \r\n                </div>\r\n              \r\n                <div class=\"scolumn\">\r\n\r\n  <p>{Convert.ToInt32( xx.CinemaSeatid)}</p>\r\n                 <p>{item.Ticket_Date}</p>\r\n                 <p>{item.price}</p>\r\n                    <p>{item.Ticket_id}</p>\r\n\r\n                </div>\r\n                \r\n                <p></p>\r\n  \r\n                  <p class=\"wick\"> movie-name: {item.Title} </p>\r\n            </div>\r\n           \r\n           \r\n       \r\n\r\n\r\n\r\n\r\n\r\n\r\n         \r\n            \r\n\r\n        </div>";

            }


            }

        }
    }
}
