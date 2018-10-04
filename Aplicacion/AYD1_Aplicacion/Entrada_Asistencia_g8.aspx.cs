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
    public partial class Entrada_Asistencia_g8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["slplannerCS"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id;
            id = TextoId.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["slplannerCS"].ToString());
            con.Open();
            string consulta = "INSERT INTO asistencia(profesor,fecha_hora,entrada_salida) values(" + id + "," +"GETDATE()"+",'1'"+");";
            SqlCommand cmd = new SqlCommand(consulta, con);
            cmd.ExecuteScalar();
            con.Close();
            Response.Redirect(Request.RawUrl);    
        }

        
    }
}