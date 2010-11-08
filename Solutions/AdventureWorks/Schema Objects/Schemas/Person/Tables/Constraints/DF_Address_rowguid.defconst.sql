ALTER TABLE [Person].[Address]
    ADD CONSTRAINT [DF_Address_rowguid] DEFAULT (newid()) FOR [rowguid];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'CONSTRAINT', @level2name = N'DF_Address_rowguid';

