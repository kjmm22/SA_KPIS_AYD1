using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion
{
    public partial class ma_principal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_login_Click(object sender, EventArgs e)
        {
            if (tb_username.Text == "admin" && tb_password.Text == "admin")
            {
                Session["s_username"] = tb_username.Text;
                Session["s_password"] = tb_password.Text;
                Session["s_type"] = "admin";
                Response.Redirect("pg_admin_inicio_g8.aspx");
            }
            else if (tb_username.Text == "coordinador" && tb_password.Text == "coordinador")
            {
                Session["s_username"] = tb_username.Text;
                Session["s_password"] = tb_password.Text;
                Session["s_type"] = "coordinador";
                Response.Redirect("pg_coordinador_inicio_g8.aspx");
            }
            else if (tb_username.Text == "maestro" && tb_password.Text == "maestro")
            {
                Session["s_username"] = tb_username.Text;
                Session["s_password"] = tb_password.Text;
                Session["s_type"] = "maestro";
                Response.Redirect("pg_maestro_inicio_g8.aspx");
            }
            else if (tb_username.Text == "" || tb_password.Text == "")
            {
                lb_error1.Text = "<br/> ERROR - uno o más campos de texto estan vacíos, intente nuevamente.<br/><br/>";
                lb_error1.Visible = true;
            }
            else
            {
                lb_error1.Text = "<br/> ERROR - El nombre de usuario y la contraseña no coinciden, intente nuevamente.<br/><br/>";
                lb_error1.Visible = true;
            }
        }
    }
}