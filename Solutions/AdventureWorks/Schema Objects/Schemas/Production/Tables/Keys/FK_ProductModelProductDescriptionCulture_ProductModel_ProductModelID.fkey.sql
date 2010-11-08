ALTER TABLE [Production].[ProductModelProductDescriptionCulture]
    ADD CONSTRAINT [FK_ProductModelProductDescriptionCulture_ProductModel_ProductModelID] FOREIGN KEY ([ProductModelID]) REFERENCES [Production].[ProductModel] ([ProductModelID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ProductModel.ProductModelID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductModelProductDescriptionCulture_ProductModel_ProductModelID';

