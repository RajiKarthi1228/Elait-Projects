INSERT INTO [dbo].[Users] (
    [FirstName],
    [Last Name],
    [Email],
    [PasswordHash],
    [PasswordSalt],
    [CreatedAt],
    [ModifiedAt],
    [CreatedBy],
    [ModifiedBy]
)
VALUES
    ('Ria', 'Siva', 'ria@gmail.com', 'b36a8321b3d257c3a1ab9b6ebab6d44a', 'a1b2c3d4', '2023-08-03 12:30', '2023-08-10 15:00', 'Sita', 'Deva'),
    ('Priya', 'Deva', 'priya@gmail.com', '3a9d4f5e62b5e839e1f3870e0e0e50a2', '9ef8d7c6', '2021-09-15 09:45', '2021-09-21 09:45', 'Ram', 'Sana'),
    ('Sana', 'Ram', 'sana@gmail.com', '20e6c18c43b2f2c2e1a3a01c82ca4a4a', '0a1b2c3d', '2022-05-20 16:00', '2022-05-27 16:00', 'Sita', 'Deva'),
    ('Latha', 'Karthi', 'latha@gmail.com', 'd452aebb3bdef90e2a7c70debb0d6a80', '5d8e7f6c', '2023-01-01 00:00', '2023-01-08 03:30', 'Ram', 'Sana'),
    ('Ram', 'Parvath', 'ram@gmail.com', 'ad344d0893e39c892e9cfb8d25f646b0', '1f2e3d4c', '2022-11-11 08:15', '2022-11-18 11:45', 'Sita', 'Deva'),
    ('Kavin', 'Rahul', 'kavin@gmail.com', 'bf21b7320e6cf79c6a2624c677323b9e', '4b3a2c1d', '2023-06-30 18:20', '2023-07-07 21:10', 'Ram', 'Sana'),
    ('Karan', 'Kapoor', 'karan@gmail.com', 'fc3a86d9a8e5c66c9b3ac30c12a829c7', '5e4f3d2c', '2022-04-05 10:10', '2022-04-12 13:20', 'Sita', 'Deva'),
    ('Sita', 'Ram', 'sita@gmail.com', 'a51a1b6c5e6d0d0f2f1a8f2a4a5b33c1', 'a1b2c3d4', '2021-12-25 14:00', '2021-12-30 16:30', 'Ram', 'Sana'),
    ('Sam', 'Singh', 'sam@gmail.com', 'd7896e4ca5a3d9d48c1a524cdce77e8e', '1a2b3c4d', '2023-09-05 09:00', '2023-09-12 11:15', 'Sita', 'Deva'),
    ('Nivin', 'Poley', 'nivin@gmail.com', 'b82e079f5b0e3658c9d6c2c3328cdafa', 'd3c2b1a0', '2022-07-10 22:45', '2022-07-17 01:00', 'Ram', 'Sana');



INSERT INTO [dbo].[PaymentTypeMaster] (
    [PaymentType],
    [CreatedAt],
    [ModifiedAt],
    [CreatedBy],
    [ModifiedBy]
)
VALUES
    ('Cash', '2023-06-30 18:20', '2023-07-07 21:10', '8/3/2023 12:30', '8/10/2023 15:00'),
    ('Cheque', '2023-01-01 00:00', '2023-01-08 03:30', '9/15/2021 9:45', '9/21/2021 9:45'),
    ('Credit Card', '2021-12-25 14:00', '2021-12-30 16:30', '5/20/2022 16:00', '5/27/2022 16:00'),
    ('DebitCard', '2022-05-20 16:00', '2022-05-27 16:00', '1/1/2023 0:00', '1/8/2023 3:30'),
    ('MobileBanking', '2022-04-05 10:10', '2022-04-12 13:20', '11/11/2022 8:15', '11/18/2022 11:45'),
    ('Netbanking', '2023-08-22 11:02', '2023-08-22 11:02', '6/30/2023 18:20', '7/7/2023 21:10');


INSERT INTO [dbo].[CurrencyMaster] (
    [Currency],
    [CreatedAt],
    [ModifiedAt],
    [CreatedBy],
    [ModifiedBy]
)
VALUES
    ('Rupee', '2023-08-22 11:08', '2023-08-22 11:08', 'Sita', 'Deva'),
    ('Euro', '2023-08-22 11:08', '2023-08-22 11:08',  'Ram', 'Sana'),
    ('Yen', '2023-08-22 11:08', '2023-08-22 11:08', 'Sita', 'Deva'),
    ('GBP', '2023-08-22 11:08', '2023-08-22 11:08', 'Ram', 'Sana'),
    ('Real', '2023-08-22 11:08', '2023-08-22 11:08', 'Sita', 'Deva'),
    ('Lev', '2023-08-22 11:08', '2023-08-22 11:08', 'Ram', 'Sana'),
    ('Dollar', '2023-08-22 11:08', '2023-08-22 11:08', 'Sita', 'Deva'),
    ('Riel', '2023-08-22 11:08', '2023-08-22 11:08', 'Ram', 'Sana'),
    ('Peso', '2023-08-22 11:08', '2023-08-22 11:08', 'Sita', 'Deva'),
    ('Sol', '2023-08-22 11:08', '2023-08-22 11:08',  'Ram', 'Sana');


INSERT INTO [dbo].[PaymentStatusMaster] (
    [PaymentStatus],
    [CreatedAt],
    [ModifiedAt],
    [CreatedBy],
    [ModifiedBy]
)
VALUES
    ('New Request', '2023-08-22 11:08', '2023-08-22 11:08', '8/3/2023 12:30', '8/10/2023 15:00'),
    ('Failed check Bank account details', '2023-08-22 11:08', '2023-08-22 11:08','6/30/2023 18:20', '7/7/2023 21:10'),
    ('Complete', '2023-08-22 11:08', '2023-08-22 11:08',  '1/1/2023 0:00', '1/8/2023 3:30'),
    ('Kyriba submission successful', '2023-08-22 11:08', '2023-08-22 11:08', '1/1/2023 0:00', '1/8/2023 3:30'),
    ('Failed - Payment exceeds the limit', '2023-08-22 11:08', '2023-08-22 11:08', '8/3/2023 12:30', '8/10/2023 15:00'),
    ('Rejected by Approver 1', '2023-08-22 11:08', '2023-08-22 11:08','6/30/2023 18:20', '7/7/2023 21:10'),
    ('Rejected by Approver 2', '2023-08-22 11:08', '2023-08-22 11:08', '1/1/2023 0:00', '1/8/2023 3:30'),
    ('Cancelled', '2023-08-22 11:08', '2023-08-22 11:08','6/30/2023 18:20', '7/7/2023 21:10'),
    ('Payment Request submitted', '2023-08-22 11:08', '2023-08-22 11:08', '8/3/2023 12:30', '8/10/2023 15:00'),
    ('Revoked', '2023-08-22 11:08', '2023-08-22 11:08', '1/1/2023 0:00', '1/8/2023 3:30');


INSERT INTO [dbo].[PaymentMethodMaster] (
    [PaymentMethod],
    [CreatedAt],
    [ModifiedAt],
    [CreatedBy],
    [ModifiedBy]
)
VALUES
    ('Chaps', '2023-08-22 11:08', '2023-08-22 11:08', '8/3/2023 12:30', '8/10/2023 15:00'),
    ('International', '2023-08-22 11:08', '2023-08-22 11:08', '9/15/2021 9:45', '9/21/2021 9:45'),
    ('Cheque', '2023-08-22 11:08', '2023-08-22 11:08', '5/20/2022 16:00', '5/27/2022 16:00');


INSERT INTO [dbo].[Payments] (
    [PayeeName],
    [PaymentPortalPaymentReference],
    [PaymentType],
    [PaymentStatus],
    [TotalAmount],
    [PaidAmount],
    [RemainingAmount],
    [SourceAppEntityCode],
    [SourceAppLineItemRef],
    [InvoiceCurrency],
    [PaymentCurrency],
    [PotentialFunding],
    [SourceAppPaymentRef],
    [SourceAppPaymentDate],
    [CreditAccountNumber],
    [CreditSortCode],
    [CreditSWIFTCode],
    [CreditIBAN],
    [CreditCountry],
    [CreditRoutingCode],
    [DebitAccountNumber],
    [DebitSortCode],
    [DebitSWIFTCode],
    [DebitIBAN],
    [DebitRoutingCode],
    [SourceAppBrokerage],
    [RequestedBy],
    [PaymentMethod],
    [CreatedAt],
    [ModifiedAt],
    [CreatedBy],
    [ModifiedBy]
)
VALUES
    -- Row 1
    ('Ria', '12345abcde', 1, 1, 136581135, 13124345.84, 123456789.1, 'plmwsx89217', 'poiuyt741', 1, 1, 'Personal funds', 'ABXTIHYTUT', '2022-05-27 16:00', '987654321234567', '12-34-56', 'AAAA-BB-CC-123', 'RV#1234', 'Iraq', '121000358', '987654321234561', '12-34-61', 'QAZWS-PL-RF-001', 'CFECTUUYI@12', '260025742', 'ret_hgg', 1, 3, '2023-08-03 12:30', '2023-08-10 15:00', '2021-09-15 09:45', '2021-09-21 09:45'),
    -- Row 2
    ('Priya', '9876awesdv', 3, 1, 528533073.4, 528525418.8, 7654.5345, 'edcrfv780151', 'kjhgfdsg852', 2, 2, 'Loans and Credit', 'TIORYNGFN', '2023-01-08 03:30', '987654321234568', '12-34-57', 'AAAA-BB-CC-124', 'PL567547', 'India', '121000248', '932544654777765', '12-34-62', 'QAZWS-PL-RF-002', 'VCHUYHNT', '210010883', 'ucinyytr_xhrnuet', 2, 2, '2021-09-15 09:45', '2021-09-21 09:45', '2023-08-03 12:30', '2023-08-10 15:00'),
    -- Row 3
    ('Sana', '3243657fcbgv', 2, 4, 855329.154, 418741.814, 436587.34, 'ijbygv123654', 'nmbbvxc963', 4, 4, 'Grants', 'CHNTHRVC', '2022-11-18 11:45', '987654321234569', '12-34-58', 'AAAA-BB-CC-125', 'VNDJGHR%1', 'London', '210000210', '935984689765635', '12-34-63', 'QAZWS-PL-RF-003', 'VNHTVHT@^7', '312013604', 'zx4e324u_xr', 3, 1, '2022-05-20 16:00', '2022-05-27 16:00', '2021-09-15 09:45', '2021-09-21 09:45'),
    -- Row 4
    ('Latha', 'dfyrygsdfewr45654', 4, 5, 46019720.92, 2487184.265, 43532536.66, 'edcsxw75395', 'xvvnbnb357', 5, 5, 'Personal funds', 'ZXOFQEUQ', '2021-12-25 14:00', '987654321234561', '12-34-59', 'AAAA-BB-CC-126', 'CFECTUUYI@12', 'Saudi', '210000891', '987654321234569', '12-34-56', 'QAZWS-PL-RF-004', 'RV#1234', '242354365', 'fdngvicg_fer', 4, 2, '2023-01-01 00:00', '2023-01-08 03:30', '2023-08-03 12:30', '2023-08-10 15:00'),
    -- Row 5
    ('Ram', 'gfdg43asemjo90', 1, 8, 23454209.49, 17452.25, 23436757.24, 'dgcfgfhv78965', 'asdrfdhg159', 3, 3, 'Personal funds', 'QAZWSXEDC', '2023-09-05 09:00', '987654321234562', '12-34-60', 'AAAA-BB-CC-127', 'VCHUYHNT', 'Diu', '260025742', '987654321234354', '12-34-60', 'QAZWS-PL-RF-005', 'PL567547', '121000358', 'ediwret_opeirok', 5, 1, '2022-11-11 08:15', '2022-11-18 11:45', '2021-12-25 14:00', '2021-12-30 16:30'),
    -- Row 6
    ('Kavin', 'ew245csaqwe2', 5, 2, 4364987300, 415144.14, 4364572156, 'gvhytjbj369vch', 'uyrytrew147', 3, 3, 'Loans and Credit', 'PLMOKNJIUH', '2022-07-10 22:45', '987654321234354', '12-34-61', 'AAAA-BB-CC-128', 'VNHTVHT@^7', 'Mexxico', '210010883', '932854967598739', '12-34-65', 'QAZWS-PL-RF-006', 'VNDJGHR%1', '121000248', 'zxer_xiunteye', 6, 3, '2023-06-30 18:20', '2023-07-07 21:10', '2022-11-11 08:15', '2022-11-18 11:45'),
    -- Row 7
    ('Karan', '467sddsa', 1, 3, 7982516882, 14871445.86, 7967645436, 'qasxdgfrg7854', 'vcbvbnn354', 6, 6, 'Personal funds', 'TGFBSIRMSKC', '2023-08-10 15:00', '932544654777765', '12-34-62', 'AAAA-BB-CC-129', 'CHYUPZW', 'Portal', '312013604', '987654321234562', '12-34-57', 'QAZWS-PL-RF-007', 'CHYUPZW', '210000210', 'umngc_xger', 7, 3, '2022-04-05 10:10', '2022-04-12 13:20', '2021-12-25 14:00', '2021-12-30 16:30'),
    -- Row 8
    ('Sita', '5215daiwsqmdas', 5, 3, 54966971.01, 814353.14, 54152617.87, 'gvthtcrytu258', 'gcdgfhh965', 7, 7, 'Loans and Credit', 'WQHDNFXTRE', '2021-09-21 09:45', '932854967598739', '12-34-63', 'AAAA-BB-CC-130', 'QFKJHME', 'Kuwait', '514055155', '987654321234568', '12-34-58', 'QAZWS-PL-RF-008', 'QFKJHME', '210000891', 'neyu_fhtn', 8, 2, '2021-12-25 14:00', '2021-12-30 16:30', '2022-11-11 08:15', '2022-11-18 11:45'),
    -- Row 9
    ('Sam', 'qazwsxedcrfv', 3, 3, 72564819.61, 741856.154, 71822963.46, 'vytjuykbrtybvh@', 'zgfdytiuyt236', 8, 8, 'Venture Capital', 'XTNETHRVQSD', '2023-06-30 18:20', '935984689765635', '12-34-64', 'AAAA-BB-CC-131', 'MRHBTCGBC', 'Dubai', '430000966', '923546687657575', '12-34-59', 'QAZWS-PL-RF-009', 'MRHBTCGBC', '430000966', 'freytru', 9, 2, '2023-09-05 09:00', '2023-09-12 11:15', '2021-12-25 14:00', '2021-12-30 16:30'),
    -- Row 10
    ('Nivin', 'tgbyhnujmikl', 3, 9, 771404.0214, 17452.1714, 753951.85, 'xncruthrjcxceitx', 'ietjrejtren24', 9, 9, 'Grants', 'IUNYIUYKGTRQ', '2022-04-05 10:10', '923546687657575', '12-34-65', 'AAAA-BB-CC-132', 'XHECNBUTU', 'India', '123000220', '987654321234567', '12-34-64', 'QAZWS-PL-RF-010', 'XHECNBUTU', '123000220', 'piopiuiji', 10, 1, '2022-07-10 22:45', '2022-07-17 01:00', '2022-11-11 08:15', '2022-11-18 11:45');


INSERT INTO [dbo].[LineItems] (
	PaymentId
	, PayeeName
	, PaymentPortalPaymentReference
	, PaymentType
	, PaymentStatus
	, PaymentAmount
	, SourceAppEntityCode
	, SourceAppLineItemRef
	, InvoiceCurrency
	, PaymentCurrency
	, PotentialFunding
	, SourceAppPaymentRef
	, SourceAppPaymentDate
	, CreditAccountNumber
	, CreditSortCode
	, CreditSWIFTCode
	, CreditIBAN
	, CreditCountry
	, CreditRoutingCode
	, DebitAccountNumber
	, DebitSortCode
	, DebitSWIFTCode
	, DebitIBAN
	, DebitRoutingCode
	, SourceAppBrokerage
	, RequestedBy
	, PaymentMethod
	, CreatedAt
	, ModifiedAt
	, CreatedBy
	, ModifiedBy)
VALUES
(11, 'Ria', '12345abcde', 1, 1, 123456.13, 'plmwsx89217', 'poiuyt741', 1, 1, 'Personal funds', 'ABXTIHYTUT', '2022-05-27 16:00', '987654321234567', '12-34-56', 'AAAA-BB-CC-123', 'RV#1234', 'Iraq', '121000358', '987654321234561', '12-34-61', 'QAZWS-PL-RF-001', 'CFECTUUYI@12', '260025742', 'ret_hgg', 1, 1, '2023-08-03 12:30', '2023-08-10 15:00', '2021-12-25 14:00', '2021-12-30 16:30'),

(2, 'Priya', '9876awesdv', 3, 1, 234567.15, 'edcrfv780151', 'kjhgfdsg852', 2, 2, 'Loans and Credit', 'TIORYNGFN', '2023-01-08 03:30', '987654321234568', '12-34-57', 'AAAA-BB-CC-124', 'PL567547', 'India', '121000248', '932544654777765', '12-34-62', 'QAZWS-PL-RF-002', 'VCHUYHNT', '210010883', 'ucinyytr_xhrnuet', 2, 2, '2021-09-15 09:45', '2021-09-21 09:45', '2023-08-03 12:30', '2023-08-10 15:00'),

(3, 'Sana', '3243657fcbgv', 2, 4, 123457.25, 'ijbygv123654', 'nmbbvxc963', 4, 4, 'Grants', 'CHNTHRVC', '2022-11-18 11:45', '987654321234569', '12-34-58', 'AAAA-BB-CC-125', 'VNDJGHR%1', 'London', '210000210', '935984689765635', '12-34-63', 'QAZWS-PL-RF-003', 'VNHTVHT@^7', '312013604', 'zx4e324u_xr', 3, 3, '2022-05-20 16:00', '2022-05-27 16:00','2021-12-25 14:00', '2021-12-30 16:30'),

(4, 'Latha', 'dfyrygsdfewr45654', 4, 5, 765432.24, 'edcsxw75395', 'xvvnbnb357', 5, 5, 'Personal funds', 'ZXOFQEUQ', '2021-12-25 14:00', '987654321234561', '12-34-59', 'AAAA-BB-CC-126', 'CFECTUUYI@12', 'Saudi', '210000891', '987654321234569', '12-34-56', 'QAZWS-PL-RF-004', 'RV#1234', '242354365', 'fdngvicg_fer', 4, 2, '2023-01-01 00:00', '2023-01-08 03:30', '2023-08-03 12:30', '2023-08-10 15:00'),

(5, 'Ram', 'gfdg43asemjo90', 1, 8, 543243.87, 'dgcfgfhv78965', 'asdrfdhg159', 3, 3, 'Personal funds', 'QAZWSXEDC', '2023-09-05 09:00', '987654321234562', '12-34-60', 'AAAA-BB-CC-127', 'VCHUYHNT', 'Diu', '260025742', '987654321234354', '12-34-60', 'QAZWS-PL-RF-005', 'PL567547', '121000358', 'ediwret_opeirok', 5, 2, '2022-11-11 08:15', '2022-11-18 11:45', '2023-09-05 09:00', '2023-09-12 11:15'),

(6, 'Kavin', 'ew245csaqwe2', 5, 2, 235465.87, 'gvhytjbj369vch', 'uyrytrew147', 3, 3, 'Loans and Credit', 'PLMOKNJIUH', '2022-07-10 22:45', '987654321234354', '12-34-61', 'AAAA-BB-CC-128', 'VNHTVHT@^7', 'Mexcico', '210010883', '932854967598739', '12-34-65', 'QAZWS-PL-RF-006', 'VNDJGHR%1', '121000248', 'zxer_xiunteye', 6, 1, '2023-06-30 18:20', '2023-07-07 21:10', '2023-09-05 09:00', '2023-09-12 11:15'),

(7, 'Karan', '467sddsa', 1, 3, 124354.9, 'qasxdgfrg7854', 'vcbvbnn354', 6, 6, 'Personal funds', 'TGFBSIRMSKC', '2023-08-10 15:00', '932544654777765', '12-34-62', 'AAAA-BB-CC-129', 'CHYUPZW', 'Portal', '312013604', '987654321234562', '12-34-57', 'QAZWS-PL-RF-007', 'CHYUPZW', '210000210', 'umngc_xger', 7, 3, '2022-04-05 10:10', '2022-04-12 13:20','2021-12-25 14:00', '2021-12-30 16:30'),

(8, 'Sita', '5215daiwsqmdas', 5, 3, 2145339.43, 'gvthtcrytu258', 'gcdgfhh965', 7, 7, 'Loans and Credit', 'WQHDNFXTRE', '2021-09-21 09:45', '932854967598739', '12-34-63', 'AAAA-BB-CC-130', 'QFKJHME', 'Kuwait', '514055155', '987654321234568', '12-34-58', 'QAZWS-PL-RF-008', 'QFKJHME', '210000891', 'neyu_fhtn', 8, 3, '2021-12-25 14:00', '2021-12-30 16:30', '2023-08-03 12:30', '2023-08-10 15:00'),

(9, 'Sam', 'qazwsxedcrfv', 3, 3, 4345657.42, 'vytjuykbrtybvh@', 'zgfdytiuyt236', 8, 8, 'Venture Capital', 'XTNETHRVQSD', '2023-06-30 18:20', '935984689765635', '12-34-64', 'AAAA-BB-CC-131', 'MRHBTCGBC', 'Dubai', '430000966', '923546687657575', '12-34-59', 'QAZWS-PL-RF-009', 'MRHBTCGBC', '430000966', 'freytru', 9, 1, '2023-09-05 09:00', '2023-09-12 11:15', '2021-12-25 14:00', '2021-12-30 16:30'),

(10, 'Nivin', 'tgbyhnujmikl', 3, 9, 5465776.82, 'xncruthrjcxceitx', 'ietjrejtren24', 9, 9, 'Grants', 'IUNYIUYKGTRQ', '2022-04-05 10:10', '923546687657575', '12-34-65', 'AAAA-BB-CC-132', 'XHECNBUTU', 'India', '123000220', '987654321234567', '12-34-64', 'QAZWS-PL-RF-010', 'XHECNBUTU', '123000220', 'piopiuiji', 10, 2, '2022-07-10 22:45', '2022-07-17 01:00', '2023-08-03 12:30', '2023-08-10 15:00');


