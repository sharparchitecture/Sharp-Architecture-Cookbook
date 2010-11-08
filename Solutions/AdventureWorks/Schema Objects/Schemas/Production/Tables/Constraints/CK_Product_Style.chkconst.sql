ALTER TABLE [Production].[Product]
    ADD CONSTRAINT [CK_Product_Style] CHECK (upper([Style])='U' OR upper([Style])='M' OR upper([Style])='W' OR [Style] IS NULL);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Check constraint [Style]=''u'' OR [Style]=''m'' OR [Style]=''w'' OR [Style]=''U'' OR [Style]=''M'' OR [Style]=''W'' OR [Style] IS NULL', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'CK_Product_Style';

