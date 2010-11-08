CREATE TRIGGER [Sales].[iduSalesOrderDetail] ON [Sales].[SalesOrderDetail] 
AFTER INSERT, DELETE, UPDATE AS 
BEGIN
DECLARE @Count int;
SET @Count = @@ROWCOUNT;
IF @Count = 0 
RETURN;
SET NOCOUNT ON;
BEGIN TRY
IF UPDATE([ProductID]) OR UPDATE([OrderQty]) OR UPDATE([UnitPrice]) OR UPDATE([UnitPriceDiscount]) 
BEGIN
INSERT INTO [Production].[TransactionHistory]
([ProductID]
,[ReferenceOrderID]
,[ReferenceOrderLineID]
,[TransactionType]
,[TransactionDate]
,[Quantity]
,[ActualCost])
SELECT 
inserted.[ProductID]
,inserted.[SalesOrderID]
,inserted.[SalesOrderDetailID]
,'S'
,GETDATE()
,inserted.[OrderQty]
,inserted.[UnitPrice]
FROM inserted 
INNER JOIN [Sales].[SalesOrderHeader] 
ON inserted.[SalesOrderID] = [Sales].[SalesOrderHeader].[SalesOrderID];
UPDATE [Person].[Person] 
SET [Demographics].modify('declare default element namespace 
"http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/IndividualSurvey"; 
replace value of (/IndividualSurvey/TotalPurchaseYTD)[1] 
with data(/IndividualSurvey/TotalPurchaseYTD)[1] + sql:column ("inserted.LineTotal")') 
FROM inserted 
INNER JOIN [Sales].[SalesOrderHeader] AS SOH
ON inserted.[SalesOrderID] = SOH.[SalesOrderID] 
INNER JOIN [Sales].[Customer] AS C
ON SOH.[CustomerID] = C.[CustomerID]
WHERE C.[PersonID] = [Person].[Person].[BusinessEntityID];
END;
UPDATE [Sales].[SalesOrderHeader]
SET [Sales].[SalesOrderHeader].[SubTotal] = 
(SELECT SUM([Sales].[SalesOrderDetail].[LineTotal])
FROM [Sales].[SalesOrderDetail]
WHERE [Sales].[SalesOrderHeader].[SalesOrderID] = [Sales].[SalesOrderDetail].[SalesOrderID])
WHERE [Sales].[SalesOrderHeader].[SalesOrderID] IN (SELECT inserted.[SalesOrderID] FROM inserted);
UPDATE [Person].[Person] 
SET [Demographics].modify('declare default element namespace 
"http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/IndividualSurvey"; 
replace value of (/IndividualSurvey/TotalPurchaseYTD)[1] 
with data(/IndividualSurvey/TotalPurchaseYTD)[1] - sql:column("deleted.LineTotal")') 
FROM deleted 
INNER JOIN [Sales].[SalesOrderHeader] 
ON deleted.[SalesOrderID] = [Sales].[SalesOrderHeader].[SalesOrderID] 
INNER JOIN [Sales].[Customer]
ON [Sales].[Customer].[CustomerID] = [Sales].[SalesOrderHeader].[CustomerID]
WHERE [Sales].[Customer].[PersonID] = [Person].[Person].[BusinessEntityID];
END TRY
BEGIN CATCH
EXECUTE [dbo].[uspPrintError];
IF @@TRANCOUNT > 0
BEGIN
ROLLBACK TRANSACTION;
END
EXECUTE [dbo].[uspLogError];
END CATCH;
END;

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'AFTER INSERT, DELETE, UPDATE trigger that inserts a row in the TransactionHistory table, updates ModifiedDate in SalesOrderDetail and updates the SalesOrderHeader.SubTotal column.', @level0type = N'SCHEMA', @level0name = N'Sales', @level1type = N'TABLE', @level1name = N'SalesOrderDetail', @level2type = N'TRIGGER', @level2name = N'iduSalesOrderDetail';

