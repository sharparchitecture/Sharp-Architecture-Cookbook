CREATE TABLE [Purchasing].[PurchaseOrderHeader] (
    [PurchaseOrderID] INT      IDENTITY (1, 1) NOT NULL,
    [RevisionNumber]  TINYINT  NOT NULL,
    [Status]          TINYINT  NOT NULL,
    [EmployeeID]      INT      NOT NULL,
    [VendorID]        INT      NOT NULL,
    [ShipMethodID]    INT      NOT NULL,
    [OrderDate]       DATETIME NOT NULL,
    [ShipDate]        DATETIME NULL,
    [SubTotal]        MONEY    NOT NULL,
    [TaxAmt]          MONEY    NOT NULL,
    [Freight]         MONEY    NOT NULL,
    [TotalDue]        AS       (isnull(([SubTotal]+[TaxAmt])+[Freight],(0))) PERSISTED NOT NULL,
    [ModifiedDate]    DATETIME NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'General purchase order information. See PurchaseOrderDetail.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'PurchaseOrderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Incremental number to track changes to the purchase order over time.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'RevisionNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Order current status. 1 = Pending; 2 = Approved; 3 = Rejected; 4 = Complete', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employee who created the purchase order. Foreign key to Employee.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'EmployeeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Vendor with whom the purchase order is placed. Foreign key to Vendor.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'VendorID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Shipping method. Foreign key to ShipMethod.ShipMethodID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'ShipMethodID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Purchase order creation date.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'OrderDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Estimated shipment date from the vendor.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'ShipDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Purchase order subtotal. Computed as SUM(PurchaseOrderDetail.LineTotal)for the appropriate PurchaseOrderID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'SubTotal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tax amount.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'TaxAmt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Shipping cost.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'Freight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Total due to vendor. Computed as Subtotal + TaxAmt + Freight.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'TotalDue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

