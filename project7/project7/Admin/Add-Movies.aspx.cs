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
    public partial class WebForm2 : System.Web.UI.Page
    {
        VisionCinemaEntities1 obj = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCancle_Click(object sender, EventArgs e)
        {
            Response.Redirect("Movies.aspx");
        }

    

        protected void ButtonADD_Click(object sender, EventArgs e)
        {
            Movy mov = new Movy();
            mov.Title = TextTitle.Text;
            mov.Duration = TextDuration.Text;
            mov.Release_Date =Convert.ToDateTime( TextRelease_Date.Text);
            mov.genre = DropDownList1.SelectedValue;
            mov.Movie_Description = TextMovie_Description.Value;
            mov.Movie_Image = LabelIMG.Text;
            mov.Trailer = Trailer.Text;
            obj.Movies.Add(mov);
            obj.SaveChanges();

            Response.Redirect("Movies.aspx");



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/img/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
            LabelIMG.Text = ("img/" + FileUpload1.FileName);
        }
    }
}