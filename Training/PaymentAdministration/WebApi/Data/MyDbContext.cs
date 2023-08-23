using Microsoft.EntityFrameworkCore;
using WebApi.DTOs;

namespace WebApi.Data
{
    public class MyDbContext : DbContext
    {
        public MyDbContext(DbContextOptions<MyDbContext> options)
            : base(options)
        {
        }
        public DbSet<Payments> Payments { get; set; }
        public DbSet<LineItems> LineItems { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            
        }
    }
}