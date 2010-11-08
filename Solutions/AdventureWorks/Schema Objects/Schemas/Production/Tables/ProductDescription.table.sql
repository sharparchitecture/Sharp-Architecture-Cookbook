CREATE TABLE [Production].[ProductDescription] (
    [ProductDescriptionID] INT              IDENTITY (1, 1) NOT NULL,
    [Description]          NVARCHAR (400)   NOT NULL,
    [rowguid]              UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate]         DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product descriptions in several languages.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ProductDescription records.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription', @level2type = N'COLUMN', @level2name = N'ProductDescriptionID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Description of the product.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductDescription', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

