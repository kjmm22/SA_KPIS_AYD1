using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aplicacion.Tests
{
    public class Catedratico
    {
       
        public string Nombre { get; set; }
        public string Codigo { get; set; }
        public int Calificacion { get; set; }
        public int Tipo { get; set; }

        public bool Validar()
        {
            switch (Tipo)
            {
                case 1:
                    return true;
                  
                case 2:
                    return true;
                    
                case 3:
                    return true;

                default:
                    return false;    
            }
        }

        internal bool Validar_codigo()
        {
            if (Codigo.Length >= 8)
            {
                return true;
            }
            return false;
        }

        internal bool Validar_calificacion()
        {
            if (Calificacion >= 61)
            {
                return true;
            }
            return false;
        }
    }
}
