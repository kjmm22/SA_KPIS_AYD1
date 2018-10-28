using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AYD1_Aplicacion.Tests
{
    public class Tareas_QuizTest
    {
        public string arcDoc { get; set; }

        internal bool Validar_Doc()
        {
            string extencion = ".jpg";

        if (extencion == arcDoc)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        internal bool Validar_Docx()
        {
            string extencion = ".jpg";

            if (extencion == arcDoc)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        internal bool Validar_pdf()
        {
            string extencion = ".jpg";

            if (extencion == arcDoc)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
    }
}
