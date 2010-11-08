CREATE TABLE [Production].[Product] (
    [ProductID]             INT              IDENTITY (1, 1) NOT NULL,
    [Name]                  [dbo].[Name]     NOT NULL,
    [ProductNumber]         NVARCHAR (25)    NOT NULL,
    [MakeFlag]              [dbo].[Flag]     NOT NULL,
    [FinishedGoodsFlag]     [dbo].[Flag]     NOT NULL,
    [Color]                 NVARCHAR (15)    NULL,
    [SafetyStockLevel]      SMALLINT         NOT NULL,
    [ReorderPoint]          SMALLINT         NOT NULL,
    [StandardCost]          MONEY            NOT NULL,
    [ListPrice]             MONEY            NOT NULL,
    [Size]                  NVARCHAR (5)     NULL,
    [SizeUnitMeasureCode]   NCHAR (3)        NULL,
    [WeightUnitMeasureCode] NCHAR (3)        NULL,
    [Weight]                DECIMAL (8, 2)   NULL,
    [DaysToManufacture]     INT              NOT NULL,
    [ProductLine]           NCHAR (2)        NULL,
    [Class]                 NCHAR (2)        NULL,
    [Style]                 NCHAR (2)        NULL,
    [ProductSubcategoryID]  INT              NULL,
    [ProductModelID]        INT              NULL,
    [SellStartDate]         DATETIME         NOT NULL,
    [SellEndDate]           DATETIME         NULL,
    [DiscontinuedDate]      DATETIME         NULL,
    [rowguid]               UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL,
    [ModifiedDate]          DATETIME         NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Products sold or used in the manfacturing of sold products.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Product records.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the product.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique product identification number.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ProductNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Product is purchased, 1 = Product is manufactured in-house.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'MakeFlag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Product is not a salable item. 1 = Product is salable.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'FinishedGoodsFlag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product color.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'Color';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Minimum inventory quantity.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'SafetyStockLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Inventory level that triggers a purchase order or work order.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ReorderPoint';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Standard cost of the product.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'StandardCost';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Selling price.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ListPrice';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product size.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'Size';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unit of measure for Size column.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'SizeUnitMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unit of measure for Weight column.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'WeightUnitMeasureCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product weight.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'Weight';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Number of days required to manufacture the product.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'DaysToManufacture';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'R = Road, M = Mountain, T = Touring, S = Standard', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ProductLine';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'H = High, M = Medium, L = Low', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'Class';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'W = Womens, M = Mens, U = Universal', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'Style';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product is a member of this product subcategory. Foreign key to ProductSubCategory.ProductSubCategoryID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ProductSubcategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product is a member of this product model. Foreign key to ProductModel.ProductModelID.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ProductModelID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the product was available for sale.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'SellStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the product was no longer available for sale.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'SellEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the product was discontinued.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'DiscontinuedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

