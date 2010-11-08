CREATE TABLE [Production].[WorkOrder] (
    [WorkOrderID]   INT      IDENTITY (1, 1) NOT NULL,
    [ProductID]     INT      NOT NULL,
    [OrderQty]      INT      NOT NULL,
    [StockedQty]    AS       (isnull([OrderQty]-[ScrappedQty],(0))),
    [ScrappedQty]   SMALLINT NOT NULL,
    [StartDate]     DATETIME NOT NULL,
    [EndDate]       DATETIME NULL,
    [DueDate]       DATETIME NOT NULL,
    [ScrapReasonID] SMALLINT NULL,
    [ModifiedDate]  DATETIME NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Manufacturing work orders.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for WorkOrder records.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'WorkOrderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product identification number. Foreign key to Product.ProductID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product quantity to build.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'OrderQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity built and put in inventory.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'StockedQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Quantity that failed inspection.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'ScrappedQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Work order start date.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Work order end date.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Work order due date.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'DueDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Reason for inspection failure.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'ScrapReasonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'WorkOrder', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

