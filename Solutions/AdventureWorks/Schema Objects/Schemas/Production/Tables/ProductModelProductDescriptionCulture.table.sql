CREATE TABLE [Production].[ProductModelProductDescriptionCulture] (
    [ProductModelID]       INT       NOT NULL,
    [ProductDescriptionID] INT       NOT NULL,
    [CultureID]            NCHAR (6) NOT NULL,
    [ModifiedDate]         DATETIME  NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping product descriptions and the language the description is written in.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to ProductModel.ProductModelID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'COLUMN', @level2name = N'ProductModelID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to ProductDescription.ProductDescriptionID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'COLUMN', @level2name = N'ProductDescriptionID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Culture identification number. Foreign key to Culture.CultureID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'COLUMN', @level2name = N'CultureID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModelProductDescriptionCulture', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

