ALTER TABLE [Production].[WorkOrderRouting]
    ADD CONSTRAINT [CK_WorkOrderRouting_ActualResourceHrs] CHECK ([ActualResourceHrs]>=(0.0000));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ActualResourceHrs] >= (0.0000)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'CK_WorkOrderRouting_ActualResourceHrs';

