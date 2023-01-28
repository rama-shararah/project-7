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
    public partial class WebForm13 : System.Web.UI.Page
    {

        VisionCinemaEntities1 obj = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                var id = Request.QueryString["ID"];
                int id1 = Convert.ToInt32(id);

                var record = obj.Feedbacks.Find(id1);
                TextBox1.Text = record.approve.ToString();
                
            }
        }

        protected void Cancle_Click(object sender, EventArgs e)
        {

            Response.Redirect("Feedback.aspx");
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {

            var id = Request.QueryString["ID"];
            int id1 = Convert.ToInt32(id);

            var record = obj.Feedbacks.Find(id1);
            record.approve = Convert.ToBoolean(TextBox1.Text);
            obj.SaveChanges();
            Response.Redirect("Feedback.aspx");

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            var x = new Feedback { FeedBack_id = id };
            obj.Entry(x).State = EntityState.Deleted;
            obj.SaveChanges();

            Response.Redirect("Feedback.aspx");
        }
    }
}