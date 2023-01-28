using project7;
using project7.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Movie_tickets.Admin
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        VisionCinemaEntities1 obj = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                dateholder.Visible = false;


                var id = Request.QueryString["ID"];
                int id1 = Convert.ToInt32(id);

                var x = from Movy in obj.Movies select Movy;
                DropDownList1.DataSource = x.ToList();
                DropDownList1.DataTextField = "Title";
                DropDownList1.DataValueField = "Movie_Id";
                DropDownList1.DataBind();

                
                var record = obj.Shows.Find(id1);
                Textdate.Text = record.Show_Date.ToString();
                dateholder.Text = record.Show_Date.ToString();
                string []startTime =record.Show_Start_Date.ToString().Split(':');
                Textstarthour.Text = startTime[0];
                Textstartmin.Text = startTime[1];
                string[] endTime = record.Show_End_Date.ToString().Split(':');
                TextEndhour.Text = endTime[0];
                TextEndmin.Text = endTime[1];

                DropDownList1.SelectedValue =Convert.ToString( record.Movie_id);




            }
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            if (Textdate.Text != "")
            {
                dateholder.Text = Textdate.Text;
            }
            var id = Request.QueryString["ID"];
            int id1 = Convert.ToInt32(id);
            var record = obj.Shows.Find(id1);

            record.Show_Date = Convert.ToDateTime(dateholder.Text);
            DropDownList1.SelectedValue = Convert.ToString(record.Movie_id);
            string x = Textstarthour.Text + ":" + Textstartmin.Text;
            TimeSpan y = TimeSpan.Parse(x);
            record.Show_Start_Date = y;

            string r = TextEndhour.Text + ":" + TextEndmin.Text;
            TimeSpan r1 = TimeSpan.Parse(r);
            record.Show_End_Date = r1;

            obj.SaveChanges();
            Response.Redirect("Shows.aspx");
        }

        protected void cancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("Shows.aspx");

        }
    }
}