ALTER TABLE [Purchasing].[Vendor]
    ADD CONSTRAINT [FK_Vendor_BusinessEntity_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[BusinessEntity] ([BusinessEntityID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing BusinessEntity.BusinessEntityID', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'CONSTRAINT', @level2name = N'FK_Vendor_BusinessEntity_BusinessEntityID';

