using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Configuration;
using System.Data.SqlClient;

namespace Aplicacion.Tests
{
    [TestClass]
    public class CatedraticoTest
    {
        [TestMethod]
        public void Validar()
        {
            Catedratico n = new Catedratico
            {
                Tipo = 3 
            };
            bool resul = n.Validar();
            Assert.IsTrue(resul);
        }
        
        [TestMethod]
        public void Validar_codigo()
        {
            Catedratico nuevo = new Catedratico
            {
                Codigo = "asdfghjk"
            };
            bool resul = nuevo.Validar_codigo();
            Assert.IsTrue(resul);
        }

        [TestMethod]
        public void Validar_calificacion()
        {
            Catedratico nuevo = new Catedratico
            {
                Calificacion = 82

            };
            bool resul = nuevo.Validar_calificacion();
            Assert.IsTrue(resul);
        }
    }
}
