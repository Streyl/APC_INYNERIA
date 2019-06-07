using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Drawing;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;
using System.Xml.Linq;


public partial class Stats : System.Web.UI.Page
{
    LinqDataClassesDataContext BaseDB = new LinqDataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {

        var Data1 = (from ob in BaseDB.tasks
                     select ob);
        GridViewTasksData.DataSource = Data1;
        GridViewTasksData.DataBind();


    }

    protected void btDownload_Click(object sender, EventArgs e)
    {
        Response.ContentType = "Stats/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=print.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);

        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);

        PanelPDF.RenderControl(hw);

        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 10f);
        HTMLWorker htmlParser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);

        pdfDoc.Open();
        htmlParser.Parse(sr);

        
        var chartimage = new MemoryStream();
        ChartProject.SaveImage(chartimage, ChartImageFormat.Png);
        iTextSharp.text.Image Chart_image = iTextSharp.text.Image.GetInstance(chartimage.GetBuffer());

        pdfDoc.Add(Chart_image);
        pdfDoc.Close();

        Response.Write(pdfDoc);
        Response.End();



    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        return;
    }



    protected void btDownloadTasks_Click(object sender, EventArgs e)
    {
        Response.ContentType = "Task_Stats/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=print.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);

        StringWriter sw1 = new StringWriter();
        HtmlTextWriter hw1 = new HtmlTextWriter(sw1);

        PanelPDF2.RenderControl(hw1);
       

        StringReader sr1 = new StringReader(sw1.ToString());
        Document pdfDoc1 = new Document(PageSize.A4, 10f, 10f, 100f, 10f);
        HTMLWorker htmlParser = new HTMLWorker(pdfDoc1);
        PdfWriter.GetInstance(pdfDoc1, Response.OutputStream);

        pdfDoc1.Open();
        htmlParser.Parse(sr1);

        pdfDoc1.Close();

        Response.Write(pdfDoc1);
        Response.End();
    }



}