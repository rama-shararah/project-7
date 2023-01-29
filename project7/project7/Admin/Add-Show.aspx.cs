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
    public partial class WebForm6 : System.Web.UI.Page
    {
        VisionCinemaEntities1 obj = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

            Textdate.Attributes.Add("min", DateTime.Now.ToString("yyyy-MM-dd"));
            Textdate.Text = DateTime.Now.ToString("yyyy-MM-dd");
            if (!IsPostBack)
            {
                var x = from Movy in obj.Movies select Movy;
                DropDownList1.DataSource = x.ToList();
                DropDownList1.DataTextField = "Title";
                DropDownList1.DataValueField = "Movie_Id";
                DropDownList1.DataBind();

            }
        }
        protected void ButtonAdd_Click(object sender, EventArgs e)
        {


           Show sh =new Show();

            sh.Show_Date= Convert.ToDateTime(Textdate.Text);
            
          string x = Textstarthour.Text + ":" + Textstartmin.Text;
            TimeSpan y = TimeSpan.Parse(x);
            sh.Show_Start_Date =y;

            string r = TextEndhour.Text + ":" + TextEndmin.Text;
            TimeSpan r1=TimeSpan.Parse(r);
            sh.Show_End_Date =r1;

            sh.Movie_id =Convert.ToInt32( DropDownList1.SelectedValue);
            obj.Shows.Add(sh);
            obj.SaveChanges();

            Response.Redirect("Shows.aspx");



        }

        protected void cancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("Shows.aspx");
        }
    }
}