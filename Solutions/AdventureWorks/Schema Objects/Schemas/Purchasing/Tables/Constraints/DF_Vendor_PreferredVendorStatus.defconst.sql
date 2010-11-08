ALTER TABLE [Purchasing].[Vendor]
    ADD CONSTRAINT [DF_Vendor_PreferredVendorStatus] DEFAULT ((1)) FOR [PreferredVendorStatus];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of 1 (TRUE)', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'CONSTRAINT', @level2name = N'DF_Vendor_PreferredVendorStatus';

