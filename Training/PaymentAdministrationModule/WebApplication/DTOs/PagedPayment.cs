namespace WebApplication;
public class PagedPayment
{
    public int PaymentId { get; set; }
    public string? PayeeName { get; set; }
    public string? PaymentPortalPaymentReference { get; set; }
    public string? SourceAppPaymentDate { get; set; }
    public string? CreditAccountNumber { get; set; }
    public string? DebitAccountNumber { get; set; }
}

