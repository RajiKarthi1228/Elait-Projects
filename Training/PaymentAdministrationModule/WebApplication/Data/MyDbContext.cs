using Microsoft.EntityFrameworkCore;
using WebApplication.DTOs;

namespace WebApplication.Data
{
    public class MyDbContext : DbContext
    {
        public MyDbContext(DbContextOptions<MyDbContext> options)
            : base(options)
        {
        }

        public DbSet<Payment> Payments { get; set; }
        public DbSet<LineItem> LineItems { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<LineItem>()
                .HasOne(p => p.Payment)
                .WithMany(l => l.LineItems)
                .HasForeignKey(p => p.PaymentId);
        }
    }
}