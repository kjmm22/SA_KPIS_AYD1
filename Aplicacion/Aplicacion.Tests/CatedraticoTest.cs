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
            bool resul = n.validar();
            Assert.IsTrue(resul);

        }
    }
}
