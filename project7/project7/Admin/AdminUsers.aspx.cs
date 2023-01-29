using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using project7;
using project7.Models;
using System;
using System.Collections.Generic;
using System.Drawing.Printing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Movie_tickets.Admin
{
    public partial class AdminUsers : System.Web.UI.Page
    {
        VisionCinemaEntities1 db = new VisionCinemaEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            var users = from user in db.AspNetUsers select user;
           Users.DataSource = users.ToList();
            Users.DataBind();
            int rowCount = Users.Rows.Count;
            if (rowCount == 0) { pdf.Visible = false; excel.Visible = false; }
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            var q1 = (from s in db.AspNetUsers
                      where (s.First_name.Contains(TextSearch.Text))
                      select new
                      {
                         s.First_name,
                         s.Email,
                         s.user_image,
                         s.PhoneNumber

                      }).ToList();


            Users.DataSource = q1;
            Users.DataBind();

            int rowCount = Users.Rows.Count;
            if (rowCount == 0) { pdf.Visible = false; excel.Visible = false; }
            else { pdf.Visible = true; excel.Visible = true; }
        }
        protected void printPdf(object sender, EventArgs e)
        {
            GridView dataGrid = new GridView();
            var q1 = (from s in db.AspNetUsers
                      where (s.First_name.Contains(TextSearch.Text))
                      select new
                      {
                          s.First_name,
                          s.Email,
                          s.PhoneNumber

                      }).ToList();
            dataGrid.DataSource = q1;
            dataGrid.DataBind();
            string date = DateTime.Now.ToString("dd-MM-yyyy");
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", $"attachment;filename=Users{date}.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter s_w = new StringWriter();
            HtmlTextWriter h_w = new HtmlTextWriter(s_w);
            dataGrid.AllowPaging = false;
            dataGrid.DataBind();
            dataGrid.RenderControl(h_w);
            dataGrid.HeaderRow.Style.Add("width", "15%");
            dataGrid.HeaderRow.Style.Add("font-size", "10px");
            dataGrid.Style.Add("text-decoration", "none");
            dataGrid.Style.Add("font-family", "Arial, Helvetica, sans-serif;");
            dataGrid.Style.Add("font-size", "8px");
            StringReader sr = new StringReader(s_w.ToString());
            Document pdfDoc = new Document(PageSize.A2, 7f, 7f, 7f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();

        }
        protected void printExcel(object sender, EventArgs e)
        {
            GridView dataGrid = new GridView();
            var q1 = (from s in db.AspNetUsers
                      where (s.First_name.Contains(TextSearch.Text))
                      select new
                      {
                          s.First_name,
                          s.Email,
                          s.PhoneNumber

                      }).ToList();


            dataGrid.DataSource = q1;
            dataGrid.DataBind();
            string date = DateTime.Now.ToString("dd-MM-yyyy");
            Response.Clear();
            Response.AddHeader("content-disposition", $"attachment;filename=Users{date}.xls");
            Response.ContentType = "File/Data.xls";
            StringWriter StringWriter = new StringWriter();
            HtmlTextWriter HtmlTextWriter = new HtmlTextWriter(StringWriter);

            dataGrid.RenderControl(HtmlTextWriter);
            Response.Write(StringWriter.ToString());
            Response.End();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            // controller   
        }
    }
}