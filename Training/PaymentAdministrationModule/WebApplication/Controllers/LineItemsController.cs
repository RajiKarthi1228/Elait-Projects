using Microsoft.AspNetCore.Mvc;
using WebApplication.Data;
using WebApplication.DTOs;
using Microsoft.EntityFrameworkCore;

namespace WebApplication
{
    [Route("api/[controller]")]
    [ApiController]
    public class LineItemsController : ControllerBase
    {
        private readonly MyDbContext _context;

        public LineItemsController(MyDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<LineItem>>> GetLineItems()
        {
            return await _context.LineItems.ToListAsync();
        }
    }
}
