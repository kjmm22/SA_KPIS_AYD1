using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Aplicacion.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            CRUDPlanificacion_g8 test1 = new CRUDPlanificacion_g8();
            test1.Prueba();
            Assert.AreEqual(test1.te, "dos");
        }
    }
}
