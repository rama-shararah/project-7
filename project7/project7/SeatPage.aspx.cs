using project7.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project7
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        VisionCinemaEntities1 db = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            string showId = Request.QueryString["id"];

            int amer = Convert.ToInt32(showId);
            if (!IsPostBack)
            {
                Label4.Visible = false;
                var seats = from seat in db.Show_Seats orderby seat.CinemaSeatid descending where seat.Show_id ==amer select seat;
                foreach (var seat in seats)
                {
                    int x = Convert.ToInt32(seat.CinemaSeatid) - 1;
                    DropDownList1.Items.RemoveAt(x);

                }
                DropDownList1.DataBind();



            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string showId = Request.QueryString["id"];
            

            int shoId = Convert.ToInt32(showId);
           
            if(Label3.Text != "") { 
              if (Session["userid"] != null)
              {
                var userid = Session["userid"].ToString();
                List<string> seats = Label3.Text.Split('+').ToList();
                foreach (string item in seats)
                {
                        Guid id = Guid.NewGuid();
                        string sd = db.Shows.FirstOrDefault(s => s.Show_id == 2).Show_Date.ToString();
                    var ticketnum = (from u in db.AspNetUsers select u.Id).Count();
                    Ticket ticket = new Ticket();
                    ticket.Ticket_id = id.ToString();
                    ticket.price = 7;
                    ticket.Show_id = shoId;
                    ticket.userId = userid;
                    ticket.Ticket_Date = Convert.ToDateTime(sd);
                    db.Tickets.Add(ticket);
                    db.SaveChanges();
                    Show_Seats seat = new Show_Seats();
                    seat.Ticket_id = id.ToString();
                    seat.CinemaSeatid = Convert.ToInt32(item);
                    seat.Show_id = 2;
                    db.Show_Seats.Add(seat);
                    db.SaveChanges();
                }
                    int tic =seats.Count;
                    
                    Session["ticket"] = tic;

                Response.Redirect($"payment.aspx?id={shoId}");
                 
              }
                else
                {
                    Session["backurl"] = $"SeatPage.aspx?id={shoId}";
                    Response.Redirect("LoginPage.aspx");
                }


            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Warning.Text = "";
            List<string> seats = Label3.Text.Split('+').ToList();
            bool flag = false;
            foreach (string item in seats)
            {
                if (item == DropDownList1.SelectedValue) { flag = true; break; }

            }
            if (flag) { Warning.Text = "seat taken"; }
            else
            {
                if (Label3.Text == "") { Label3.Text = DropDownList1.SelectedValue; }
                else
                {
                    Label3.Text += "+" + DropDownList1.SelectedValue;

                }
            }


            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label4.Text = "";
            List<string> seats = Label3.Text.Split('+').ToList();
            seats.RemoveAt(seats.Count - 1);
            foreach (string item in seats)
            {


                if (Label4.Text == "") { Label4.Text = item; }
                else
                {
                    Label4.Text += "+" + item;
                }
            }
            Label3.Text = Label4.Text;
        }
    }
}            
    
