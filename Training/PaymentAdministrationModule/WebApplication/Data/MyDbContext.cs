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
            modelBuilder.Entity<Payment>(entity =>
            {
                entity.HasKey(p => p.Id);
                //entity.Property(p => p.Id).ValueGeneratedOnAdd();
                entity.Property(p => p.PayeeName).HasMaxLength(255);
                entity.Property(p => p.PaymentPortalPaymentReference).HasMaxLength(255);
                entity.Property(p => p.PaymentType);
                entity.Property(p => p.PaymentStatus);
                entity.Property(p => p.TotalAmount).HasColumnType("decimal(18, 2)");
                entity.Property(p => p.PaidAmount).HasColumnType("decimal(18, 2)");
                entity.Property(p => p.RemainingAmount).HasColumnType("decimal(18, 2)");
                entity.Property(p => p.SourceAppEntityCode).HasMaxLength(255);
                entity.Property(p => p.SourceAppLineItemRef).HasMaxLength(255);
                entity.Property(p => p.InvoiceCurrency);
                entity.Property(p => p.PaymentCurrency);
                entity.Property(p => p.PotentialFunding).HasMaxLength(255);
                entity.Property(p => p.SourceAppPaymentRef).HasMaxLength(255);
                entity.Property(p => p.SourceAppPaymentDate);
                entity.Property(p => p.CreditAccountNumber).HasMaxLength(255);
                entity.Property(p => p.CreditSortCode).HasMaxLength(255);
                entity.Property(p => p.CreditSWIFTCode).HasMaxLength(255);
                entity.Property(p => p.CreditIBAN).HasMaxLength(255);
                entity.Property(p => p.CreditCountry).HasMaxLength(255);
                entity.Property(p => p.CreditRoutingCode).HasMaxLength(255);
                entity.Property(p => p.DebitAccountNumber).HasMaxLength(255);
                entity.Property(p => p.DebitSortCode).HasMaxLength(255);
                entity.Property(p => p.DebitSWIFTCode).HasMaxLength(255);
                entity.Property(p => p.DebitIBAN).HasMaxLength(255);
                entity.Property(p => p.DebitRoutingCode).HasMaxLength(255);
                entity.Property(p => p.SourceAppBrokerage).HasMaxLength(255);
                entity.Property(p => p.RequestedBy);
                entity.Property(p => p.PaymentMethod);
                entity.Property(p => p.CreatedAt);
                entity.Property(p => p.ModifiedAt);
                entity.Property(p => p.CreatedBy).HasMaxLength(255);
                entity.Property(p => p.ModifiedBy).HasMaxLength(255);
                entity.HasMany(p => p.LineItems)
                    .WithOne(li => li.Payment)
                    .HasForeignKey(li => li.PaymentId)
                    .OnDelete(DeleteBehavior.Cascade);
            });
            modelBuilder.Entity<LineItem>(entity =>
            {
                entity.HasKey(li => li.Id);
                //entity.Property(li => li.Id).ValueGeneratedOnAdd();
                entity.Property(li => li.PaymentId);
                entity.Property(li => li.PayeeName).HasMaxLength(255);
                entity.Property(li => li.PaymentPortalPaymentReference).HasMaxLength(255);
                entity.Property(li => li.PaymentType);
                entity.Property(li => li.PaymentStatus);
                entity.Property(li => li.PaymentAmount).HasColumnType("decimal(18, 2)");
                entity.Property(li => li.SourceAppEntityCode).HasMaxLength(255);
                entity.Property(li => li.SourceAppLineItemRef).HasMaxLength(255);
                entity.Property(li => li.InvoiceCurrency);
                entity.Property(li => li.PaymentCurrency);
                entity.Property(li => li.PotentialFunding).HasMaxLength(255);
                entity.Property(li => li.SourceAppPaymentRef).HasMaxLength(255);
                entity.Property(li => li.SourceAppPaymentDate);
                entity.Property(li => li.CreditAccountNumber).HasMaxLength(255);
                entity.Property(li => li.CreditSortCode).HasMaxLength(255);
                entity.Property(li => li.CreditSWIFTCode).HasMaxLength(255);
                entity.Property(li => li.CreditIBAN).HasMaxLength(255);
                entity.Property(li => li.CreditCountry).HasMaxLength(255);
                entity.Property(li => li.CreditRoutingCode).HasMaxLength(255);
                entity.Property(li => li.DebitAccountNumber).HasMaxLength(255);
                entity.Property(li => li.DebitSortCode).HasMaxLength(255);
                entity.Property(li => li.DebitSWIFTCode).HasMaxLength(255);
                entity.Property(li => li.DebitIBAN).HasMaxLength(255);
                entity.Property(li => li.DebitRoutingCode).HasMaxLength(255);
                entity.Property(li => li.SourceAppBrokerage).HasMaxLength(255);
                entity.Property(li => li.RequestedBy);
                entity.Property(li => li.PaymentMethod);
                entity.Property(li => li.CreatedAt);
                entity.Property(li => li.ModifiedAt);
                entity.Property(li => li.CreatedBy).HasMaxLength(255);
                entity.Property(li => li.ModifiedBy).HasMaxLength(255);
                entity.HasOne(li => li.Payment)
                    .WithMany(p => p.LineItems)
                    .HasForeignKey(li => li.PaymentId)
                    .OnDelete(DeleteBehavior.Restrict);
            });
        }
    }
}