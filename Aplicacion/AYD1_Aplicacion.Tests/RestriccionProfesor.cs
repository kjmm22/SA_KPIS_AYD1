using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AYD1_Aplicacion.Tests
{
    class RestriccionProfesor
    {
        public int hora_inicio { get; set; }
        public int hora_fin { get; set; }
        public string dia { get; set; }

        public bool ValidarHoraInicio()
        {
            if (hora_inicio >= 8 && hora_inicio <17)
            {
                return true;
            }
            return false;
        }

        public bool ValidarHoraFin()
        {
            if (hora_fin > 8 && hora_fin <= 17)
            {
                return true;
            }
            return false;
        }

        public bool ValidarRestriccion()
        {
            if (hora_inicio < hora_fin)
            {
                return true;
            }
            return false;
        }

        public bool Validardia()
        {
            switch (dia)
            {
                case "Lunes":
                    return true;

                case "Martes":
                    return true;

                case "Miercoles":
                    return true;

                case "Jueves":
                    return true;

                case "Viernes":
                    return true;

                default:
                    return false;
            }
        }
    }
}
