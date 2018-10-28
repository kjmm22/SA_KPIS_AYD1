using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using TechTalk.SpecFlow;

namespace AYD1_Aplicacion.Tests
{
    [Binding]
    public class BDD_PermisosSteps
    {
        private maestroNodo mn = new maestroNodo();
        private bool result;
        private bool resultPermiso;
        private bool PermisosPendientes;
        private bool resultIngresoPermiso;

        [Given(@"A permission not checked")]
        public void GivenAPermissionNotChecked()
        {
            mn.permiso = false;
            resultPermiso = mn.verificarEstadoPermiso();
        }

        [Given(@"A director logged in")]
        public void GivenADirectorLoggedIn(String nombreDirector, int puesto)
        {
            mn.nombre = nombreDirector;
            mn.puesto = 1;
            // 1: Director
            // 2: Coordinador
            // 3: Maestro

            result = mn.verificarTipoUsuarioDirector();
        }
        
        [Given(@"I have to enter application for permission")]
        public void GivenIHaveToEnterApplicationForPermission(String nombreProfesor, int puesto)
        {
            mn.nombre = nombreProfesor;
            mn.puesto = 3;
            // 1: Director
            // 2: Coordinador
            // 3: Maestro
        }

        [Given(@"I teacher logged in")]
        public void GivenITeacherLoggedIn()
        {
            result = mn.verificarTipoUsuarioMaestro();
        }
        
        [When(@"I press pending permits")]
        public void WhenIPressPendingPermits(int cantidad)
        {
            mn.cantidadPermisos = 5;
            PermisosPendientes = mn.verificarPermisosPendientes();
        }
        
        [When(@"I press enter permission")]
        public void WhenIPressEnterPermission()
        {
            mn.ingreso = true;
            resultIngresoPermiso = mn.ingresoCorrecto();
        }
        
        [Then(@"I select a permission")]
        public void ThenISelectAPermission()
        {
            mn.seleccionado = true;
            PermisosPendientes = mn.permisoSeleccionado();
        }
        
        [Then(@"The text of the permission is displayed on the screen")]
        public void ThenTheTextOfThePermissionIsDisplayedOnTheScreen()
        {
            mn.display = true;
            PermisosPendientes = mn.mostrarEnDisplay();
        }
        
        [Then(@"I can authorizes or denies Permission")]
        public void ThenICanAuthorizesOrDeniesPermission()
        {
            Assert.IsTrue(PermisosPendientes);
        }
        
        [Then(@"A textbox is displayed on the screen")]
        public void ThenATextboxIsDisplayedOnTheScreen()
        {
            mn.display = true;
            resultIngresoPermiso = mn.mostrarEnDisplay();
        }
        
        [Then(@"I click finish to enter application for permission")]
        public void ThenIClickFinishToEnterApplicationForPermission()
        {
            mn.ingreso = true;
            resultIngresoPermiso = mn.ingresoCorrecto();
        }
        
        [Then(@"I must wait for the director to authorize or deny permission")]
        public void ThenIMustWaitForTheDirectorToAuthorizeOrDenyPermission()
        {
            Assert.IsTrue(resultIngresoPermiso);
        }
    }
}
