CREATE TABLE [Purchasing].[ProductVendor] (
    [ProductID]        INT       NOT NULL,
    [BusinessEntityID] INT       NOT NULL,
    [AverageLeadTime]  INT       NOT NULL,
    [StandardPrice]    MONEY     NOT NULL,
    [LastReceiptCost]  MONEY     NULL,
    [LastReceiptDate]  DATETIME  NULL,
    [MinOrderQty]      INT       NOT NULL,
    [MaxOrderQty]      INT       NOT NULL,
    [OnOrderQty]       INT       NULL,
    [UnitMeasureCode]  NCHAR (3) NOT NULL,
    [ModifiedDate]     DATETIME  NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping vendors with the products they supply.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to Product.ProductID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to Vendor.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The average span of time (in days) between placing an order with the vendor and receiving the purchased product.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'AverageLeadTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The vendor''s usual selling price.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'StandardPrice';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The selling price when last purchased.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'LastReceiptCost';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the product was last received by the vendor.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'LastReceiptDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The maximum quantity that should be ordered.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'MinOrderQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The minimum quantity that should be ordered.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'MaxOrderQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The quantity currently on order.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'OnOrderQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The product''s unit of measure.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'UnitMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

