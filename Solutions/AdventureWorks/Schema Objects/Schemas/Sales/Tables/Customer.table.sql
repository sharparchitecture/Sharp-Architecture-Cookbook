CREATE TABLE [Sales].[Customer] (
    [CustomerID]    INT              IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [PersonID]      INT              NULL,
    [StoreID]       INT              NULL,
    [TerritoryID]   INT              NULL,
    [AccountNumber] AS               (isnull('AW'+[dbo].[ufnLeadingZeros]([CustomerID]),'')),
    [rowguid]       UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate]  DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Current customer information. Also see the Person and Store tables.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'COLUMN', @level2name = N'CustomerID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key to Person.BusinessEntityID', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'COLUMN', @level2name = N'PersonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key to Store.BusinessEntityID', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'COLUMN', @level2name = N'StoreID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ID of the territory in which the customer is located. Foreign key to SalesTerritory.SalesTerritoryID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'COLUMN', @level2name = N'TerritoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique number identifying the customer assigned by the accounting system.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'COLUMN', @level2name = N'AccountNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Customer', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

