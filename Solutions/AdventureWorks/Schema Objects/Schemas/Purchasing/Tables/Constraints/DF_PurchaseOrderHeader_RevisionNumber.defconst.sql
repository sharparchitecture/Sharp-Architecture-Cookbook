ALTER TABLE [Purchasing].[PurchaseOrderHeader]
    ADD CONSTRAINT [DF_PurchaseOrderHeader_RevisionNumber] DEFAULT ((0)) FOR [RevisionNumber];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'DF_PurchaseOrderHeader_RevisionNumber';

