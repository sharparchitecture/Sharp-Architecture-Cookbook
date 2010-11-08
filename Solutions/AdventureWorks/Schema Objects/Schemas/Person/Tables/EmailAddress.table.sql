CREATE TABLE [Person].[EmailAddress] (
    [BusinessEntityID] INT              NOT NULL,
    [EmailAddressID]   INT              IDENTITY (1, 1) NOT NULL,
    [EmailAddress]     NVARCHAR (50)    NULL,
    [rowguid]          UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate]     DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Where to send a person email.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Person associated with this email address.  Foreign key to Person.BusinessEntityID', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. ID of this email address.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'COLUMN', @level2name = N'EmailAddressID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'E-mail address for the person.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'COLUMN', @level2name = N'EmailAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'EmailAddress', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

