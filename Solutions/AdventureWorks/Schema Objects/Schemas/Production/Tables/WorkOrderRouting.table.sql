CREATE TABLE [Production].[WorkOrderRouting] (
    [WorkOrderID]        INT            NOT NULL,
    [ProductID]          INT            NOT NULL,
    [OperationSequence]  SMALLINT       NOT NULL,
    [LocationID]         SMALLINT       NOT NULL,
    [ScheduledStartDate] DATETIME       NOT NULL,
    [ScheduledEndDate]   DATETIME       NOT NULL,
    [ActualStartDate]    DATETIME       NULL,
    [ActualEndDate]      DATETIME       NULL,
    [ActualResourceHrs]  DECIMAL (9, 4) NULL,
    [PlannedCost]        MONEY          NOT NULL,
    [ActualCost]         MONEY          NULL,
    [ModifiedDate]       DATETIME       NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Work order details.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to WorkOrder.WorkOrderID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'WorkOrderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to Product.ProductID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Indicates the manufacturing process sequence.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'OperationSequence';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Manufacturing location where the part is processed. Foreign key to Location.LocationID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'LocationID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Planned manufacturing start date.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ScheduledStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Planned manufacturing end date.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ScheduledEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Actual start date.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ActualStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Actual end date.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ActualEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Number of manufacturing hours used.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ActualResourceHrs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estimated manufacturing cost.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'PlannedCost';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Actual manufacturing cost.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ActualCost';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrderRouting', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

