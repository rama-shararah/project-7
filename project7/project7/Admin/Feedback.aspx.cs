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

namespace Movie_tickets.Admin
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        VisionCinemaEntities1 obj = new VisionCinemaEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            

            var q1 = (from s in obj.Feedbacks

                      select new
                      {
                         s.FeedBack_id,
                         s.Comment,
                         s.approve,
                      }).ToList();

            GridView1.DataSource = q1;
            GridView1.DataBind();
            int rowCount = GridView1.Rows.Count;
            if (rowCount == 0) { pdf.Visible = false; excel.Visible = false; }
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            if (AcceptedFeedBack.Checked)
            {
                var q1 = (from s in obj.Feedbacks
                          where (s.approve == false)

                          select new
                          {
                              s.FeedBack_id,
                              s.Comment,
                              s.approve,
                          }).ToList();

                GridView1.DataSource = q1;
                GridView1.DataBind();
            }
            else {
                var q1 = (from s in obj.Feedbacks
                          select new
                          {
                              s.FeedBack_id,
                              s.Comment,
                              s.approve,
                          }).ToList();

                GridView1.DataSource = q1;
                GridView1.DataBind();
            }
            int rowCount = GridView1.Rows.Count;
            if (rowCount == 0) { pdf.Visible = false; excel.Visible = false; }
            else { pdf.Visible = true; excel.Visible = true; }
        }
        protected void printPdf(object sender, EventArgs e)
        {
            GridView dataTable= new GridView();
            var q1 = (from s in obj.Feedbacks

                      select new
                      {
                          s.FeedBack_id,
                          s.Comment,
                          s.approve,
                      }).ToList();

            dataTable.DataSource = q1;
            dataTable.DataBind();

            string date = DateTime.Now.ToString("dd-MM-yyyy");
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", $"attachment;filename=Feedback{date}.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter s_w = new StringWriter();
            HtmlTextWriter h_w = new HtmlTextWriter(s_w);
            dataTable.AllowPaging = false;
            dataTable.DataBind();
            dataTable.RenderControl(h_w);
            dataTable.HeaderRow.Style.Add("width", "15%");
            dataTable.HeaderRow.Style.Add("font-size", "10px");
            dataTable.Style.Add("text-decoration", "none");
            dataTable.Style.Add("font-family", "Arial, Helvetica, sans-serif;");
            dataTable.Style.Add("font-size", "8px");
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


            GridView dataTable = new GridView();
            var q1 = (from s in obj.Feedbacks

                      select new
                      {
                          s.FeedBack_id,
                          s.Comment,
                          s.approve,
                      }).ToList();

            dataTable.DataSource = q1;
            dataTable.DataBind();

            string date = DateTime.Now.ToString("dd-MM-yyyy");
            Response.Clear();
            Response.AddHeader("content-disposition", $"attachment;filename=Feedback{date}.xls");
            Response.ContentType = "File/Data.xls";
            StringWriter StringWriter = new StringWriter();
            HtmlTextWriter HtmlTextWriter = new HtmlTextWriter(StringWriter);

            dataTable.RenderControl(HtmlTextWriter);
            Response.Write(StringWriter.ToString());
            Response.End();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            // controller   
        }
    }
}