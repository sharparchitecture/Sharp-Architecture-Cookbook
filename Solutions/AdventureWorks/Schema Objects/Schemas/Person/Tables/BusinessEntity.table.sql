CREATE TABLE [Person].[BusinessEntity] (
    [BusinessEntityID] INT              IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [rowguid]          UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate]     DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Source of the ID that connects vendors, customers, and employees with address and contact information.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for all customers, vendors, and employees.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntity', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntity', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntity', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

