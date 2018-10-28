using NUnit.Framework;
using System;
using TechTalk.SpecFlow;

namespace AYD1_Aplicacion.Tests
{
    [Binding]
    public class TareasQuizSteps
    {
        Tareas_QuizTest tq = new Tareas_QuizTest();
        bool res = false;

        [Given(@"A file")]
        public void GivenAFile()
        {
            tq.arcDoc = "doc";
        }
        
        [When(@"i press the load button")]
        public void WhenIPressTheLoadButton()
        {
            res = tq.Validar_Doc();
        }
        
        [Then(@"The type of the file should be validated")]
        public void ThenTheTypeOfTheFileShouldBeValidated()
        {
            Assert.IsTrue(res);
        }
    }
}
