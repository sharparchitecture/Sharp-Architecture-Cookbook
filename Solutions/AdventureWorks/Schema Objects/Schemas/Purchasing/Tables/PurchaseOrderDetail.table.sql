CREATE TABLE [Purchasing].[PurchaseOrderDetail] (
    [PurchaseOrderID]       INT            NOT NULL,
    [PurchaseOrderDetailID] INT            IDENTITY (1, 1) NOT NULL,
    [DueDate]               DATETIME       NOT NULL,
    [OrderQty]              SMALLINT       NOT NULL,
    [ProductID]             INT            NOT NULL,
    [UnitPrice]             MONEY          NOT NULL,
    [LineTotal]             AS             (isnull([OrderQty]*[UnitPrice],(0.00))),
    [ReceivedQty]           DECIMAL (8, 2) NOT NULL,
    [RejectedQty]           DECIMAL (8, 2) NOT NULL,
    [StockedQty]            AS             (isnull([ReceivedQty]-[RejectedQty],(0.00))),
    [ModifiedDate]          DATETIME       NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Individual products associated with a specific purchase order. See PurchaseOrderHeader.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to PurchaseOrderHeader.PurchaseOrderID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'PurchaseOrderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. One line number per purchased product.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'PurchaseOrderDetailID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the product is expected to be received.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'DueDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity ordered.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'OrderQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Vendor''s selling price of a single product.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'UnitPrice';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Per product subtotal. Computed as OrderQty * UnitPrice.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'LineTotal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity actually received from the vendor.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'ReceivedQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity rejected during inspection.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'RejectedQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity accepted into inventory. Computed as ReceivedQty - RejectedQty.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'StockedQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

