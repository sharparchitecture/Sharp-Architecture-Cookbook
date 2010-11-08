ALTER TABLE [Person].[StateProvince]
    ADD CONSTRAINT [DF_StateProvince_IsOnlyStateProvinceFlag] DEFAULT ((1)) FOR [IsOnlyStateProvinceFlag];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1 (TRUE)', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'CONSTRAINT', @level2name = N'DF_StateProvince_IsOnlyStateProvinceFlag';

