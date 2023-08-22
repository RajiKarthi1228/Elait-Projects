CREATE TABLE [dbo].[Users](
	 [Id] [int] IDENTITY(1,1) NOT NULL
	,[FirstName] [varchar](100) NULL
	,[Last Name] [varchar](100) NULL
	,[Email] [varchar](100) NULL
	,[PasswordHash] [varchar](100) NULL
	,[PasswordSalt] [varchar](100) NULL
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50)  NOT NULL
	,[ModifiedBy] [varchar] (50) NOT NULL
    ,CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Roles](
	 [Id] [int] IDENTITY(1,1) NOT NULL
	,[RoleName] [varchar](50) NULL
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar](50) NOT NULL
    ,CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[RoleAssignment](
     [Id] [int] IDENTITY(1,1) NOT NULL
	,[UserId] [int] FOREIGN KEY REFERENCES Users(Id)
	,[RoleId] [int] FOREIGN KEY REFERENCES Roles(Id)
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
    ,CONSTRAINT [PK_RoleAssignment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[PaymentTypeMaster] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
	,[PaymentType] [varchar](100) NOT NULL
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
	,CONSTRAINT [PK_PaymentTypeMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[CurrencyMaster] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
	,[Currency] [varchar](100) NOT NULL
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
	,CONSTRAINT [PK_CurrencyMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]	
GO


CREATE TABLE [dbo].[PaymentStatusMaster] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
	,[PaymentStatus] [varchar](100) NOT NULL
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
	,CONSTRAINT [PK_PaymentStatusMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]	
GO


CREATE TABLE [dbo].[PaymentMethodMaster] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
	,[PaymentMethod] [varchar](100) NOT NULL
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
	,CONSTRAINT [PK_PaymentMethodMaster] PRIMARY KEY CLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]	
GO


CREATE TABLE [dbo].[ProcessedByMaster] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
	,[ProcessedByType] [varchar](100) NOT NULL
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
	,CONSTRAINT [PK_ProcessedByMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]	
GO


CREATE TABLE [dbo].[AccountTypeMaster] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
	,[AccountType] [varchar](100) NOT NULL
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
	,CONSTRAINT [PK_AccountTypeMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]	
GO


CREATE TABLE [dbo].[BankSystemMaster] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
	,[System] [varchar](100) NOT NULL
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
	,CONSTRAINT [PK_BankSystemMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]	
GO


CREATE TABLE [dbo].[BankStatusMaster] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
	,[Status] [varchar](100) NOT NULL
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
	,CONSTRAINT [PK_BankStatusMaster] PRIMARY KEY CLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]	
GO


CREATE TABLE [dbo].[Payments] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
	,[PayeeName] [varchar] (50) NOT NULL
	,[PaymentPortalPaymentReference] [varchar](50) NOT NULL
	,[PaymentType] [int] FOREIGN KEY REFERENCES PaymentTypeMaster(Id)
	,[PaymentStatus][int] FOREIGN KEY REFERENCES PaymentStatusMaster(Id)
	,[TotalAmount] [decimal] (20,8) NOT NULL
	,[PaidAmount] [decimal] (20,8) NULL
	,[RemainingAmount] [decimal] (20,8) NOT NULL
	,[SourceAppEntityCode] [varchar](100) NOT NULL
	,[SourceAppLineItemRef] [varchar](100) NOT NULL
	,[InvoiceCurrency] [int] FOREIGN KEY REFERENCES CurrencyMaster(Id)
	,[PaymentCurrency] [int] FOREIGN KEY REFERENCES CurrencyMaster(Id)
	,[PotentialFunding] [varchar](100) NOT NULL
	,[SourceAppPaymentRef] [varchar](50) NOT NULL
	,[SourceAppPaymentDate] [datetime] NOT NULL
	,[CreditAccountNumber] [varchar](30) NOT NULL
	,[CreditSortCode] [varchar](20) NOT NULL
	,[CreditSWIFTCode] [varchar](20) NOT NULL
	,[CreditIBAN] [varchar](20) NOT NULL
	,[CreditCountry] [varchar](20) NOT NULL
	,[CreditRoutingCode] [varchar](20) NOT NULL
	,[DebitAccountNumber] [varchar](30) NOT NULL
	,[DebitSortCode] [varchar](20) NOT NULL
	,[DebitSWIFTCode] [varchar](20) NOT NULL
	,[DebitIBAN] [varchar](20) NOT NULL
	,[DebitRoutingCode] [varchar](20) NOT NULL
	,[SourceAppBrokerage] [int] NOT NULL
	,[RequestedBy] [int] FOREIGN KEY REFERENCES Users(Id)
	,[PaymentMethod] [int] FOREIGN KEY REFERENCES PaymentMethodMaster(Id)
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
	,CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]	
GO


ALTER TABLE [dbo].[Payments]
ALTER COLUMN [SourceAppBrokerage] [varchar](20) NOT NULL;

ALTER TABLE [dbo].[LineItems]
ALTER COLUMN [SourceAppBrokerage] [varchar](20) NOT NULL;


CREATE TABLE [dbo].[LineItems] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
	,[PaymentId] [int] FOREIGN KEY REFERENCES Payments(Id)
	,[PayeeName] [varchar] (50) NOT NULL
	,[PaymentPortalPaymentReference] [varchar](50) NOT NULL
	,[PaymentType] [int] FOREIGN KEY REFERENCES PaymentTypeMaster(Id)
	,[PaymentStatus] [int] FOREIGN KEY REFERENCES PaymentStatusMaster(Id)
	,[PaymentAmount] [decimal] (20,8) NULL
	,[SourceAppEntityCode] [varchar](50) NOT NULL
	,[SourceAppLineItemRef] [varchar](50) NOT NULL
	,[InvoiceCurrency] [int] FOREIGN KEY REFERENCES CurrencyMaster(Id)
	,[PaymentCurrency] [int] FOREIGN KEY REFERENCES CurrencyMaster(Id)
	,[PotentialFunding] [varchar](50) NOT NULL
	,[SourceAppPaymentRef] [varchar](50) NOT NULL
	,[SourceAppPaymentDate] [datetime] NOT NULL
	,[CreditAccountNumber] [varchar](30) NOT NULL
	,[CreditSortCode] [varchar](20) NOT NULL
	,[CreditSWIFTCode] [varchar](20) NOT NULL
	,[CreditIBAN] [varchar](20) NOT NULL
	,[CreditCountry] [varchar](20) NOT NULL
	,[CreditRoutingCode] [varchar](20) NOT NULL
	,[DebitAccountNumber] [varchar](30) NOT NULL
	,[DebitSortCode] [varchar](20) NOT NULL
	,[DebitSWIFTCode] [varchar](20) NOT NULL
	,[DebitIBAN] [varchar](20) NOT NULL
	,[DebitRoutingCode] [varchar](20) NOT NULL
	,[SourceAppBrokerage] [int] NOT NULL
	,[RequestedBy] [int] FOREIGN KEY REFERENCES Users(Id)
	,[PaymentMethod] [int] FOREIGN KEY REFERENCES PaymentMethodMaster(Id)
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
	,CONSTRAINT [PK_LineItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]	
GO


CREATE TABLE [dbo].[PaymentSubmitted] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
	,[PaymentId] [int] FOREIGN KEY REFERENCES Payments(Id)
	,[PaymentAmount] [decimal] (20,8) NULL
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
	,CONSTRAINT [PK_PaymentSubmitted] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]	
GO


CREATE TABLE [dbo].[LineItemSubmitted] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
	,[LineItemId] [int]  FOREIGN KEY REFERENCES LineItems(Id)
	,[PaymentSubmittedId] [int]  FOREIGN KEY REFERENCES PaymentSubmitted(Id)
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
	,CONSTRAINT [PK_LineItemSubmitted] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]	
GO


CREATE TABLE [dbo].[PaymentAudit] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
	,[Status] [int]  FOREIGN KEY REFERENCES PaymentStatusMaster(Id)
	,[ProcessedBy] [int]  FOREIGN KEY REFERENCES ProcessedByMaster(Id)
	,[ApprovedBy] [int]  FOREIGN KEY REFERENCES Users(Id)
	,[Reason] [varchar] (200) NOT NULL
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
	,CONSTRAINT [PK_PaymentAudit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]	
GO


CREATE TABLE [dbo].[BankAccounts] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
	,[AccountType] [int]  FOREIGN KEY REFERENCES AccountTypeMaster(Id)
	,[System] [int]  FOREIGN KEY REFERENCES BankSystemMaster(Id)
	,[Currency] [int]  FOREIGN KEY REFERENCES CurrencyMaster(Id)
	,[SystemReference] [varchar](30) NOT NULL
	,[PayeeSystemName] [varchar](30) NOT NULL
	,[BankAccountName] [varchar](30) NOT NULL
	,[AccountNumber] [varchar](30) NOT NULL
	,[SWIFT] [varchar](30) NOT NULL
	,[Status] [int]  FOREIGN KEY REFERENCES BankStatusMaster(Id)
	,[Requestor] [int]  FOREIGN KEY REFERENCES Users(Id)
	,[Reason] [varchar](200)  NULL
	,[DateSubmitted] [date] NOT NULL
	,[TimeSubmitted] [datetime] NOT NULL
	,[RejectedBy] [int]  FOREIGN KEY REFERENCES Users(Id)
	,[RejectedDate] [DateTime] NOT NULL
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50) NOT NULL
	,CONSTRAINT [PK_BankAccounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]	
GO


CREATE TABLE [dbo].[BankAccountAudit] (
	 [Id] [int] IDENTITY(1, 1) NOT NULL
    ,[Status] [int] FOREIGN KEY REFERENCES BankStatusMaster(Id)
	,[ProcessedBy] [int] FOREIGN KEY REFERENCES ProcessedByMaster(Id)
	,[ApprovedBy] [int] FOREIGN KEY REFERENCES Users(Id)
	,[Reason] [varchar] (200) NOT NULL
	,[CreatedAt] [DateTime] NOT NULL
	,[ModifiedAt] [DateTime]NOT NULL
	,[CreatedBy] [varchar] (50) NOT NULL
	,[ModifiedBy] [varchar] (50)NOT NULL
	,CONSTRAINT [PK_BankAccountAudit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]	
GO