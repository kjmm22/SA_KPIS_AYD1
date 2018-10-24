using System;
using TechTalk.SpecFlow;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace AYD1_Aplicacion.Tests
{
    [Binding]
    public class BDD_AsistenciaSteps
    {
        private maestroNodo mn = new maestroNodo();
        private bool result;

        [Given(@"a principal profile")]
        public void GivenAPrincipalProfile(String nombreDirector, int puesto)
        {
            mn.nombre = nombreDirector;
            mn.puesto = 1;
            // 1: Director
            // 2: Coordinador
            // 3: Maestro
        }

        [When(@"she or he logs in")]
        public void WhenSheOrHeLogsIn()
        {
            result = mn.verificarTipoUsuarioDirector()
        }
        
        [Then(@"a record appears with the teacher's attendance")]
        public void ThenARecordAppearsWithTheTeacherSAttendance()
        {
            Assert.IsTrue(result);
        }
    }
}
