using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion
{
    public partial class ReporteCalificacionCatedratico_g8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["slplannerCS"].ToString());
        DateTime thisDay = DateTime.Today;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void GenerarReporte(string nota)
        {
            Document pdfDoc = new Document(PageSize.A4, 10, 10, 10, 10);

            try
            {
                PdfWriter.GetInstance(pdfDoc, System.Web.HttpContext.Current.Response.OutputStream);

                //Open PDF Document to write data 
                pdfDoc.Open();
                string cadenaFinal = "";
                cadenaFinal += "<table><tr><th>Catedrático</th><th>Calificación</th></tr><tr><td>"+DropDownList1.SelectedValue+"</td><td>"+nota+"</td></tr><tr><td colspan=\"2\">"+ thisDay.ToString() + "</td></tr></table>";
                //Assign Html content in a string to write in PDF 
                string strContent = cadenaFinal;

                //Read string contents using stream reader and convert html to parsed conent 
                var parsedHtmlElements = HTMLWorker.ParseToList(new StringReader(strContent), null);

                //Get each array values from parsed elements and add to the PDF document 
                foreach (var htmlElement in parsedHtmlElements)
                    pdfDoc.Add(htmlElement as IElement);

                //Close your PDF 
                pdfDoc.Close();

                Response.ContentType = "application/pdf";

                //Set default file Name as current datetime 
                Response.AddHeader("content-disposition", "attachment; filename=ReporteCatedratico" + DropDownList1.SelectedValue + ".pdf");
                System.Web.HttpContext.Current.Response.Write(pdfDoc);

                Response.Flush();
                Response.End();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string nota;
            con.Open();
            string consulta = "select calificacion from profesor where nombre LIKE '" + DropDownList1.SelectedValue + "';";
            SqlCommand cmd = new SqlCommand(consulta, con);
            nota = cmd.ExecuteScalar().ToString();
            con.Close();
            GenerarReporte(nota);
            Response.Redirect(Request.RawUrl);
        }
    }
}