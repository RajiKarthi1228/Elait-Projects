﻿using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApplication.Data;
using WebApplication.DTOs;

namespace WebApplication.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PaymentsController : ControllerBase
    {
        private readonly MyDbContext _context;

        public PaymentsController(MyDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult> GetAllPayments()
        {
            var payments = await _context.Payments
                .Include(p => p.LineItems)
                .ToListAsync();
            var paymentDTOs = payments.Select(p => new Payment
            {
                Id = p.Id,
                PayeeName = p.PayeeName,
                PaymentPortalPaymentReference = p.PaymentPortalPaymentReference,
                PaymentType = p.PaymentType,
                PaymentStatus = p.PaymentStatus,
                TotalAmount = p.TotalAmount,
                PaidAmount = p.PaidAmount,
                RemainingAmount = p.RemainingAmount,
                SourceAppEntityCode = p.SourceAppEntityCode,
                SourceAppLineItemRef=p.SourceAppLineItemRef,   
                InvoiceCurrency=p.InvoiceCurrency,
                PaymentCurrency=p.PaymentCurrency,
                PotentialFunding=p.PotentialFunding,
                SourceAppPaymentRef=p.SourceAppPaymentRef,
                SourceAppPaymentDate=p.SourceAppPaymentDate,
                CreditAccountNumber=p.CreditAccountNumber,
                CreditSortCode=p.CreditSortCode,
                CreditSWIFTCode=p.CreditSWIFTCode,
                CreditIBAN=p.CreditIBAN,
                CreditCountry=p.CreditCountry,
                CreditRoutingCode=p.CreditRoutingCode,
                DebitAccountNumber=p.DebitAccountNumber,
                DebitSortCode=p.DebitSortCode,
                DebitSWIFTCode=p.DebitSWIFTCode,
                DebitIBAN=p.DebitIBAN,
                DebitRoutingCode=p.DebitRoutingCode,
                SourceAppBrokerage=p.SourceAppBrokerage,
                RequestedBy=p.RequestedBy,
                PaymentMethod=p.PaymentMethod,
                CreatedAt=p.CreatedAt,
                ModifiedAt=p.ModifiedAt,
                CreatedBy=p.CreatedBy,
                ModifiedBy=p.ModifiedBy,
                LineItems = p.LineItems.Select(li => new LineItem
                {
                    Id = li.Id,
                    PaymentId = li.PaymentId,
                    PayeeName = li.PayeeName,
                    PaymentPortalPaymentReference = li.PaymentPortalPaymentReference,
                    PaymentType = li.PaymentType,
                    PaymentStatus = li.PaymentStatus,
                    PaymentAmount = li.PaymentAmount,
                    SourceAppEntityCode = li.SourceAppEntityCode,
                    SourceAppLineItemRef=li.SourceAppLineItemRef,   
                    InvoiceCurrency=li.InvoiceCurrency,
                    PaymentCurrency=li.PaymentCurrency,
                    PotentialFunding=li.PotentialFunding,
                    SourceAppPaymentRef=li.SourceAppPaymentRef,
                    SourceAppPaymentDate=li.SourceAppPaymentDate,
                    CreditAccountNumber=li.CreditAccountNumber,
                    CreditSortCode=li.CreditSortCode,
                    CreditSWIFTCode=li.CreditSWIFTCode,
                    CreditIBAN=li.CreditIBAN,
                    CreditCountry=li.CreditCountry,
                    CreditRoutingCode=li.CreditRoutingCode,
                    DebitAccountNumber=li.DebitAccountNumber,
                    DebitSortCode=li.DebitSortCode,
                    DebitSWIFTCode=li.DebitSWIFTCode,
                    DebitIBAN=li.DebitIBAN,
                    DebitRoutingCode=li.DebitRoutingCode,
                    SourceAppBrokerage=li.SourceAppBrokerage,
                    RequestedBy=li.RequestedBy,
                    PaymentMethod=li.PaymentMethod,
                    CreatedAt=li.CreatedAt,
                    ModifiedAt=li.ModifiedAt,
                    CreatedBy=li.CreatedBy,
                    ModifiedBy=li.ModifiedBy,
                }).ToList()
            }).ToList();

            return Ok(paymentDTOs);
        }

        [HttpPost("paged")]
        public async Task<ActionResult> GetPaymentsByPage([FromBody] RequestParams request)
        {
            var startLimit = request.StartLimit;
            var endLimit = request.EndLimit;
            var itemsPerPage = request.ItemsPerPage;
            var paymentsQuery = _context.Payments
                .Include(p => p.LineItems)
                .Where(p => p.Id >= startLimit && p.Id <= endLimit)
                .OrderBy(p => p.Id)
                .Skip(itemsPerPage * (startLimit - 1))
                .Take(itemsPerPage);

            var payments = await paymentsQuery.ToListAsync();

            // Projecting the entities to DTOs to select specific fields
            var paymentDTOs = payments.Select(p => new Payment
            {
                Id = p.Id,
                PayeeName = p.PayeeName,
                PaymentPortalPaymentReference = p.PaymentPortalPaymentReference,
                PaymentType = p.PaymentType,
                PaymentStatus = p.PaymentStatus,
                TotalAmount = p.TotalAmount,
                PaidAmount = p.PaidAmount,
                RemainingAmount = p.RemainingAmount,
                SourceAppEntityCode = p.SourceAppEntityCode,
                SourceAppLineItemRef=p.SourceAppLineItemRef,   
                InvoiceCurrency=p.InvoiceCurrency,
                PaymentCurrency=p.PaymentCurrency,
                PotentialFunding=p.PotentialFunding,
                SourceAppPaymentRef=p.SourceAppPaymentRef,
                SourceAppPaymentDate=p.SourceAppPaymentDate,
                CreditAccountNumber=p.CreditAccountNumber,
                CreditSortCode=p.CreditSortCode,
                CreditSWIFTCode=p.CreditSWIFTCode,
                CreditIBAN=p.CreditIBAN,
                CreditCountry=p.CreditCountry,
                CreditRoutingCode=p.CreditRoutingCode,
                DebitAccountNumber=p.DebitAccountNumber,
                DebitSortCode=p.DebitSortCode,
                DebitSWIFTCode=p.DebitSWIFTCode,
                DebitIBAN=p.DebitIBAN,
                DebitRoutingCode=p.DebitRoutingCode,
                SourceAppBrokerage=p.SourceAppBrokerage,
                RequestedBy=p.RequestedBy,
                PaymentMethod=p.PaymentMethod,
                CreatedAt=p.CreatedAt,
                ModifiedAt=p.ModifiedAt,
                CreatedBy=p.CreatedBy,
                ModifiedBy=p.ModifiedBy,
                LineItems = p.LineItems.Select(li => new LineItem
                {
                    Id = li.Id,
                    PaymentId = li.PaymentId,
                    PayeeName = li.PayeeName,
                    PaymentPortalPaymentReference = li.PaymentPortalPaymentReference,
                    PaymentType = li.PaymentType,
                    PaymentStatus = li.PaymentStatus,
                    PaymentAmount = li.PaymentAmount,
                    SourceAppEntityCode = li.SourceAppEntityCode,
                    SourceAppLineItemRef=li.SourceAppLineItemRef,   
                    InvoiceCurrency=li.InvoiceCurrency,
                    PaymentCurrency=li.PaymentCurrency,
                    PotentialFunding=li.PotentialFunding,
                    SourceAppPaymentRef=li.SourceAppPaymentRef,
                    SourceAppPaymentDate=li.SourceAppPaymentDate,
                    CreditAccountNumber=li.CreditAccountNumber,
                    CreditSortCode=li.CreditSortCode,
                    CreditSWIFTCode=li.CreditSWIFTCode,
                    CreditIBAN=li.CreditIBAN,
                    CreditCountry=li.CreditCountry,
                    CreditRoutingCode=li.CreditRoutingCode,
                    DebitAccountNumber=li.DebitAccountNumber,
                    DebitSortCode=li.DebitSortCode,
                    DebitSWIFTCode=li.DebitSWIFTCode,
                    DebitIBAN=li.DebitIBAN,
                    DebitRoutingCode=li.DebitRoutingCode,
                    SourceAppBrokerage=li.SourceAppBrokerage,
                    RequestedBy=li.RequestedBy,
                    PaymentMethod=li.PaymentMethod,
                    CreatedAt=li.CreatedAt,
                    ModifiedAt=li.ModifiedAt,
                    CreatedBy=li.CreatedBy,
                    ModifiedBy=li.ModifiedBy,
                }).ToList()
            }).ToList();

            return Ok(paymentDTOs);
        }
    }
}






// using Microsoft.AspNetCore.Mvc;
// using Microsoft.EntityFrameworkCore;
// using System.Linq;
// using System.Threading.Tasks;
// using WebApplication.Data;
// using WebApplication.DTOs;

// namespace WebApplication.Controllers
// {
//     [Route("api/[controller]")]
//     [ApiController]
//     public class PaymentsController : ControllerBase
//     {
//         private readonly MyDbContext _context;

//         public PaymentsController(MyDbContext context)
//         {
//             _context = context;
//         }

//         [HttpGet]
//         public async Task<ActionResult> GetAllPayments()
//         {
//             var payments = await _context.Payments
//                 .Include(p => p.LineItems)
//                 .ToListAsync();

//             return Ok(payments);
//         }

//         [HttpPost("paged")]
//         public async Task<ActionResult> GetPaymentsByPage([FromBody] RequestParams request)
//         {
//             var startLimit = request.StartLimit;
//             var endLimit = request.EndLimit;
//             var itemsPerPage = request.ItemsPerPage;

//             var paymentsQuery = _context.Payments
//                 .Include(p => p.LineItems)
//                 .Where(p => p.Id >= startLimit && p.Id <= endLimit)
//                 .OrderBy(p => p.Id)
//                 .Skip(itemsPerPage * (startLimit - 1))
//                 .Take(itemsPerPage);

//             var payments = await paymentsQuery.ToListAsync();

//             return Ok(payments);
//         }
//     }
// }

