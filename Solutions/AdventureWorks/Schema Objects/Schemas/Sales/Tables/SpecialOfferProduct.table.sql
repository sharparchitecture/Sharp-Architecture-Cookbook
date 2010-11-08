CREATE TABLE [Sales].[SpecialOfferProduct] (
    [SpecialOfferID] INT              NOT NULL,
    [ProductID]      INT              NOT NULL,
    [rowguid]        UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate]   DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping products to special offer discounts.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for SpecialOfferProduct records.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'COLUMN', @level2name = N'SpecialOfferID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

