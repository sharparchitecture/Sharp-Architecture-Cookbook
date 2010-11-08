ALTER TABLE [Production].[ProductCategory]
    ADD CONSTRAINT [DF_ProductCategory_rowguid] DEFAULT (newid()) FOR [rowguid];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductCategory', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductCategory_rowguid';

