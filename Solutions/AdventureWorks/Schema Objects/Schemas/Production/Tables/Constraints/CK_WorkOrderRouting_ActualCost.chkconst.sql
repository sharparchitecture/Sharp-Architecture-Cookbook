ALTER TABLE [Production].[WorkOrderRouting]
    ADD CONSTRAINT [CK_WorkOrderRouting_ActualCost] CHECK ([ActualCost]>(0.00));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ActualCost] > (0.00)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'CK_WorkOrderRouting_ActualCost';

