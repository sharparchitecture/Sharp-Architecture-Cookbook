ALTER TABLE [Sales].[SpecialOfferProduct]
    ADD CONSTRAINT [FK_SpecialOfferProduct_SpecialOffer_SpecialOfferID] FOREIGN KEY ([SpecialOfferID]) REFERENCES [Sales].[SpecialOffer] ([SpecialOfferID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing SpecialOffer.SpecialOfferID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SpecialOfferProduct', @level2type = N'CONSTRAINT', @level2name = N'FK_SpecialOfferProduct_SpecialOffer_SpecialOfferID';

