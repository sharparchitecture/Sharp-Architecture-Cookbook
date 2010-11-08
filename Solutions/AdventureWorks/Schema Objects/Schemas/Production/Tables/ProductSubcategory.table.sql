CREATE TABLE [Production].[ProductSubcategory] (
    [ProductSubcategoryID] INT              IDENTITY (1, 1) NOT NULL,
    [ProductCategoryID]    INT              NOT NULL,
    [Name]                 [dbo].[Name]     NOT NULL,
    [rowguid]              UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate]         DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product subcategories. See ProductCategory table.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ProductSubcategory records.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product category identification number. Foreign key to ProductCategory.ProductCategoryID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Subcategory description.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

