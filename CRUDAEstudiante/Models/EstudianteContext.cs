using System;
using Microsoft.EntityFrameworkCore;

namespace CRUDAEstudiante.Models
{
    public class EstudianteContext : DbContext
    {
        public EstudianteContext(DbContextOptions<EstudianteContext> options)
                : base(options)
        {
        }

        public DbSet<Estudiante> Estudiantes { get; set; }
    }
}