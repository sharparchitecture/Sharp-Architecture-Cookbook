CREATE TABLE [Sales].[SalesOrderHeader] (
    [SalesOrderID]           INT                   IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [RevisionNumber]         TINYINT               NOT NULL,
    [OrderDate]              DATETIME              NOT NULL,
    [DueDate]                DATETIME              NOT NULL,
    [ShipDate]               DATETIME              NULL,
    [Status]                 TINYINT               NOT NULL,
    [OnlineOrderFlag]        [dbo].[Flag]          NOT NULL,
    [SalesOrderNumber]       AS                    (isnull(N'SO'+CONVERT([nvarchar](23),[SalesOrderID],0),N'*** ERROR ***')),
    [PurchaseOrderNumber]    [dbo].[OrderNumber]   NULL,
    [AccountNumber]          [dbo].[AccountNumber] NULL,
    [CustomerID]             INT                   NOT NULL,
    [SalesPersonID]          INT                   NULL,
    [TerritoryID]            INT                   NULL,
    [BillToAddressID]        INT                   NOT NULL,
    [ShipToAddressID]        INT                   NOT NULL,
    [ShipMethodID]           INT                   NOT NULL,
    [CreditCardID]           INT                   NULL,
    [CreditCardApprovalCode] VARCHAR (15)          NULL,
    [CurrencyRateID]         INT                   NULL,
    [SubTotal]               MONEY                 NOT NULL,
    [TaxAmt]                 MONEY                 NOT NULL,
    [Freight]                MONEY                 NOT NULL,
    [TotalDue]               AS                    (isnull(([SubTotal]+[TaxAmt])+[Freight],(0))),
    [Comment]                NVARCHAR (128)        NULL,
    [rowguid]                UNIQUEIDENTIFIER      ROWGUIDCOL NOT NULL,
    [ModifiedDate]           DATETIME              NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'General sales order information.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'SalesOrderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Incremental number to track changes to the sales order over time.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'RevisionNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Dates the sales order was created.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'OrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the order is due to the customer.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'DueDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the order was shipped to the customer.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'ShipDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Order current status. 1 = In process; 2 = Approved; 3 = Backordered; 4 = Rejected; 5 = Shipped; 6 = Cancelled', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Order placed by sales person. 1 = Order placed online by customer.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'OnlineOrderFlag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique sales order identification number.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'SalesOrderNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer purchase order number reference.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'PurchaseOrderNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Financial accounting number reference.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer identification number. Foreign key to Customer.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'CustomerID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Sales person who created the sales order. Foreign key to SalesPerson.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'SalesPersonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Territory in which the sale was made. Foreign key to SalesTerritory.SalesTerritoryID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'TerritoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer billing address. Foreign key to Address.AddressID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'BillToAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer shipping address. Foreign key to Address.AddressID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'ShipToAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Shipping method. Foreign key to ShipMethod.ShipMethodID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'ShipMethodID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Credit card identification number. Foreign key to CreditCard.CreditCardID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'CreditCardID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Approval code provided by the credit card company.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'CreditCardApprovalCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Currency exchange rate used. Foreign key to CurrencyRate.CurrencyRateID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'CurrencyRateID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Sales subtotal. Computed as SUM(SalesOrderDetail.LineTotal)for the appropriate SalesOrderID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'SubTotal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tax amount.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'TaxAmt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Shipping cost.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'Freight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Total due from customer. Computed as Subtotal + TaxAmt + Freight.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'TotalDue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Sales representative comments.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'Comment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeader', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

