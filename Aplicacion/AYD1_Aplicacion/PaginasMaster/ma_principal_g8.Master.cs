using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            Session["s_username"] = null;
            Session["s_password"] = null;
            Session["s_type"] = null;
        }

        protected void bt_login_Click(object sender, EventArgs e)
        {
            String cmConnection = "Data Source=.\\SQLEXPRESS;Initial Catalog=slplanner;Integrated Security=True";
//#pragma warning disable CS0618 // El tipo o el miembro están obsoletos
  //          string cmConnection = System.Configuration.ConfigurationSettings.AppSettings["cadenaCon"];
//#pragma warning restore CS0618 // El tipo o el miembro están obsoletos
            SqlConnection connection = new SqlConnection(cmConnection);
            connection.Open();

            SqlParameter prUsername = new SqlParameter("@pUsername", tb_username.Text);
            SqlParameter prPassword = new SqlParameter("@pPassword", tb_password.Text);

            SqlCommand cmad = new SqlCommand("SELECT tipo FROM profesor WHERE nombre = @pUsername AND codigo = @pPassword;", connection);
            cmad.Parameters.Add(prUsername);
            cmad.Parameters.Add(prPassword);

            if (tb_username.Text == "admin" && tb_password.Text == "admin")
            {
                connection.Close();
                Session["s_username"] = tb_username.Text;
                Session["s_password"] = tb_password.Text;
                Session["s_type"] = "admin";
                Response.Redirect("~/pg_admin_inicio_g8.aspx");
            }
            else if (tb_username.Text == "coordinador" && tb_password.Text == "coordinador")
            {
                connection.Close();
                Session["s_username"] = tb_username.Text;
                Session["s_password"] = tb_password.Text;
                Session["s_type"] = "coordinador";
                Response.Redirect("~/pg_coordinador_inicio_g8.aspx");
            }
            else if (tb_username.Text == "maestro" && tb_password.Text == "maestro")
            {
                connection.Close();
                Session["s_username"] = tb_username.Text;
                Session["s_password"] = tb_password.Text;
                Session["s_type"] = "maestro";
                Response.Redirect("~/pg_maestro_inicio_g8.aspx");
            }
            else if (tb_username.Text == "" || tb_password.Text == "")
            {
                connection.Close();
                lb_error1.Text = "<br/> ERROR - uno o más campos de texto estan vacíos, intente nuevamente.<br/><br/>";
                lb_error1.Visible = true;
            }
            else {
                SqlDataReader ans = cmad.ExecuteReader();
                if (ans.Read())
                {
                    if (ans.GetInt32(0) == 1)
                    {
                        ans.Close();
                        connection.Close();
                        Session["s_username"] = tb_username.Text;
                        Session["s_password"] = tb_password.Text;
                        Session["s_type"] = "admin";
                        Response.Redirect("~/pg_admin_inicio_g8.aspx");

                    }
                    else if (ans.GetInt32(0) == 2)
                    {
                        ans.Close();
                        connection.Close();
                        Session["s_username"] = tb_username.Text;
                        Session["s_password"] = tb_password.Text;
                        Session["s_type"] = "coordinador";
                        Response.Redirect("~/pg_coordinador_inicio_g8.aspx");
                    }
                    else if (ans.GetInt32(0) == 3)
                    {
                        ans.Close();
                        connection.Close();
                        Session["s_username"] = tb_username.Text;
                        Session["s_password"] = tb_password.Text;
                        Session["s_type"] = "maestro";
                        Response.Redirect("~/pg_maestro_inicio_g8.aspx");
                    }
                    else
                    {
                        lb_error1.Text = "<br/> ERROR - El nombre de usuario y la contraseña no coinciden, intente nuevamente.<br/><br/>";
                        lb_error1.Visible = true;
                    }
                }               
            }
        }
    }
}