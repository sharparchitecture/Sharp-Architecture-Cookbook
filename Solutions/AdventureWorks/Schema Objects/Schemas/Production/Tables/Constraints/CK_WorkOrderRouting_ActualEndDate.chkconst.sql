ALTER TABLE [Production].[WorkOrderRouting]
    ADD CONSTRAINT [CK_WorkOrderRouting_ActualEndDate] CHECK ([ActualEndDate]>=[ActualStartDate] OR [ActualEndDate] IS NULL OR [ActualStartDate] IS NULL);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ActualEndDate] >= [ActualStartDate] OR [ActualEndDate] IS NULL OR [ActualStartDate] IS NULL', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'CK_WorkOrderRouting_ActualEndDate';

