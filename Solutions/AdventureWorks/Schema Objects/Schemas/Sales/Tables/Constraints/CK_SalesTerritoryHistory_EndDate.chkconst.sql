ALTER TABLE [Sales].[SalesTerritoryHistory]
    ADD CONSTRAINT [CK_SalesTerritoryHistory_EndDate] CHECK ([EndDate]>=[StartDate] OR [EndDate] IS NULL);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [EndDate] >= [StartDate] OR [EndDate] IS NULL', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesTerritoryHistory_EndDate';

