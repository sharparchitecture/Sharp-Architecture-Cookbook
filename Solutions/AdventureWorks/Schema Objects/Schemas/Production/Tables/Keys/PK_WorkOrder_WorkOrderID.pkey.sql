ALTER TABLE [Production].[WorkOrder]
    ADD CONSTRAINT [PK_WorkOrder_WorkOrderID] PRIMARY KEY CLUSTERED ([WorkOrderID] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'CONSTRAINT', @level2name = N'PK_WorkOrder_WorkOrderID';

