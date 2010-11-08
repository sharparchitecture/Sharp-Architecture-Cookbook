ALTER TABLE [Production].[ProductSubcategory]
    ADD CONSTRAINT [FK_ProductSubcategory_ProductCategory_ProductCategoryID] FOREIGN KEY ([ProductCategoryID]) REFERENCES [Production].[ProductCategory] ([ProductCategoryID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ProductCategory.ProductCategoryID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductSubcategory', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductSubcategory_ProductCategory_ProductCategoryID';

