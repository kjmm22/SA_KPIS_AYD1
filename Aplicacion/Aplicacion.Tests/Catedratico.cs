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

        public bool validar()
        {
            if (Tipo !=3)
            {
                return false;
            }
            return true;
        }
    }
}
