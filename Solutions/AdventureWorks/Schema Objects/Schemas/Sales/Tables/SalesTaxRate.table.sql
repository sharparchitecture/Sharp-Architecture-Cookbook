CREATE TABLE [Sales].[SalesTaxRate] (
    [SalesTaxRateID]  INT              IDENTITY (1, 1) NOT NULL,
    [StateProvinceID] INT              NOT NULL,
    [TaxType]         TINYINT          NOT NULL,
    [TaxRate]         SMALLMONEY       NOT NULL,
    [Name]            [dbo].[Name]     NOT NULL,
    [rowguid]         UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate]    DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tax rate lookup table.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for SalesTaxRate records.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'COLUMN', @level2name = N'SalesTaxRateID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'State, province, or country/region the sales tax applies to.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'COLUMN', @level2name = N'StateProvinceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'1 = Tax applied to retail transactions, 2 = Tax applied to wholesale transactions, 3 = Tax applied to all sales (retail and wholesale) transactions.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'COLUMN', @level2name = N'TaxType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tax rate amount.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'COLUMN', @level2name = N'TaxRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Tax rate description.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

