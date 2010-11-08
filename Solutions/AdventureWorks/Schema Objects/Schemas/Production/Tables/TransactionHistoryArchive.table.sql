CREATE TABLE [Production].[TransactionHistoryArchive] (
    [TransactionID]        INT       NOT NULL,
    [ProductID]            INT       NOT NULL,
    [ReferenceOrderID]     INT       NOT NULL,
    [ReferenceOrderLineID] INT       NOT NULL,
    [TransactionDate]      DATETIME  NOT NULL,
    [TransactionType]      NCHAR (1) NOT NULL,
    [Quantity]             INT       NOT NULL,
    [ActualCost]           MONEY     NOT NULL,
    [ModifiedDate]         DATETIME  NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Transactions for previous years.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for TransactionHistoryArchive records.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'TransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Purchase order, sales order, or work order identification number.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'ReferenceOrderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Line number associated with the purchase order, sales order, or work order.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'ReferenceOrderLineID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time of the transaction.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'TransactionDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'W = Work Order, S = Sales Order, P = Purchase Order', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'TransactionType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product quantity.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'Quantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product cost.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'ActualCost';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'TransactionHistoryArchive', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

