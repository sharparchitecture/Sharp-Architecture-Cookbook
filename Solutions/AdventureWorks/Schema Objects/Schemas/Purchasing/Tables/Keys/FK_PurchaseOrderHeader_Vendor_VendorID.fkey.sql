ALTER TABLE [Purchasing].[PurchaseOrderHeader]
    ADD CONSTRAINT [FK_PurchaseOrderHeader_Vendor_VendorID] FOREIGN KEY ([VendorID]) REFERENCES [Purchasing].[Vendor] ([BusinessEntityID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Vendor.VendorID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'PurchaseOrderHeader', @level2type = N'CONSTRAINT', @level2name = N'FK_PurchaseOrderHeader_Vendor_VendorID';

