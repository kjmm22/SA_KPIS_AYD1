using System;
using TechTalk.SpecFlow;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace AYD1_Aplicacion.Tests
{
    [Binding]
    public class BDD_Asistencia_2Steps
    {
        private maestroNodo mn = new maestroNodo();
        private bool result;

        [Given(@"teacher's profile")]
        public void GivenTeacherSProfile(String nombreMaestro, int puesto)
        {
            mn.nombre = nombreMaestro;
            mn.puesto = puesto; 
            // 1: Director
            // 2: Coordinador
            // 3: Maestro
        }
        
        [When(@"the teacher logs in")]
        public void WhenTheTeacherLogsIn()
        {
            result = mn.verificarFechaParaRegistro(DateTime.Today);
        }
        
        [Then(@"register teacher's attendance")]
        public void ThenRegisterTeacherSAttendance()
        {
            Assert.IsTrue(result);
        }
    }
}
