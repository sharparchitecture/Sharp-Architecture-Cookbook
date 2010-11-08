ALTER TABLE [dbo].[AWBuildVersion]
    ADD CONSTRAINT [DF_AWBuildVersion_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AWBuildVersion', @level2type = N'CONSTRAINT', @level2name = N'DF_AWBuildVersion_ModifiedDate';

