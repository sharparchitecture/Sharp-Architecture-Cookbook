ALTER TABLE [Person].[Person]
    ADD CONSTRAINT [DF_Person_NameStyle] DEFAULT ((0)) FOR [NameStyle];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'CONSTRAINT', @level2name = N'DF_Person_NameStyle';

