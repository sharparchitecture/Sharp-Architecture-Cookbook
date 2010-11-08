ALTER TABLE [Production].[ProductProductPhoto]
    ADD CONSTRAINT [DF_ProductProductPhoto_Primary] DEFAULT ((0)) FOR [Primary];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 0 (FALSE)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ProductProductPhoto', @level2type = N'CONSTRAINT', @level2name = N'DF_ProductProductPhoto_Primary';

