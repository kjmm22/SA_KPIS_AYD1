using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Aplicacion.Tests
{
    [TestClass]
    public class UTRevisionExamen
    {
        [TestMethod]
        public void SoloCoordinador()
        {
            CRUDRevisionExamenAdmin rd = new CRUDRevisionExamenAdmin();
            rd.setTipo("2");
            Assert.IsTrue(rd.tipoValido());
        }

        [TestMethod]
        public void SoloDirector()
        {
            CRUDRevisionExamenAdmin rd = new CRUDRevisionExamenAdmin();
            rd.setTipo("1");
            Assert.IsTrue(rd.tipoValido());
        }

        [TestMethod]
        public void SoloMaestro()
        {
            CRUDRevisionExamenAdmin rd = new CRUDRevisionExamenAdmin();
            rd.setTipo("3");
            Assert.IsFalse(rd.tipoValido());
        }

        [TestMethod]
        public void comentario()
        {
            CRUDRevisionExamenAdmin rd = new CRUDRevisionExamenAdmin();
            Assert.IsTrue(rd.agregarComentario("Test")) ;
        }

    }
}
