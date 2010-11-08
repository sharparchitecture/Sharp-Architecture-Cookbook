ALTER TABLE [Sales].[CurrencyRate]
    ADD CONSTRAINT [FK_CurrencyRate_Currency_ToCurrencyCode] FOREIGN KEY ([ToCurrencyCode]) REFERENCES [Sales].[Currency] ([CurrencyCode]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Currency.ToCurrencyCode.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'CONSTRAINT', @level2name = N'FK_CurrencyRate_Currency_ToCurrencyCode';

