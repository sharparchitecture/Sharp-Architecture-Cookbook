CREATE TABLE [Production].[ProductCategory] (
    [ProductCategoryID] INT              IDENTITY (1, 1) NOT NULL,
    [Name]              [dbo].[Name]     NOT NULL,
    [rowguid]           UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate]      DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'High-level product categorization.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ProductCategory records.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Category description.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

