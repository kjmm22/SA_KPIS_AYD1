using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using CRUDAEstudiante.Models;

namespace CRUDAEstudiante.Pages.Estudiantes
{
    public class IndexModel : PageModel
    {
        private readonly CRUDAEstudiante.Models.EstudianteContext _context;

        public IndexModel(CRUDAEstudiante.Models.EstudianteContext context)
        {
            _context = context;
        }

        public IList<Estudiante> Estudiante { get;set; }

        public async Task OnGetAsync()
        {
            Estudiante = await _context.Estudiantes.ToListAsync();
        }
    }
}
