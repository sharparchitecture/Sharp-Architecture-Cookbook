ALTER TABLE [Person].[BusinessEntityContact]
    ADD CONSTRAINT [FK_BusinessEntityContact_ContactType_ContactTypeID] FOREIGN KEY ([ContactTypeID]) REFERENCES [Person].[ContactType] ([ContactTypeID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ContactType.ContactTypeID.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'CONSTRAINT', @level2name = N'FK_BusinessEntityContact_ContactType_ContactTypeID';

