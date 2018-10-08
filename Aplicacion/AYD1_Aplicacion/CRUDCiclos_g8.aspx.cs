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
    public partial class CRUDCiclos_g8 : System.Web.UI.Page
    {
        string añoinicio, mesinicio, diainicio;
        string añofin,mesfin,diafin;
        string nombreciclo;
        string ciclopadre;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["slplannerCS"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            añoinicio = Calendar1.SelectedDate.Year.ToString();
            mesinicio = Calendar1.SelectedDate.Month.ToString();
            diainicio = Calendar1.SelectedDate.Day.ToString();
            añofin = Calendar2.SelectedDate.Year.ToString();
            mesfin = Calendar1.SelectedDate.Month.ToString();
            diafin = Calendar1.SelectedDate.Day.ToString();
            if (TextBox1.Text!=null)
            {
                nombreciclo = TextBox1.Text;
            }
            if (DropDownList1.SelectedValue!=null)
            {
                ciclopadre = "'"+DropDownList1.SelectedValue+"'";
            }
            else
            {
                ciclopadre = "null";
                    
            }
            con.Open();
            string consulta = "insert into ciclo values('" + nombreciclo + "','" + añoinicio + "-" + mesinicio + "-" + diainicio + "','" + añofin +"-"+mesfin+"-"+diafin+"',"+ciclopadre+");";
            SqlCommand cmd = new SqlCommand(consulta, con);
            cmd.ExecuteScalar();
            con.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
}