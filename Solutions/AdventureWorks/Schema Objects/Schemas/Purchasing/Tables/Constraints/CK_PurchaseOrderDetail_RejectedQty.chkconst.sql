ALTER TABLE [Purchasing].[PurchaseOrderDetail]
    ADD CONSTRAINT [CK_PurchaseOrderDetail_RejectedQty] CHECK ([RejectedQty]>=(0.00));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [RejectedQty] >= (0.00)', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderDetail', @level2type = N'CONSTRAINT', @level2name = N'CK_PurchaseOrderDetail_RejectedQty';

