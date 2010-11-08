CREATE TABLE [Person].[BusinessEntityContact] (
    [BusinessEntityID] INT              NOT NULL,
    [PersonID]         INT              NOT NULL,
    [ContactTypeID]    INT              NOT NULL,
    [rowguid]          UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate]     DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping stores, vendors, and employees to people', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to BusinessEntity.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to Person.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'COLUMN', @level2name = N'PersonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key.  Foreign key to ContactType.ContactTypeID.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'COLUMN', @level2name = N'ContactTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntityContact', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

