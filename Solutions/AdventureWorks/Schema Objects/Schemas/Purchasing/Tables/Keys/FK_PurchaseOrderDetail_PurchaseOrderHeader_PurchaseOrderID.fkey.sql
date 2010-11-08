ALTER TABLE [Purchasing].[PurchaseOrderDetail]
    ADD CONSTRAINT [FK_PurchaseOrderDetail_PurchaseOrderHeader_PurchaseOrderID] FOREIGN KEY ([PurchaseOrderID]) REFERENCES [Purchasing].[PurchaseOrderHeader] ([PurchaseOrderID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing PurchaseOrderHeader.PurchaseOrderID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'FK_PurchaseOrderDetail_PurchaseOrderHeader_PurchaseOrderID';

