CREATE TABLE [Sales].[Currency] (
    [CurrencyCode] NCHAR (3)    NOT NULL,
    [Name]         [dbo].[Name] NOT NULL,
    [ModifiedDate] DATETIME     NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table containing standard ISO currencies.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Currency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The ISO code for the Currency.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Currency', @level2type = N'COLUMN', @level2name = N'CurrencyCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Currency name.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Currency', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'Currency', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

