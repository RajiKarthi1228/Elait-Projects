using Microsoft.AspNetCore.Mvc;
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
        public async Task<ActionResult<object>> GetPayments(int offset, int startLimit, int itemsPerPage)
        {
            var paymentsQuery = _context.Payments
                .Include(p => p.LineItems)
                .Skip(offset)
                .Take(itemsPerPage)
                .OrderBy(p => p.Id);

            var totalPayments = await _context.Payments.CountAsync();
            var totalPages = (int)System.Math.Ceiling((double)totalPayments / itemsPerPage);

            var payments = await paymentsQuery.ToListAsync();

            var response = new
            {
                TotalPayments = totalPayments,
                TotalPages = totalPages,
                CurrentPage = (offset / itemsPerPage) + 1,
                Payments = payments
            };
            return Ok(response);
        }

        [HttpPost("required_payment_details")]
        public async Task<ActionResult<IEnumerable<Payment>>> GetPaymentsPaged(RequestParams requestParams)
        {
            var payments = await _context.Payments
                .Include(p => p.LineItems) // Include related LineItems
                .Skip(requestParams.StartLimit)
                .Take(requestParams.EndLimit - requestParams.StartLimit + 1)
                .ToListAsync();
            return payments;
        }
    }
}


/*

INSERT INTO dbo.LineItems (Id, PaymentId, PayeeName, PaymentPortalPaymentReference, PaymentType, PaymentStatus, PaymentAmount, SourceAppEntityCode, SourceAppLineItemRef, InvoiceCurrency, PaymentCurrency, PotentialFunding, SourceAppPaymentRef, SourceAppPaymentDate, CreditAccountNumber, CreditSortCode, CreditSWIFTCode, CreditIBAN, CreditCountry, CreditRoutingCode, DebitAccountNumber, DebitSortCode, DebitSWIFTCode, DebitIBAN, RoutingCode, SourceAppBrokerage, SourceAppPaymentRef, RequestedBy, PaymentMethod, CreatedAt, ModifiedAt, CreatedBy, ModifiedBy)
VALUES
( 1, 'Ria', '12345abcde', 1, 1, 123456.13, 'plmwsx89217', 'poiuyt741', 1, 1, 'Personal funds', 'ABXTIHYTUT', '2022-05-27 16:00', '987654321234567', '12-34-56', 'AAAA-BB-CC-123', 'RV#1234', 'Iraq', '121000358', '987654321234561', '12-34-61', 'QAZWS-PL-RF-001', 'CFECTUUYI@12', '260025742', 'ret_hgg', 'ABXTIHYTUT', 1, 1, '2023-08-03 12:30', '2023-08-10 15:00',1,2),
( 2, 'Priya', '9876awesdv', 3, 1, 234567.15, 'edcrfv780151', 'kjhgfdsg852', 2, 2, 'Loans and Credit', 'TIORYNGFN', '2023-01-08 03:30', '987654321234568', '12-34-57', 'AAAA-BB-CC-124', 'PL567547', 'India', '121000248', '932544654777765', '12-34-62', 'QAZWS-PL-RF-002', 'VCHUYHNT', '210010883', 'ucinyytr_xhrnuet', 'TIORYNGFN', 2, 2, '2021-09-15 09:45', '2021-09-21 09:45',2,3),
( 3, 'Sana', '3243657fcbgv', 2, 4, 123457.25, 'ijbygv123654', 'nmbbvxc963', 4, 4, 'Grants', 'CHNTHRVC', '2022-11-18 11:45', '987654321234569', '12-34-58', 'AAAA-BB-CC-125', 'VNDJGHR%1', 'London', '210000210', '935984689765635', '12-34-63', 'QAZWS-PL-RF-003', 'VNHTVHT@^7', '312013604', 'zx4e324u_xr', 'CHNTHRVC', 3, 3, '2022-05-20 16:00', '2022-05-27 16:00',3,2),
( 4, 'Latha', 'dfyrygsdfewr45654', 4, 5, 765432.24, 'edcsxw75395', 'xvvnbnb357', 5, 5, 'Personal funds', 'ZXOFQEUQ', '2021-12-25 14:00', '987654321234561', '12-34-59', 'AAAA-BB-CC-126', 'CFECTUUYI@12', 'Saudi', '210000891', '987654321234569', '12-34-56', 'QAZWS-PL-RF-004', 'RV#1234', '242354365', 'fdngvicg_fer', 'ZXOFQEUQ', 4, 2, '2023-01-01 00:00', '2023-01-08 03:30',6,4),
( 6, 'Ram', 'gfdg43asemjo90', 1, 8, 543243.87, 'dgcfgfhv78965', 'asdrfdhg159', 3, 3, 'Personal funds', 'QAZWSXEDC', '2023-09-05 09:00', '987654321234562', '12-34-60', 'AAAA-BB-CC-127', 'VCHUYHNT', 'Diu', '260025742', '987654321234354', '12-34-60', 'QAZWS-PL-RF-005', 'PL567547', '121000358', 'ediwret_opeirok', 'QAZWSXEDC', 5, 2, '2022-11-11 08:15', '2022-11-18 11:45',4,6),
( 5, 'Kavin', 'ew245csaqwe2', 5, 2, 235465.87, 'gvhytjbj369vch', 'uyrytrew147', 3, 3, 'Loans and Credit', 'PLMOKNJIUH', '2022-07-10 22:45', '987654321234354', '12-34-61', 'AAAA-BB-CC-128', 'VNHTVHT@^7', 'Mexcico', '210010883', '932854967598739', '12-34-65', 'QAZWS-PL-RF-006', 'VNDJGHR%1', '121000248', 'zxer_xiunteye', 'PLMOKNJIUH', 6, 1, '2023-06-30 18:20', '2023-07-07 21:10',2,9),
( 7, 'Karan', '467sddsa', 1, 3, 124354.9, 'qasxdgfrg7854', 'vcbvbnn354', 6, 6, 'Personal funds', 'TGFBSIRMSKC', '2023-08-10 15:00', '932544654777765', '12-34-62', 'AAAA-BB-CC-129', 'CHYUPZW', 'Portal', '312013604', '987654321234562', '12-34-57', 'QAZWS-PL-RF-007', 'CHYUPZW', '210000210', 'umngc_xger', 'TGFBSIRMSKC', 7, 3, '2022-04-05 10:10', '2022-04-12 13:20',4,5),
( 8, 'Sita', '5215daiwsqmdas', 5, 3, 2145339.43, 'gvthtcrytu258', 'gcdgfhh965', 7, 7, 'Loans and Credit', 'WQHDNFXTRE', '2021-09-21 09:45', '932854967598739', '12-34-63', 'AAAA-BB-CC-130', 'QFKJHME', 'Kuwait', '514055155', '987654321234568', '12-34-58', 'QAZWS-PL-RF-008', 'QFKJHME', '210000891', 'neyu_fhtn', 'WQHDNFXTRE', 8, 3, '2021-12-25 14:00', '2021-12-30 16:30',7,6),
( 9, 'Sam', 'qazwsxedcrfv', 3, 3, 4345657.42, 'vytjuykbrtybvh@', 'zgfdytiuyt236', 8, 8, 'Venture Capital', 'XTNETHRVQSD', '2023-06-30 18:20', '935984689765635', '12-34-64', 'AAAA-BB-CC-131', 'MRHBTCGBC', 'Dubai', '430000966', '923546687657575', '12-34-59', 'QAZWS-PL-RF-009', 'MRHBTCGBC', '430000966', 'freytru', 'XTNETHRVQSD', 9, 1, '2023-09-05 09:00', '2023-09-12 11:15',8,2),
( 6, 'Nivin', 'tgbyhnujmikl', 3, 9, 5465776.82, 'xncruthrjcxceitx', 'ietjrejtren24', 9, 9, 'Grants', 'IUNYIUYKGTRQ', '2022-04-05 10:10', '923546687657575', '12-34-65', 'AAAA-BB-CC-132', 'XHECNBUTU', 'India', '123000220', '987654321234567', '12-34-64', 'QAZWS-PL-RF-010', 'XHECNBUTU', '123000220', 'piopiuiji', 'IUNYIUYKGTRQ', 10, 2, '2022-07-10 22:45', '2022-07-17 01:00',7,5);

INSERT INTO dbo.Payments (Id, PayeeName, PaymentPortalPaymentReference, PaymentType, PaymentStatus, TotalAmount, PaidAmount, RemainingAmount, SourceAppEntityCode, SourceAppLineItemRef, InvoiceCurrency, PaymentCurrency, PotentialFunding, SourceAppPaymentRef, SourceAppPaymentDate, CreditAccountNumber, CreditSortCode, CreditSWIFTCode, CreditIBAN, CreditCountry, RoutingCode, DebitAccountNumber, DebitSortCode, DebitSWIFTCode, DebitIBAN, RoutingCode, SourceAppBrokerage, SourceAppPaymentRef, RequestedBy, PaymentMethod, CreatedAt, ModifiedAt,CreatedBy, ModifiedBy)
VALUES
( 'Ria', '12345abcde', 1, 1, 136581135, 13124345.84, 123456789.1, 'plmwsx89217', 'poiuyt741', 1, 1, 'Personal funds', 'ABXTIHYTUT', '2022-05-27 16:00', '987654321234567', '12-34-56', 'AAAA-BB-CC-123', 'RV#1234', 'Iraq', '121000358', '987654321234561', '12-34-61', 'QAZWS-PL-RF-001', 'CFECTUUYI@12', '260025742', 'ret_hgg', 'ABXTIHYTUT', 1, 3, '2023-08-03 12:30', '2023-08-10 15:00',7,5),
( 'Priya', '9876awesdv', 3, 1, 528533073.4, 528525418.8, 7654.5345, 'edcrfv780151', 'kjhgfdsg852', 2, 2, 'Loans and Credit', 'TIORYNGFN', '2023-01-08 03:30', '987654321234568', '12-34-57', 'AAAA-BB-CC-124', 'PL567547', 'India', '121000248', '932544654777765', '12-34-62', 'QAZWS-PL-RF-002', 'VCHUYHNT', '210010883', 'ucinyytr_xhrnuet', 'TIORYNGFN', 2, 2, '2021-09-15 09:45', '2021-09-21 09:45',4,6),
( 'Sana', '3243657fcbgv', 2, 4, 855329.154, 418741.814, 436587.34, 'ijbygv123654', 'nmbbvxc963', 4, 4, 'Grants', 'CHNTHRVC', '2022-11-18 11:45', '987654321234569', '12-34-58', 'AAAA-BB-CC-125', 'VNDJGHR%1', 'London', '210000210', '935984689765635', '12-34-63', 'QAZWS-PL-RF-003', 'VNHTVHT@^7', '312013604', 'zx4e324u_xr', 'CHNTHRVC', 3, 1, '2022-05-20 16:00', '2022-05-27 16:00',2,9),
( 'Latha', 'dfyrygsdfewr45654', 4, 5, 46019720.92, 2487184.265, 43532536.66, 'edcsxw75395', 'xvvnbnb357', 5, 5, 'Personal funds', 'ZXOFQEUQ', '2021-12-25 14:00', '987654321234561', '12-34-59', 'AAAA-BB-CC-126', 'CFECTUUYI@12', 'Saudi', '210000891', '987654321234569', '12-34-56', 'QAZWS-PL-RF-004', 'RV#1234', '242354365', 'fdngvicg_fer', 'ZXOFQEUQ', 4, 2, '2023-01-01 00:00', '2023-01-08 03:30',7,5),
( 'Ram', 'gfdg43asemjo90', 1, 8, 23454209.49, 17452.25, 23436757.24, 'dgcfgfhv78965', 'asdrfdhg159', 3, 3, 'Personal funds', 'QAZWSXEDC', '2023-09-05 09:00', '987654321234562', '12-34-60', 'AAAA-BB-CC-127', 'VCHUYHNT', 'Diu', '260025742', '987654321234354', '12-34-60', 'QAZWS-PL-RF-005', 'PL567547', '121000358', 'ediwret_opeirok', 'QAZWSXEDC', 5, 1, '2022-11-11 08:15', '2022-11-18 11:45',4,6),
( 'Kavin', 'ew245csaqwe2', 5, 2, 4364987300, 415144.14, 4364572156, 'gvhytjbj369vch', 'uyrytrew147', 3, 3, 'Loans and Credit', 'PLMOKNJIUH', '2022-07-10 22:45', '987654321234354', '12-34-61', 'AAAA-BB-CC-128', 'VNHTVHT@^7', 'Mexcico', '210010883', '932854967598739', '12-34-65', 'QAZWS-PL-RF-006', 'VNDJGHR%1', '121000248', 'zxer_xiunteye', 'PLMOKNJIUH', 6, 3, '2023-06-30 18:20', '2023-07-07 21:10',2,9),
( 'Karan', '467sddsa', 1, 3, 7982516882, 14871445.86, 7967645436, 'qasxdgfrg7854', 'vcbvbnn354', 6, 6, 'Personal funds', 'TGFBSIRMSKC', '2023-08-10 15:00', '932544654777765', '12-34-62', 'AAAA-BB-CC-129', 'CHYUPZW', 'Portal', '312013604', '987654321234562', '12-34-57', 'QAZWS-PL-RF-007', 'CHYUPZW', '210000210', 'umngc_xger', 'TGFBSIRMSKC', 7, 3, '2022-04-05 10:10', '2022-04-12 13:20',1,2),
( 'Sita', '5215daiwsqmdas', 5, 3, 54966971.01, 814353.14, 54152617.87, 'gvthtcrytu258', 'gcdgfhh965', 7, 7, 'Loans and Credit', 'WQHDNFXTRE', '2021-09-21 09:45', '932854967598739', '12-34-63', 'AAAA-BB-CC-130', 'QFKJHME', 'Kuwait', '514055155', '987654321234568', '12-34-58', 'QAZWS-PL-RF-008', 'QFKJHME', '210000891', 'neyu_fhtn', 'WQHDNFXTRE', 8, 2, '2021-12-25 14:00', '2021-12-30 16:30',8,2),
( 'Sam', 'qazwsxedcrfv', 3, 3, 72564819.61, 741856.154, 71822963.46, 'vytjuykbrtybvh@', 'zgfdytiuyt236', 8, 8, 'Venture Capital', 'XTNETHRVQSD', '2023-06-30 18:20', '935984689765635', '12-34-64', 'AAAA-BB-CC-131', 'MRHBTCGBC', 'Dubai', '430000966', '923546687657575', '12-34-59', 'QAZWS-PL-RF-009', 'MRHBTCGBC', '430000966', 'freytru', 'XTNETHRVQSD', 9, 2, '2023-09-05 09:00', '2023-09-12 11:15',8,2),
( 'Nivin', 'tgbyhnujmikl', 3, 9, 771404.0214, 17452.1714, 753951.85, 'xncruthrjcxceitx', 'ietjrejtren24', 9, 9, 'Grants', 'IUNYIUYKGTRQ', '2022-04-05 10:10', '923546687657575', '12-34-65', 'AAAA-BB-CC-132', 'XHECNBUTU', 'India', '123000220', '987654321234567', '12-34-64', 'QAZWS-PL-RF-010', 'XHECNBUTU', '123000220', 'piopiuiji', 'IUNYIUYKGTRQ', 10, 1, '2022-07-10 22:45', '2022-07-17 01:00',1,2);

*/