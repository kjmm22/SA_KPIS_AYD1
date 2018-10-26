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
            CRUDRevisionExamenCoord rd = new CRUDRevisionExamenCoord();
            rd.setTipo("coordinador");
            Assert.IsTrue(rd.tipoValido());
        }

        [TestMethod]
        public void SoloDirector()
        {
            CRUDRevisionExamenCoord rd = new CRUDRevisionExamenCoord();
            rd.setTipo("director");
            Assert.IsFalse(rd.tipoValido());
        }

        [TestMethod]
        public void SoloMaestro()
        {
            CRUDRevisionExamenCoord rd = new CRUDRevisionExamenCoord();
            rd.setTipo("profesor");
            Assert.IsFalse(rd.tipoValido());
        }

        [TestMethod]
        public void comentario()
        {
            CRUDRevisionExamenCoord rd = new CRUDRevisionExamenCoord();
            Assert.IsTrue(rd.agregarComentario("Test")) ;
        }

    }
}
