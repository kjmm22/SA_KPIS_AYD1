using System;
using TechTalk.SpecFlow;

namespace AYD1_Aplicacion.Tests
{
    [Binding]
    public class BDD_AsistensiaSteps
    {
        [Given(@"a principal profile")]
        public void GivenAPrincipalProfile()
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"she or he logs in")]
        public void WhenSheOrHeLogsIn()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"a record appears with the teacher's assistance")]
        public void ThenARecordAppearsWithTheTeacherSAssistance()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
