ALTER TABLE [Production].[WorkOrder]
    ADD CONSTRAINT [FK_WorkOrder_ScrapReason_ScrapReasonID] FOREIGN KEY ([ScrapReasonID]) REFERENCES [Production].[ScrapReason] ([ScrapReasonID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing ScrapReason.ScrapReasonID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'CONSTRAINT', @level2name = N'FK_WorkOrder_ScrapReason_ScrapReasonID';

