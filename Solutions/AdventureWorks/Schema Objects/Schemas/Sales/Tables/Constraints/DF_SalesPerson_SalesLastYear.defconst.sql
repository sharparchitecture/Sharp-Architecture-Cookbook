ALTER TABLE [Sales].[SalesPerson]
    ADD CONSTRAINT [DF_SalesPerson_SalesLastYear] DEFAULT ((0.00)) FOR [SalesLastYear];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPerson', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesPerson_SalesLastYear';

