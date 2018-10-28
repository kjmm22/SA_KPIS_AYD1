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

            CRUDRevisionExamenCoord rd = new CRUDRevisionExamenCoord();
            rd.setTipo("coordinador");

            Assert.IsTrue(rd.tipoValido());
        }

        [TestMethod]
        public void SoloDirector()
        {

            CRUDRevisionExamenAdmin rd = new CRUDRevisionExamenAdmin();
            rd.setTipo("1");
            Assert.IsTrue(rd.tipoValido());

            CRUDRevisionExamenCoord rd = new CRUDRevisionExamenCoord();
            rd.setTipo("director");
            Assert.IsFalse(rd.tipoValido());

        }

        [TestMethod]
        public void SoloMaestro()
        {

            CRUDRevisionExamenAdmin rd = new CRUDRevisionExamenAdmin();
            rd.setTipo("3");

            CRUDRevisionExamenCoord rd = new CRUDRevisionExamenCoord();
            rd.setTipo("profesor");

            Assert.IsFalse(rd.tipoValido());
        }

        [TestMethod]
        public void comentario()
        {

            CRUDRevisionExamenAdmin rd = new CRUDRevisionExamenAdmin();

            CRUDRevisionExamenCoord rd = new CRUDRevisionExamenCoord();

            Assert.IsTrue(rd.agregarComentario("Test")) ;
        }

    }
}
