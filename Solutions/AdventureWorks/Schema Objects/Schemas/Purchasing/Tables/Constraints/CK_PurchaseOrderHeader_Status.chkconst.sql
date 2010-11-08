ALTER TABLE [Purchasing].[PurchaseOrderHeader]
    ADD CONSTRAINT [CK_PurchaseOrderHeader_Status] CHECK ([Status]>=(1) AND [Status]<=(4));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Status] BETWEEN (1) AND (4)', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'CK_PurchaseOrderHeader_Status';

