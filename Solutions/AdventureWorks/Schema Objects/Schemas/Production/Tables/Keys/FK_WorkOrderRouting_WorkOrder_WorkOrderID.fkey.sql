ALTER TABLE [Production].[WorkOrderRouting]
    ADD CONSTRAINT [FK_WorkOrderRouting_WorkOrder_WorkOrderID] FOREIGN KEY ([WorkOrderID]) REFERENCES [Production].[WorkOrder] ([WorkOrderID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing WorkOrder.WorkOrderID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'CONSTRAINT', @level2name = N'FK_WorkOrderRouting_WorkOrder_WorkOrderID';

