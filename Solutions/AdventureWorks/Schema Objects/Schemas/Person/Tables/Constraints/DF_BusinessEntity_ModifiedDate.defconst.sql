ALTER TABLE [Person].[BusinessEntity]
    ADD CONSTRAINT [DF_BusinessEntity_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'BusinessEntity', @level2type = N'CONSTRAINT', @level2name = N'DF_BusinessEntity_ModifiedDate';

