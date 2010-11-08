CREATE TABLE [Sales].[CurrencyRate] (
    [CurrencyRateID]   INT       IDENTITY (1, 1) NOT NULL,
    [CurrencyRateDate] DATETIME  NOT NULL,
    [FromCurrencyCode] NCHAR (3) NOT NULL,
    [ToCurrencyCode]   NCHAR (3) NOT NULL,
    [AverageRate]      MONEY     NOT NULL,
    [EndOfDayRate]     MONEY     NOT NULL,
    [ModifiedDate]     DATETIME  NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Currency exchange rates.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for CurrencyRate records.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'COLUMN', @level2name = N'CurrencyRateID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the exchange rate was obtained.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'COLUMN', @level2name = N'CurrencyRateDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Exchange rate was converted from this currency code.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'COLUMN', @level2name = N'FromCurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Exchange rate was converted to this currency code.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'COLUMN', @level2name = N'ToCurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Average exchange rate for the day.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'COLUMN', @level2name = N'AverageRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Final exchange rate for the day.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'COLUMN', @level2name = N'EndOfDayRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CurrencyRate', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

