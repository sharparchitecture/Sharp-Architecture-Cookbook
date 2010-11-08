ALTER TABLE [Person].[StateProvince]
    ADD CONSTRAINT [DF_StateProvince_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'StateProvince', @level2type = N'CONSTRAINT', @level2name = N'DF_StateProvince_ModifiedDate';

