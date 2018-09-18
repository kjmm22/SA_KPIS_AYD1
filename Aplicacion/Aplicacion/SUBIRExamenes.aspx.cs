using System;
using System.Collections.Generic;
using System.IO;

using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion
{
    public partial class inicio_g8 : System.Web.UI.Page
    {
        protected void almacenar1_Click(object sender, EventArgs e)
        {
            Datos2.Insert();
        }
    }
}