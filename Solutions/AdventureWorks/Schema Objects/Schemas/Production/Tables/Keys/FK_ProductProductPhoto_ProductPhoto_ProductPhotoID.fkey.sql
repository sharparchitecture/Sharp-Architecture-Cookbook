ALTER TABLE [Production].[ProductProductPhoto]
    ADD CONSTRAINT [FK_ProductProductPhoto_ProductPhoto_ProductPhotoID] FOREIGN KEY ([ProductPhotoID]) REFERENCES [Production].[ProductPhoto] ([ProductPhotoID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ProductPhoto.ProductPhotoID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'CONSTRAINT', @level2name = N'FK_ProductProductPhoto_ProductPhoto_ProductPhotoID';

