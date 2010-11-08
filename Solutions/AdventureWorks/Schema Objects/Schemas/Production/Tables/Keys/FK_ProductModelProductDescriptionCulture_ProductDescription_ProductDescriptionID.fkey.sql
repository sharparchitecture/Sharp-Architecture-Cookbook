ALTER TABLE [Production].[ProductModelProductDescriptionCulture]
    ADD CONSTRAINT [FK_ProductModelProductDescriptionCulture_ProductDescription_ProductDescriptionID] FOREIGN KEY ([ProductDescriptionID]) REFERENCES [Production].[ProductDescription] ([ProductDescriptionID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ProductDescription.ProductDescriptionID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductModelProductDescriptionCulture_ProductDescription_ProductDescriptionID';

