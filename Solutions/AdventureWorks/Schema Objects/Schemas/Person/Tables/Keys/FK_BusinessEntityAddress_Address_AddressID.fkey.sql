ALTER TABLE [Person].[BusinessEntityAddress]
    ADD CONSTRAINT [FK_BusinessEntityAddress_Address_AddressID] FOREIGN KEY ([AddressID]) REFERENCES [Person].[Address] ([AddressID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Address.AddressID.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityAddress', @level2type = N'CONSTRAINT', @level2name = N'FK_BusinessEntityAddress_Address_AddressID';

