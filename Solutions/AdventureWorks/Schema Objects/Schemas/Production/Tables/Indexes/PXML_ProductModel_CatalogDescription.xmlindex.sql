CREATE PRIMARY XML INDEX [PXML_ProductModel_CatalogDescription]
    ON [Production].[ProductModel]([CatalogDescription])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, MAXDOP = 0, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary XML index.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductModel', @level2type = N'INDEX', @level2name = N'PXML_ProductModel_CatalogDescription';

