CREATE TRIGGER [Person].[iuPerson] ON [Person].[Person] 
AFTER INSERT, UPDATE NOT FOR REPLICATION AS 
BEGIN
DECLARE @Count int;
SET @Count = @@ROWCOUNT;
IF @Count = 0 
RETURN;
SET NOCOUNT ON;
IF UPDATE([BusinessEntityID]) OR UPDATE([Demographics]) 
BEGIN
UPDATE [Person].[Person] 
SET [Person].[Person].[Demographics] = N'<IndividualSurvey xmlns="http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/IndividualSurvey"> 
<TotalPurchaseYTD>0.00</TotalPurchaseYTD> 
</IndividualSurvey>' 
FROM inserted 
WHERE [Person].[Person].[BusinessEntityID] = inserted.[BusinessEntityID] 
AND inserted.[Demographics] IS NULL;

UPDATE [Person].[Person] 
SET [Demographics].modify(N'declare default element namespace "http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/IndividualSurvey"; 
insert <TotalPurchaseYTD>0.00</TotalPurchaseYTD> 
as first 
into (/IndividualSurvey)[1]') 
FROM inserted 
WHERE [Person].[Person].[BusinessEntityID] = inserted.[BusinessEntityID] 
AND inserted.[Demographics] IS NOT NULL 
AND inserted.[Demographics].exist(N'declare default element namespace 
"http://schemas.microsoft.com/sqlserver/2004/07/adventure-works/IndividualSurvey"; 
/IndividualSurvey/TotalPurchaseYTD') <> 1;
END;
END;

GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'AFTER INSERT, UPDATE trigger inserting Individual only if the Customer does not exist in the Store table and setting the ModifiedDate column in the Person table to the current date.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Person', @level2type = N'TRIGGER', @level2name = N'iuPerson';

