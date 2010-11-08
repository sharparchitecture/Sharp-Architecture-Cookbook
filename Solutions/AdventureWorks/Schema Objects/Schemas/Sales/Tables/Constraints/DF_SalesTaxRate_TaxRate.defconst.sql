ALTER TABLE [Sales].[SalesTaxRate]
    ADD CONSTRAINT [DF_SalesTaxRate_TaxRate] DEFAULT ((0.00)) FOR [TaxRate];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesTaxRate_TaxRate';

