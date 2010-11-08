ALTER TABLE [Production].[ProductCostHistory]
    ADD CONSTRAINT [DF_ProductCostHistory_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductCostHistory_ModifiedDate';

