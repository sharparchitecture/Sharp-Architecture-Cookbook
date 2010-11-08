ALTER TABLE [Sales].[CountryRegionCurrency]
    ADD CONSTRAINT [FK_CountryRegionCurrency_Currency_CurrencyCode] FOREIGN KEY ([CurrencyCode]) REFERENCES [Sales].[Currency] ([CurrencyCode]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Currency.CurrencyCode.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'CONSTRAINT', @level2name = N'FK_CountryRegionCurrency_Currency_CurrencyCode';

