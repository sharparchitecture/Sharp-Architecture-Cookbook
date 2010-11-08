ALTER TABLE [Sales].[SalesPersonQuotaHistory]
    ADD CONSTRAINT [FK_SalesPersonQuotaHistory_SalesPerson_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [Sales].[SalesPerson] ([BusinessEntityID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SalesPerson.SalesPersonID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesPersonQuotaHistory', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesPersonQuotaHistory_SalesPerson_BusinessEntityID';

