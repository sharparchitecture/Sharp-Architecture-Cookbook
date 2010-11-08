ALTER TABLE [Purchasing].[PurchaseOrderDetail]
    ADD CONSTRAINT [DF_PurchaseOrderDetail_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'DF_PurchaseOrderDetail_ModifiedDate';

