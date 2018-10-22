using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AYD1_Aplicacion
{
    public partial class RestriccionCatedratico : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["slplannerConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string hora_inicio,hora_final;
            int profesor;
            hora_inicio = DropDownList2.Text;
            hora_final = DropDownList3.Text;
            profesor = Int32.Parse( DropDownList1.SelectedValue);
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["slplannerConnectionString"].ToString());
            con.Open();
            string consulta = "INSERT INTO restriccion_profesor  values(" + profesor + ",'"+hora_inicio+ "','"+hora_final+ "'); ";
            SqlCommand cmd = new SqlCommand(consulta, con);
            cmd.ExecuteScalar();
            con.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
}