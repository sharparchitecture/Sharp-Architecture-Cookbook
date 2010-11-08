ALTER TABLE [Person].[StateProvince]
    ADD CONSTRAINT [FK_StateProvince_CountryRegion_CountryRegionCode] FOREIGN KEY ([CountryRegionCode]) REFERENCES [Person].[CountryRegion] ([CountryRegionCode]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing CountryRegion.CountryRegionCode.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'CONSTRAINT', @level2name = N'FK_StateProvince_CountryRegion_CountryRegionCode';

