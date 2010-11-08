ALTER TABLE [Sales].[CountryRegionCurrency]
    ADD CONSTRAINT [DF_CountryRegionCurrency_ModifiedDate] DEFAULT (getdate()) FOR [ModifiedDate];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'CountryRegionCurrency', @level2type = N'CONSTRAINT', @level2name = N'DF_CountryRegionCurrency_ModifiedDate';

