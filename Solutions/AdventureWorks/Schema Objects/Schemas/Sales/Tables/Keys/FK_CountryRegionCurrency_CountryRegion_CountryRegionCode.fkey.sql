ALTER TABLE [Sales].[CountryRegionCurrency]
    ADD CONSTRAINT [FK_CountryRegionCurrency_CountryRegion_CountryRegionCode] FOREIGN KEY ([CountryRegionCode]) REFERENCES [Person].[CountryRegion] ([CountryRegionCode]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing CountryRegion.CountryRegionCode.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'CONSTRAINT', @level2name = N'FK_CountryRegionCurrency_CountryRegion_CountryRegionCode';

