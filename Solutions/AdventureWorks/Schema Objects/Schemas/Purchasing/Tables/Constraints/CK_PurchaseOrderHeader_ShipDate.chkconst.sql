ALTER TABLE [Purchasing].[PurchaseOrderHeader]
    ADD CONSTRAINT [CK_PurchaseOrderHeader_ShipDate] CHECK ([ShipDate]>=[OrderDate] OR [ShipDate] IS NULL);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ShipDate] >= [OrderDate] OR [ShipDate] IS NULL', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_PurchaseOrderHeader_ShipDate';

