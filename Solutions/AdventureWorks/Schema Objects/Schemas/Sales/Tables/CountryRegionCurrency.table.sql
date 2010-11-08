CREATE TABLE [Sales].[CountryRegionCurrency] (
    [CountryRegionCode] NVARCHAR (3) NOT NULL,
    [CurrencyCode]      NCHAR (3)    NOT NULL,
    [ModifiedDate]      DATETIME     NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference table mapping ISO currency codes to a country or region.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ISO code for countries and regions. Foreign key to CountryRegion.CountryRegionCode.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'COLUMN', @level2name = N'CountryRegionCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ISO standard currency code. Foreign key to Currency.CurrencyCode.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'COLUMN', @level2name = N'CurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

