using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace AYD1_Aplicacion.Tests
{
    [TestClass]
    public class TestRestriccion
    {
        [TestMethod]
        public void ValidarHoraInicioVerdadero()
        {
            RestriccionProfesor profesor = new RestriccionProfesor
            {
                hora_inicio = 8
                
            };
            bool result = profesor.ValidarHoraInicio();
            Assert.IsTrue(result);
        }
    }
}
