ALTER TABLE [Production].[ProductListPriceHistory]
    ADD CONSTRAINT [CK_ProductListPriceHistory_ListPrice] CHECK ([ListPrice]>(0.00));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ListPrice] > (0.00)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductListPriceHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductListPriceHistory_ListPrice';

