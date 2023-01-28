using project7;
using project7.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_tickets.Admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        VisionCinemaEntities1 obj = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dateholder.Visible = false;
                var id = Request.QueryString["ID"];
                int id1 = Convert.ToInt32(id);


                var record = obj.Movies.Find(id1);
                TextTitle.Text = record.Title;
                TextDuration.Text = record.Duration;
                TextRelease_Date.Text = record.Release_Date.ToString();
                DropDownList1.SelectedValue = record.genre;
                TextMovie_Description.Value = record.Movie_Description;
                dateholder.Text = record.Release_Date.ToString();
                Trailer.Text = record.Trailer;
            }
        }

        protected void ButtonCancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("Movies.aspx");
        }


        protected void ButtonADD_Click(object sender, EventArgs e)

        {
            if(TextRelease_Date.Text != "") { 
            dateholder.Text=TextRelease_Date.Text;
            }
            var id = Request.QueryString["ID"];
            int id1 = Convert.ToInt32(id);
            var record = obj.Movies.Find(id1);

            record.Title = TextTitle.Text;
            record.Duration = TextDuration.Text;
            record.Release_Date = Convert.ToDateTime(dateholder.Text);
            record.genre = DropDownList1.SelectedValue;
            record.Trailer= Trailer.Text;
          
            record.Movie_Description = TextMovie_Description.Value;
       



            string folderPath = Server.MapPath("~/img/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
                record.Movie_Image = "img/" + FileUpload1.FileName;
            }

            


            obj.SaveChanges();
            Response.Redirect("Movies.aspx");
        }
    }
}