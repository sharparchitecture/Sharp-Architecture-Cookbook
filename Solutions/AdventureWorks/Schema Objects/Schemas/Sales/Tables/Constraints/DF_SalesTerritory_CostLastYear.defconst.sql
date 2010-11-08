ALTER TABLE [Sales].[SalesTerritory]
    ADD CONSTRAINT [DF_SalesTerritory_CostLastYear] DEFAULT ((0.00)) FOR [CostLastYear];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0.0', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'CONSTRAINT', @level2name = N'DF_SalesTerritory_CostLastYear';

