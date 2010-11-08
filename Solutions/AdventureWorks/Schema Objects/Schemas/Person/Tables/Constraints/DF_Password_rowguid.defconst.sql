ALTER TABLE [Person].[Password]
    ADD CONSTRAINT [DF_Password_rowguid] DEFAULT (newid()) FOR [rowguid];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of NEWID()', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Password', @level2type = N'CONSTRAINT', @level2name = N'DF_Password_rowguid';

