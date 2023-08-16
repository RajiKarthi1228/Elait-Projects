namespace WebApi.DTOs
{
    public class PaymentRequestDto
    {
        public string? Token { get; set; }
        public string? TransactionId { get; set; }
        public string? Status { get; set; }
        public string? Message { get; set; }
        public int Id { get; set; }
        public string? PayeeName { get; set; }
        public string? PaymentPortalPaymentReference { get; set; }
        public int PaymentType { get; set; }	
        public int PaymentStatus	{ get; set; }
        public double TotalAmount	{ get; set; }
        public double PaidAmount	{ get; set; }
        public double RemainingAmount	{ get; set; }
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
        public string? RoutingCode	{ get; set; }
        public string? DebitAccountNumber	{ get; set; }
        public string? DebitSortCode	{ get; set; }
        public string? DebitSWIFTCode	{ get; set; }
        public string? DebitIBAN	{ get; set; }
        public string? SourceAppBrokerage { get; set; }	
        public int RequestedBy	{ get; set; }
        public int PaymentMethod { get; set; }	
        public DateTime CreatedAt { get; set; }	
        public DateTime ModifiedAt { get; set; }
    }
}