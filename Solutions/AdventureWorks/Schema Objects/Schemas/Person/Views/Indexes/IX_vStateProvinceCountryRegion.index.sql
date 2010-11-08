CREATE UNIQUE CLUSTERED INDEX [IX_vStateProvinceCountryRegion]
    ON [Person].[vStateProvinceCountryRegion]([StateProvinceID] ASC, [CountryRegionCode] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF, ONLINE = OFF, MAXDOP = 0)
    ON [PRIMARY];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Clustered index on the view vStateProvinceCountryRegion.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'VIEW', @level1name = N'vStateProvinceCountryRegion', @level2type = N'INDEX', @level2name = N'IX_vStateProvinceCountryRegion';

