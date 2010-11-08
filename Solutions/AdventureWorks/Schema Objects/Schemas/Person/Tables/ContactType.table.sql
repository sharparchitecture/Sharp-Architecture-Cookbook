CREATE TABLE [Person].[ContactType] (
    [ContactTypeID] INT          IDENTITY (1, 1) NOT NULL,
    [Name]          [dbo].[Name] NOT NULL,
    [ModifiedDate]  DATETIME     NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table containing the types of business entity contacts.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ContactType records.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType', @level2type = N'COLUMN', @level2name = N'ContactTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Contact type description.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'ContactType', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

