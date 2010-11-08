ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [CK_Product_DaysToManufacture] CHECK ([DaysToManufacture]>=(0));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [DaysToManufacture] >= (0)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_DaysToManufacture';

