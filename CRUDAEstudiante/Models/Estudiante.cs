using System;
namespace CRUDAEstudiante.Models
{
    public class Estudiante
    {
        public int ID { get; set; }
        public int Carne { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Direccion { get; set; }
    }
}
