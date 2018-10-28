using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Aplicacion.Tests
{
    [TestClass]
    public class UnitTest2
    {
        [TestMethod]

        public void TestMethod1()
        {


        public void ValidaHoraInicioVerdadero()
        {
            RestriccionCatedratico r = new RestriccionCatedratico
            {
                hora_inicio = 8
            };
            bool result = r.ValidarHoraInicio();
            Assert.IsTrue(result);
        }
        [TestMethod]
        public void ValidaHoraInicioFalso()
        {
            RestriccionCatedratico r = new RestriccionCatedratico
            {
                hora_inicio = 7
            };
            bool result = r.ValidarHoraInicio();
            Assert.IsFalse(result);
        }

        [TestMethod]
        public void ValidaHoraFinVerdadero()
        {
            RestriccionCatedratico r = new RestriccionCatedratico
            {
                hora_fin = 16
            };
            bool result = r.ValidarHoraFin();
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void ValidaHoraFinFalso()
        {
            RestriccionCatedratico r = new RestriccionCatedratico
            {
                hora_fin = 22
            };
            bool result = r.ValidarHoraFin();
            Assert.IsFalse(result);
        }

        [TestMethod]
        public void ValidaDiaVerdadero()
        {
            RestriccionCatedratico r = new RestriccionCatedratico
            {
                dia = "Lunes"
            };
            bool result = r.Validardia();
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void ValidaDiaFalso()
        {
            RestriccionCatedratico r = new RestriccionCatedratico
            {
                dia = "Domingo"
            };
            bool result = r.Validardia();
            Assert.IsFalse(result);
        }

        [TestMethod]
        public void ValidaRestriccionVerdadero()
        {
            RestriccionCatedratico r = new RestriccionCatedratico
            {
                hora_inicio = 8,
                hora_fin = 10
            };
            bool result = r.ValidarRestriccion();
            Assert.IsTrue(result);
        }

        [TestMethod]
        public void ValidaRestriccionFalso()
        {
            RestriccionCatedratico r = new RestriccionCatedratico
            {
                hora_inicio = 22,
                hora_fin = 10
            };
            bool result = r.ValidarRestriccion();
            Assert.IsFalse(result);

        }
    }
}
