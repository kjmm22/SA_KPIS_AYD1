using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AYD1_Aplicacion.Tests
{
    public class maestroNodo
    {
        public String nombre;
        public int puesto;
        public int cantidadPermisos;
        public DateTime ultima_fecha_registrada;
        public bool asistencia;
        public bool permiso;
        public bool ingreso;
        public bool seleccionado;
        public bool display;


        internal bool verificarFechaParaRegistro(DateTime f)
        {
            if(this.puesto == 3 || this.puesto == 2)
            { 
                DateTime today = DateTime.Today;
                int tmp = DateTime.Compare(f, today);
    
                if(tmp == 0)
                {
                    ultima_fecha_registrada = f;
                    asistencia = true;
                    return asistencia;
                }
                else
                {
                    asistencia = false;
                    return false;
                }
            }
            return false;
        }

        internal bool verificarTipoUsuarioDirector()
        {
            if(this.puesto == 1)
            {
                return true;
            }
            return false;
        }

        internal bool verificarTipoUsuarioMaestro()
        {
            if (this.puesto == 3)
            {
                return true;
            }
            return false;
        }

        internal bool verificarEstadoPermiso()
        {
            if(this.permiso == false)
            {
                return true;
            }
            return false;
        }

        internal bool verificarPermisosPendientes()
        {
            if (this.cantidadPermisos > 0)
            {
                return true;
            }
            return false;
        }

        internal bool ingresoCorrecto()
        {
            if (this.ingreso == true)
            {
                return true;
            }
            return false;
        }

        internal bool permisoSeleccionado()
        {
            if (this.seleccionado == true)
            {
                return true;
            }
            return false;
        }

        internal bool mostrarEnDisplay()
        {
            if (this.display == true)
            {
                return true;
            }
            return false;
        }
    }
}
