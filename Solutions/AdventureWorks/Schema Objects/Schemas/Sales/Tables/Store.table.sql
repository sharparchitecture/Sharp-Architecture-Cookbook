CREATE TABLE [Sales].[Store] (
    [BusinessEntityID] INT                                                NOT NULL,
    [Name]             [dbo].[Name]                                       NOT NULL,
    [SalesPersonID]    INT                                                NULL,
    [Demographics]     XML(CONTENT [Sales].[StoreSurveySchemaCollection]) NULL,
    [rowguid]          UNIQUEIDENTIFIER                                   ROWGUIDCOL NOT NULL,
    [ModifiedDate]     DATETIME                                           NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customers (resellers) of Adventure Works products.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to Customer.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the store.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ID of the sales person assigned to the customer. Foreign key to SalesPerson.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'COLUMN', @level2name = N'SalesPersonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Demographic informationg about the store such as the number of employees, annual sales and store type.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'COLUMN', @level2name = N'Demographics';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Store', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

