namespace WebApplication.DTOs
{
    public class LineItem
    {
        public int Id { get; set; }
        public int PaymentId { get; set; }
        public string? PayeeName { get; set; }
        public string? PaymentPortalPaymentReference { get; set; }
        public int PaymentType { get; set; }	
        public int PaymentStatus	{ get; set; }
        public double PaymentAmount	{ get; set; }
        public string? SourceAppEntityCode	{ get; set; }
        public string? SourceAppLineItemRef	{ get; set; }
        public int InvoiceCurrency	{ get; set; }
        public int PaymentCurrency	{ get; set; }
        public string? PotentialFunding	{ get; set; }
        public string? SourceAppPaymentRef	{ get; set; }
        public DateTime SourceAppPaymentDate	{ get; set; }
        public string? CreditAccountNumber	{ get; set; }
        public string? CreditSortCode	{ get; set; }
        public string? CreditSWIFTCode	{ get; set; }
        public string? CreditIBAN	{ get; set; }
        public string? CreditCountry	{ get; set; }
        public string? CreditRoutingCode	{ get; set; }
        public string? DebitAccountNumber	{ get; set; }
        public string? DebitSortCode	{ get; set; }
        public string? DebitSWIFTCode	{ get; set; }
        public string? DebitIBAN	{ get; set; }
        public string? DebitRoutingCode	{ get; set; }
        public string? SourceAppBrokerage { get; set; }	
        public int RequestedBy	{ get; set; }
        public int PaymentMethod { get; set; }	
        public DateTime CreatedAt { get; set; }	
        public DateTime ModifiedAt { get; set; }
        public Payment? Payment { get; set; }
    }
}