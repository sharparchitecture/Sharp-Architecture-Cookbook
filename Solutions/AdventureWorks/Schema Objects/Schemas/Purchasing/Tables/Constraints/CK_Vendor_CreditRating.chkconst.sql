ALTER TABLE [Purchasing].[Vendor]
    ADD CONSTRAINT [CK_Vendor_CreditRating] CHECK ([CreditRating]>=(1) AND [CreditRating]<=(5));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [CreditRating] BETWEEN (1) AND (5)', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'Vendor', @level2type = N'CONSTRAINT', @level2name = N'CK_Vendor_CreditRating';

