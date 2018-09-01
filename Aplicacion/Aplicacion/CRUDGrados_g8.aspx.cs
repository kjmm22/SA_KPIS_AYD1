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
    public partial class CRUDGrados_g8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           /* SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["DATA_PROYECTO2ConnectionString"].ToString());
            con2.Open();
            string consulta2 = "SELECT TOP 1 Precio FROM PRODUCTO WHERE NombreProducto = '" + nombre + "';";
            SqlCommand cmd2 = new SqlCommand(consulta2, con2);
            precio = cmd2.ExecuteScalar().ToString();
            con2.Close();
            TextBox3.Text = precio;*/

            string nom;
            nom = TextBoxNombreGrado.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["slplannerConnectionString"].ToString());
            con.Open();
            string consulta = "INSERT INTO grado values('" + nom + "');";
            SqlCommand cmd = new SqlCommand(consulta, con);
            cmd.ExecuteScalar();
            con.Close();
        }
    }
}