CREATE TABLE [Sales].[ShoppingCartItem] (
    [ShoppingCartItemID] INT           IDENTITY (1, 1) NOT NULL,
    [ShoppingCartID]     NVARCHAR (50) NOT NULL,
    [Quantity]           INT           NOT NULL,
    [ProductID]          INT           NOT NULL,
    [DateCreated]        DATETIME      NOT NULL,
    [ModifiedDate]       DATETIME      NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Contains online customer orders until the order is submitted or cancelled.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ShoppingCartItem records.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'COLUMN', @level2name = N'ShoppingCartItemID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Shopping cart identification number.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'COLUMN', @level2name = N'ShoppingCartID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product quantity ordered.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'COLUMN', @level2name = N'Quantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product ordered. Foreign key to Product.ProductID.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the time the record was created.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'COLUMN', @level2name = N'DateCreated';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'ShoppingCartItem', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

