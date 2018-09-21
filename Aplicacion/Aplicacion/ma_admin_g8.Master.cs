using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion
{
    public partial class ma_admin_g8 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["s_username"] == null)
            {
                Response.Redirect("pg_principal_inicio_g8.aspx");
            }
            else if ((string)Session["s_type"] == "coordinador" || (string)Session["s_type"] == "maestro")
            {
                Session["s_username"] = null;
                Session["s_password"] = null;
                Session["s_type"] = null;
                Response.Redirect("pg_principal_inicio_g8.aspx");
            }
            else
            {
                lb_username.Text = (string)Session["s_username"];
                lb_usertype.Text = (string)Session["s_type"];
            }
        }
              
        protected void bt_logout_Click(object sender, EventArgs e)
        {
            Session["s_username"] = null;
            Session["s_password"] = null;
            Session["s_type"] = null;
            Response.Redirect("pg_principal_inicio_g8.aspx");
        }
    }
}