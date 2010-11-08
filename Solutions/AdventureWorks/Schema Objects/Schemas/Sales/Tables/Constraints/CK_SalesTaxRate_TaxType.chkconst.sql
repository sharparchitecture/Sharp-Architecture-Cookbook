ALTER TABLE [Sales].[SalesTaxRate]
    ADD CONSTRAINT [CK_SalesTaxRate_TaxType] CHECK ([TaxType]>=(1) AND [TaxType]<=(3));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [TaxType] BETWEEN (1) AND (3)', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesTaxRate_TaxType';

