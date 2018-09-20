using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion
{
    public partial class SUBIRExamenes_ : System.Web.UI.Page
    {
        protected void GB1_Click(object sender, EventArgs e)
        {
            string nombre = System.IO.Path.GetFileName(FileUpload1.FileName);
            Label1.Text = nombre;
           Label2.Text = ListBox1.Text;
            if (Label1.Text== "Archivo")
            {

            }
            else {
                string extencion = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (extencion == ".doc" || extencion == ".docx" || extencion == ".pdf")
                {
                    SDS3.Insert();
                }
                else {
                    Response.Write("<h3>Error en el tipo de archivo.</h3>");
                }
            }
            
        }

      
    }
}