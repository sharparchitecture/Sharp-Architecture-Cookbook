ALTER TABLE [Production].[WorkOrderRouting]
    ADD CONSTRAINT [DF_WorkOrderRouting_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'DF_WorkOrderRouting_ModifiedDate';

