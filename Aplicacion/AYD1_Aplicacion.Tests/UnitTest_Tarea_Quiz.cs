using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace AYD1_Aplicacion.Tests
{
    [TestClass]
    public class UnitTest_Tarea_Quiz
    {
        [TestMethod]
        public void Varidar_Extencion_Doc()
        {
            var TestDoc = new Tareas_QuizTest();

            TestDoc.arcDoc = ".doc";
            bool resultado1 = TestDoc.Validar_Doc();
            Assert.IsTrue(resultado1);

        }
        [TestMethod]
        public void Varidar_Extencion_Docx()
        {
            var TestDoc = new Tareas_QuizTest();

            TestDoc.arcDoc = ".docx";
            bool resultado1 = TestDoc.Validar_Doc();
            Assert.IsTrue(resultado1);

        }
        [TestMethod]
        public void Varidar_Extencion_pdf()
        {
            var TestDoc = new Tareas_QuizTest();

            TestDoc.arcDoc = ".pdf";
            bool resultado1 = TestDoc.Validar_Doc();
            Assert.IsTrue(resultado1);

        }
    }
}
