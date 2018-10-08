using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion
{
    public partial class CRUDSecciones_g8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["slplannerConnectionString"].ToString());
        string nombreseccion, grado, ciclo;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            nombreseccion = TextBox1.Text;
            grado = DropDownList1.SelectedValue;
            ciclo = DropDownList2.SelectedValue;
            con.Open();
            string consulta = "insert into seccion values ("+grado+","+ciclo+",'"+nombreseccion+"');";
            SqlCommand cmd = new SqlCommand(consulta, con);
            cmd.ExecuteScalar();
            con.Close();
            Response.Redirect(Request.RawUrl);
        }

        }
    }
