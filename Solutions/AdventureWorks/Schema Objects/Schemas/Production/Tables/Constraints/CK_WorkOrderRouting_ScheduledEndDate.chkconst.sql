ALTER TABLE [Production].[WorkOrderRouting]
    ADD CONSTRAINT [CK_WorkOrderRouting_ScheduledEndDate] CHECK ([ScheduledEndDate]>=[ScheduledStartDate]);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ScheduledEndDate] >= [ScheduledStartDate]', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'CK_WorkOrderRouting_ScheduledEndDate';

