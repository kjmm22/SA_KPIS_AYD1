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
    public class DeleteModel : PageModel
    {
        private readonly CRUDAEstudiante.Models.EstudianteContext _context;

        public DeleteModel(CRUDAEstudiante.Models.EstudianteContext context)
        {
            _context = context;
        }

        [BindProperty]
        public Estudiante Estudiante { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Estudiante = await _context.Estudiantes.FirstOrDefaultAsync(m => m.ID == id);

            if (Estudiante == null)
            {
                return NotFound();
            }
            return Page();
        }

        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Estudiante = await _context.Estudiantes.FindAsync(id);

            if (Estudiante != null)
            {
                _context.Estudiantes.Remove(Estudiante);
                await _context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}
