ALTER TABLE [Sales].[SalesTaxRate]
    ADD CONSTRAINT [FK_SalesTaxRate_StateProvince_StateProvinceID] FOREIGN KEY ([StateProvinceID]) REFERENCES [Person].[StateProvince] ([StateProvinceID]) ON DELETE NO ACTION ON UPDATE NO ACTION;


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing StateProvince.StateProvinceID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesTaxRate', @level2type = N'CONSTRAINT', @level2name = N'FK_SalesTaxRate_StateProvince_StateProvinceID';

