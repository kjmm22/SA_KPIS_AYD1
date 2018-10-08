using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Aplicacion
{
    public partial class CRUDCurso_g8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["slplannerCS"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nom;
            nom = TextBoxNombreCurso.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["slplannerCS"].ToString());
            con.Open();
            string consulta = "INSERT INTO curso values('" + nom + "');";
            SqlCommand cmd = new SqlCommand(consulta, con);
            cmd.ExecuteScalar();
            con.Close();
            Response.Redirect(Request.RawUrl);    
        }

        protected void BotonEliminar_Click(object sender, EventArgs e)
        {
            string id;
            id = DropDownList1.SelectedValue;
            con.Open();
            string consulta = "delete from curso where curso='"+id+"';";
            SqlCommand cmd = new SqlCommand(consulta, con);
            cmd.ExecuteScalar();
            con.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void BotonModificar_Click(object sender, EventArgs e)
        {
            string nombreviejo, nombrenuevo;
            nombreviejo = DropDownList2.SelectedValue;
            nombrenuevo = TextBoxModificar.Text;
            con.Open();
            string consulta = "UPDATE curso SET nombre = '"+nombrenuevo+"' WHERE curso = '"+nombreviejo+"';";
            SqlCommand cmd = new SqlCommand(consulta, con);
            cmd.ExecuteScalar();
            con.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
}