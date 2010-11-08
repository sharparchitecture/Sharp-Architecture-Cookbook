CREATE TABLE [Production].[ProductModel] (
    [ProductModelID]     INT                                                            IDENTITY (1, 1) NOT NULL,
    [Name]               [dbo].[Name]                                                   NOT NULL,
    [CatalogDescription] XML(CONTENT [Production].[ProductDescriptionSchemaCollection]) NULL,
    [Instructions]       XML(CONTENT [Production].[ManuInstructionsSchemaCollection])   NULL,
    [rowguid]            UNIQUEIDENTIFIER                                               ROWGUIDCOL NOT NULL,
    [ModifiedDate]       DATETIME                                                       NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product model classification.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ProductModel records.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'COLUMN', @level2name = N'ProductModelID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product model description.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Detailed product catalog information in xml format.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'COLUMN', @level2name = N'CatalogDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Manufacturing instructions in xml format.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'COLUMN', @level2name = N'Instructions';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

