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
    public partial class Calificacion_Catedratico_g8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["slplannerConnectionString"].ToString());
        int p1, p2, p3, p4, p5, nota;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void InsercionNota(int nota)
        {
            string nom;
            nom = DropDownList1.SelectedValue;
            con.Open();
            string consulta = "update profesor set calificacion ="+nota+"where nombre LIKE '" + nom + "';";
            SqlCommand cmd = new SqlCommand(consulta, con);
            cmd.ExecuteScalar();
            con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            p1 = Int32.Parse(RadioButtonList1.SelectedValue);
            p2 = Int32.Parse(RadioButtonList2.SelectedValue);
            p3 = Int32.Parse(RadioButtonList3.SelectedValue);
            p4 = Int32.Parse(RadioButtonList4.SelectedValue);
            p5 = Int32.Parse(RadioButtonList5.SelectedValue);
            nota = (p1 + p2 + p3 + p4 + p5) * 10;
            InsercionNota(nota);
            Response.Redirect(Request.RawUrl);
        }

    }
}