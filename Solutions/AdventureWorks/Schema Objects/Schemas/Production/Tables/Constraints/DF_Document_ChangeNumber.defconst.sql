ALTER TABLE [Production].[Document]
    ADD CONSTRAINT [DF_Document_ChangeNumber] DEFAULT ((0)) FOR [ChangeNumber];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'CONSTRAINT', @level2name = N'DF_Document_ChangeNumber';

