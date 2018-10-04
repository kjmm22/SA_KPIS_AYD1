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
            CRUDRevisionExamen rd = new CRUDRevisionExamen();
            rd.setTipo(2);
            Assert.IsTrue(rd.tipoValido());
        }

        [TestMethod]
        public void SoloDirector()
        {
            CRUDRevisionExamen rd = new CRUDRevisionExamen();
            rd.setTipo(1);
            Assert.IsTrue(rd.tipoValido());
        }

        [TestMethod]
        public void SoloMaestro()
        {
            CRUDRevisionExamen rd = new CRUDRevisionExamen();
            rd.setTipo(3);
            Assert.IsFalse(rd.tipoValido());
        }

        [TestMethod]
        public void comentario()
        {
            CRUDRevisionExamen rd = new CRUDRevisionExamen();
            Assert.IsTrue(rd.agregarComentario("Test")) ;
        }

    }
}
