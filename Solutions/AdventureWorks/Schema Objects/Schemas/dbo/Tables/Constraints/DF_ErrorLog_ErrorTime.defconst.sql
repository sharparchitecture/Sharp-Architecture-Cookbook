ALTER TABLE [dbo].[ErrorLog]
    ADD CONSTRAINT [DF_ErrorLog_ErrorTime] DEFAULT (getdate()) FOR [ErrorTime];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ErrorLog', @level2type = N'CONSTRAINT', @level2name = N'DF_ErrorLog_ErrorTime';

