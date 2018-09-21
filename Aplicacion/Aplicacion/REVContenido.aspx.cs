using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicacion
{
    public partial class REVContenido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_open_file_Click(object sender, EventArgs e)
        {
            String fPath = ddl_archivos_contenido.SelectedValue;
            Process.Start(fPath);
        }

        protected void bt_file_denied_Click(object sender, EventArgs e)
        {
            String fPath = ddl_archivos_contenido.SelectedValue;

            if (tb_observation.Text == "")
            {

            }
            else
            {
                String cmConnection = "Data Source = ASUS-LEO\\SQLEXPRESS; Initial Catalog = slplanner; Integrated Security = True";
                SqlConnection connection = new SqlConnection(cmConnection);
                connection.Open();

                SqlParameter prPath = new SqlParameter("@var_path", fPath);

                SqlCommand cmad = new SqlCommand("SELECT archivo FROM archivo WHERE direccion = @var_path;", connection);
                cmad.Parameters.Add(prPath);

                SqlDataReader ans = cmad.ExecuteReader();
                if (ans.Read())
                {
                    SqlParameter prCodFile = new SqlParameter("@cod_file", ans.GetInt32(0));
                    SqlParameter prTxtObsn = new SqlParameter("@var_observation", tb_observation.Text);
                    SqlParameter prCurDate = new SqlParameter("@var_date", (DateTime.Today + ""));

                    SqlCommand cmadOb = new SqlCommand("INSERT observacion VALUES (@cod_file, @var_observation, @var_date);", connection);
                    cmad.Parameters.Add(prCodFile);
                    cmad.Parameters.Add(prTxtObsn);
                    cmad.Parameters.Add(prCurDate);
                }
            }
        }

        protected void bt_file_approved_Click(object sender, EventArgs e)
        {
            String fPath = ddl_archivos_contenido.SelectedValue;

            if (tb_observation.Text == "")
            {

            }
            else
            {
                String cmConnection = "Data Source = ASUS-LEO\\SQLEXPRESS; Initial Catalog = slplanner; Integrated Security = True";
                SqlConnection connection = new SqlConnection(cmConnection);
                connection.Open();

                SqlParameter prPath = new SqlParameter("@var_path", fPath);

                SqlCommand cmad = new SqlCommand("SELECT archivo FROM archivo WHERE direccion = @var_path;", connection);
                cmad.Parameters.Add(prPath);

                SqlDataReader ans = cmad.ExecuteReader();
                if (ans.Read())
                {
                    SqlParameter prCodFile = new SqlParameter("@cod_file", ans.GetInt32(0));
                    SqlParameter prTxtObsn = new SqlParameter("@var_observation", tb_observation.Text);
                    SqlParameter prCurDate = new SqlParameter("@var_date", (DateTime.Today + ""));

                    SqlCommand cmadOb = new SqlCommand("INSERT observacion VALUES (@cod_file, @var_observation, @var_date);", connection);
                    cmad.Parameters.Add(prCodFile);
                    cmad.Parameters.Add(prTxtObsn);
                    cmad.Parameters.Add(prCurDate);
                }
            }
        }
    }
}