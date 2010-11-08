ALTER TABLE [Production].[WorkOrder]
    ADD CONSTRAINT [CK_WorkOrder_ScrappedQty] CHECK ([ScrappedQty]>=(0));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [ScrappedQty] >= (0)', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'CONSTRAINT', @level2name = N'CK_WorkOrder_ScrappedQty';

