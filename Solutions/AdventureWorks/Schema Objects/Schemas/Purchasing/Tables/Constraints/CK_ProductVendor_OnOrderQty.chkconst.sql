ALTER TABLE [Purchasing].[ProductVendor]
    ADD CONSTRAINT [CK_ProductVendor_OnOrderQty] CHECK ([OnOrderQty]>=(0));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [OnOrderQty] >= (0)', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductVendor_OnOrderQty';

