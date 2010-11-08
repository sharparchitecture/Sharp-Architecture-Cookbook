ALTER TABLE [Person].[Password]
    ADD CONSTRAINT [FK_Password_Person_BusinessEntityID] FOREIGN KEY ([BusinessEntityID]) REFERENCES [Person].[Person] ([BusinessEntityID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Person.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'CONSTRAINT', @level2name = N'FK_Password_Person_BusinessEntityID';

