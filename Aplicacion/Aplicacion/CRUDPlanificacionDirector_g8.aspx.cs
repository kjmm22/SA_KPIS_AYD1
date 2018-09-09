using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion
{
    public partial class CRUDPlanificacionDirector_g8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            gv_aceptadas.DataBind();
            gv_rechazadas.DataBind();
        }
    }
}