ALTER TABLE [Production].[ProductCostHistory]
    ADD CONSTRAINT [CK_ProductCostHistory_EndDate] CHECK ([EndDate]>=[StartDate] OR [EndDate] IS NULL);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NULL', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCostHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductCostHistory_EndDate';

