ALTER TABLE [Sales].[SalesTerritory]
    ADD CONSTRAINT [CK_SalesTerritory_SalesYTD] CHECK ([SalesYTD]>=(0.00));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [SalesYTD] >= (0.00)', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritory', @level2type = N'CONSTRAINT', @level2name = N'CK_SalesTerritory_SalesYTD';

