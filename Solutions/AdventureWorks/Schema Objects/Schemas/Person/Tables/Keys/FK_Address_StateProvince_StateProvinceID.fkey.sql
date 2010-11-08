ALTER TABLE [Person].[Address]
    ADD CONSTRAINT [FK_Address_StateProvince_StateProvinceID] FOREIGN KEY ([StateProvinceID]) REFERENCES [Person].[StateProvince] ([StateProvinceID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing StateProvince.StateProvinceID.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'CONSTRAINT', @level2name = N'FK_Address_StateProvince_StateProvinceID';

