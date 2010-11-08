ALTER TABLE [Production].[Location]
    ADD CONSTRAINT [DF_Location_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'CONSTRAINT', @level2name = N'DF_Location_ModifiedDate';

