ALTER TABLE [Purchasing].[ProductVendor]
    ADD CONSTRAINT [CK_ProductVendor_AverageLeadTime] CHECK ([AverageLeadTime]>=(1));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [AverageLeadTime] >= (1)', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'ProductVendor', @level2type = N'CONSTRAINT', @level2name = N'CK_ProductVendor_AverageLeadTime';

