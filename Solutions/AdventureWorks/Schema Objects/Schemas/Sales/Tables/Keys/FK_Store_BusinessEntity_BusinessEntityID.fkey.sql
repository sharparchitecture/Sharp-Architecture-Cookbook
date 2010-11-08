ALTER TABLE [Sales].[Store]
    ADD CONSTRAINT [FK_Store_BusinessEntity_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[BusinessEntity] ([BusinessEntityID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing BusinessEntity.BusinessEntityID', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'CONSTRAINT', @level2name = N'FK_Store_BusinessEntity_BusinessEntityID';

