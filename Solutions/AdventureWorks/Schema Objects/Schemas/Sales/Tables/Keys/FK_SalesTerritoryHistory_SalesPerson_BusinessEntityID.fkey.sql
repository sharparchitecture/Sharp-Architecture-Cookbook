ALTER TABLE [Sales].[SalesTerritoryHistory]
    ADD CONSTRAINT [FK_SalesTerritoryHistory_SalesPerson_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [Sales].[SalesPerson] ([BusinessEntityID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesPerson.SalesPersonID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTerritoryHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesTerritoryHistory_SalesPerson_BusinessEntityID';

