ALTER TABLE [Sales].[SalesOrderHeaderSalesReason]
    ADD CONSTRAINT [PK_SalesOrderHeaderSalesReason_SalesOrderID_SalesReasonID] PRIMARY KEY CLUSTERED ([SalesOrderID] ASC, [SalesReasonID] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderHeaderSalesReason', @level2type = N'CONSTRAINT', @level2name = N'PK_SalesOrderHeaderSalesReason_SalesOrderID_SalesReasonID';

