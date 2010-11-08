ALTER TABLE [Sales].[SpecialOffer]
    ADD CONSTRAINT [CK_SpecialOffer_MaxQty] CHECK ([MaxQty]>=(0));


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [MaxQty] >= (0)', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOffer', @level2type = N'CONSTRAINT', @level2name = N'CK_SpecialOffer_MaxQty';

