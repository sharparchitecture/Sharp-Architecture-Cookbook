CREATE TABLE [Production].[ProductProductPhoto] (
    [ProductID]      INT          NOT NULL,
    [ProductPhotoID] INT          NOT NULL,
    [Primary]        [dbo].[Flag] NOT NULL,
    [ModifiedDate]   DATETIME     NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping products and product photos.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product photo identification number. Foreign key to ProductPhoto.ProductPhotoID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'COLUMN', @level2name = N'ProductPhotoID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Photo is not the principal image. 1 = Photo is the principal image.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'COLUMN', @level2name = N'Primary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

