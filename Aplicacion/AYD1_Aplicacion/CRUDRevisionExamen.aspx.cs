using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace Aplicacion
{
    public partial class CRUDRevisionExamen : System.Web.UI.Page
    {
        private int tipo = 0;
        private string documento;
        private int refArchivo;

        public int getTipo()
        {
            return tipo;
        }
        public void setTipo(int t)
        {
            tipo = t;
        }

        public string getDocumento()
        {
            return documento;
        }
        public void setDocumento(string doc)
        {
            documento = doc;
        }

        public int getRefArchivo()
        {
            return refArchivo;
        }
        public void setRefArchivo(int ra) {
            refArchivo = ra;
        }

        public Boolean tipoValido() {
            return getTipo() == 1 || getTipo() == 2;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["s_type"] != null)
            {
                setTipo(Int32.Parse(Session["s_type"].ToString()));
            }

            if (!tipoValido() )
            {
                Response.Write("Tipo de usuario inválido");
                Response.Redirect(Request.UrlReferrer.ToString());
            }
            
        }

        public Boolean agregarComentario(string comentario)
        {
            if (comentario != null) {
                //insertarlo en la tabla comentario
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void gv_Documento_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow r = gv_Documento.SelectedRow;
            setDocumento(r.Cells[6].Text);
            setRefArchivo(Int32.Parse(r.Cells[7].Text));
            //Session["doc"] = RefArchivo;
            Direccion.Text = getDocumento() + "-" + getRefArchivo();

            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(getDocumento());
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }

    }
}