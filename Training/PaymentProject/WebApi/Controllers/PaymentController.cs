using Microsoft.AspNetCore.Mvc;
using WebApi.DTOs;

namespace WebApi.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class PaymentController : ControllerBase
    {
        public string GenerateID()
        {
            return Guid.NewGuid().ToString("N");
        }
        [HttpPost("process-payment")]
        public IActionResult ProcessPayment([FromBody] PaymentRequestDto paymentRequest)
        {
            if (paymentRequest == null)
            {
                return BadRequest("Invalid payment request.");
            }
            var transactionId = GenerateID();
            var paymentStatus = new
            {
                TransactionId = transactionId,
                Status = "Success"
            };

            return Ok(paymentStatus);
        }
        [HttpGet("payment-details/{transactionId}")]
        public IActionResult GetPaymentDetails(string transactionId)
        {
            if (string.IsNullOrEmpty(transactionId))
            {
                return BadRequest("Invalid transaction ID.");
            }
            var paymentDetails = new PaymentDetailsDto
            {
                TransactionId = transactionId,
                Status = "Success",
                Message="Payment processed successfully.",
                Id = 1,
                PayeeName = "Ria",
                PaymentPortalPaymentReference = "12345abcde",	
                PaymentType	= 1,
                PaymentStatus =	1,
                TotalAmount	= 136581135,
                PaidAmount	= 13124345.84,
                RemainingAmount =	123456789.1,
                SourceAppEntityCode	= "plmwsx89217",
                SourceAppLineItemRef =	"poiuyt741",
                InvoiceCurrency	= 1,
                PaymentCurrency	= 1,
                PotentialFunding =	"Personal funds",
                SourceAppPaymentRef	= "ABXTIHYTUT",
                SourceAppPaymentDate =	DateTime.UtcNow,
                CreditAccountNumber	= "987654321234567",
                CreditSortCode	= "12-34-56",
                CreditSWIFTCode	= "AAAA-BB-CC-123",
                CreditIBAN	= "RV#1234",
                CreditCountry =	"Iraq",
                RoutingCode	= "121000358",
                DebitAccountNumber = "987654321234561",
                DebitSortCode	= "12-34-61",
                DebitSWIFTCode	= "QAZWS-PL-RF-001",
                DebitIBAN	= "CFECTUUYI@12",
                SourceAppBrokerage = "ret_hgg",
                RequestedBy	= 1,
                PaymentMethod =	3,
                CreatedAt = DateTime.UtcNow,
                ModifiedAt = DateTime.UtcNow
            };
            return Ok(paymentDetails);
        }
    }
}
