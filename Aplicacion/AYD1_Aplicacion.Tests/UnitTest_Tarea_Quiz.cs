using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace AYD1_Aplicacion.Tests
{
    [TestClass]
    public class UnitTest_Tarea_Quiz
    {
        [TestMethod]
        public void TestMethod1()
        {
            var TestDoc = new Tareas_QuizTest();

            TestDoc.arcDoc = ".doc";
            bool resultado1 = TestDoc.Validar_Doc();
            Assert.IsTrue(resultado1);

        }
    }
}
