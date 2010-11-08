ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [DF_Product_FinishedGoodsFlag] DEFAULT ((1)) FOR [FinishedGoodsFlag];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of  1', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'DF_Product_FinishedGoodsFlag';

