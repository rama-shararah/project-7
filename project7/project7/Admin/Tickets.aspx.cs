using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.text;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using project7;
using project7.Models;
using Microsoft.AspNet.Identity;

namespace Movie_tickets.Admin
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        VisionCinemaEntities1 obj = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
           


            var q1 = (from s in obj.Tickets
                      select new
                          {
                              s.Ticket_id,
                              s.Ticket_Date,
                              s.price,
                              s.AspNetUser.First_name,
                              s.Show.Show_Date,
                              s.Show.Movy.Title,
                              
                              

                          }).ToList();

                GridView1.DataSource = q1;
                GridView1.DataBind();
            int rowCount = GridView1.Rows.Count;
            if (rowCount == 0) { pdf.Visible = false; excel.Visible = false; }
        }
        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            var q1 = (from s in obj.Tickets
                      where s.Show.Movy.Title.Contains(TextSearch.Text) || s.AspNetUser.First_name.Contains(TextSearch.Text)
                      select new
                      {
                          s.Ticket_id,
                          s.Ticket_Date,
                          s.price,
                          s.AspNetUser.First_name,
                          s.Show.Show_Date,
                          s.Show.Movy.Title,
                      }).ToList();


            GridView1.DataSource = q1;
            GridView1.DataBind();
            int rowCount = GridView1.Rows.Count;
            if (rowCount == 0) { pdf.Visible = false; excel.Visible = false; }
            else { pdf.Visible = true; excel.Visible = true; }
        }
        protected void printPdf(object sender, EventArgs e)
        {
            var q1 = (from s in obj.Tickets
                      where s.Show.Movy.Title.Contains(TextSearch.Text)

                      select new
                      {
                          s.Ticket_id,
                          s.Ticket_Date,
                          s.price,
                          s.AspNetUser.First_name,
                          s.Show.Show_Date,
                          s.Show.Movy.Title,



                      }).ToList();

            GridView1.DataSource = q1;
            GridView1.DataBind();

            string date = DateTime.Now.ToString("dd-MM-yyyy");
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", $"attachment;filename=Tickets{date}.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter s_w = new StringWriter();
            HtmlTextWriter h_w = new HtmlTextWriter(s_w);
            GridView1.AllowPaging = false;
            GridView1.DataBind();
            GridView1.RenderControl(h_w);
            GridView1.HeaderRow.Style.Add("width", "15%");
            GridView1.HeaderRow.Style.Add("font-size", "10px");
            GridView1.Style.Add("text-decoration", "none");
            GridView1.Style.Add("font-family", "Arial, Helvetica, sans-serif;");
            GridView1.Style.Add("font-size", "8px");
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
           


           
            string date = DateTime.Now.ToString("dd-MM-yyyy");
            Response.Clear();
            Response.AddHeader("content-disposition", $"attachment;filename=Shows{date}.xls");
            Response.ContentType = "File/Data.xls";
            StringWriter StringWriter = new StringWriter();
            HtmlTextWriter HtmlTextWriter = new HtmlTextWriter(StringWriter);

            GridView1.RenderControl(HtmlTextWriter);
            Response.Write(StringWriter.ToString());
            Response.End();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            // controller   
        }
    }
}