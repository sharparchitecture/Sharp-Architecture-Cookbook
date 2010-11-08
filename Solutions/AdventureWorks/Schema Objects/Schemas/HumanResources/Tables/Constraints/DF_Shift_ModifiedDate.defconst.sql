ALTER TABLE [HumanResources].[Shift]
    ADD CONSTRAINT [DF_Shift_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'CONSTRAINT', @level2name = N'DF_Shift_ModifiedDate';

