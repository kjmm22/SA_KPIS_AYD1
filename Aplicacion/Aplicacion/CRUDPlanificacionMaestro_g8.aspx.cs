using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion
{
    public partial class CRUDPlanificacion_g8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            l_fechahoy.Text = DateTime.Now.Date.ToString("dd/MM/yyyy");
            Session["profesor"] = 2;
        }

        public string te;
        public void Prueba() {
            te = "dos";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void b_agregar_Click(object sender, EventArgs e)
        {
            /*
            if (ddl_agregar_clase.SelectedIndex > 0) {
                l_texto.Text = "Agregado!";
            }
            else
            {
                l_texto.Text = "No Agregado!";
            }*/
            string con = "Data Source=PABLORP-PC;Initial Catalog=slplanner;Integrated Security=True";
            SqlConnection db = new SqlConnection(con);
            db.Open();
            string insert = "insert into actividad (asignacion_profesor, tipo, descripcion, fecha,aprobacion) values (" +
                ddl_agregar_clase.SelectedValue.ToString() +",'"+tb_tipo.Text+"','"+tb_descripcion.Text+"','"+ DateTime.Now.Date.ToString("dd/MM/yyyy") + "',0)";
            SqlCommand cmd = new SqlCommand(insert, db);
            int m = cmd.ExecuteNonQuery();
            db.Close();
            tb_tipo.Text = "";
            tb_descripcion.Text = "";
            gv_EditarEliminar.DataBind();

        }

    }
}