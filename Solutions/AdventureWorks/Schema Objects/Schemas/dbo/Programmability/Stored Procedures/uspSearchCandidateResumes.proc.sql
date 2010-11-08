CREATE PROCEDURE [dbo].[uspSearchCandidateResumes]
@searchString [nvarchar](1000),   
@useInflectional [bit]=0,
@useThesaurus [bit]=0,
@language[int]=0
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;
DECLARE @string nvarchar(1050)
IF @language = NULL OR @language = 0 
BEGIN 
SELECT @language =CONVERT(int, serverproperty('lcid'))  
END

IF @useThesaurus = 1 AND @useInflectional = 1  
BEGIN
SELECT FT_TBL.[JobCandidateID], KEY_TBL.[RANK] FROM [HumanResources].[JobCandidate] AS FT_TBL 
INNER JOIN FREETEXTTABLE([HumanResources].[JobCandidate],*, @searchString,LANGUAGE @language) AS KEY_TBL
ON  FT_TBL.[JobCandidateID] =KEY_TBL.[KEY]
END
ELSE IF @useThesaurus = 1
BEGIN
SELECT @string ='FORMSOF(THESAURUS,"'+@searchString +'"'+')'      
SELECT FT_TBL.[JobCandidateID], KEY_TBL.[RANK] FROM [HumanResources].[JobCandidate] AS FT_TBL 
INNER JOIN CONTAINSTABLE([HumanResources].[JobCandidate],*, @string,LANGUAGE @language) AS KEY_TBL
ON  FT_TBL.[JobCandidateID] =KEY_TBL.[KEY]
END
ELSE IF @useInflectional = 1
BEGIN
SELECT @string ='FORMSOF(INFLECTIONAL,"'+@searchString +'"'+')'
SELECT FT_TBL.[JobCandidateID], KEY_TBL.[RANK] FROM [HumanResources].[JobCandidate] AS FT_TBL 
INNER JOIN CONTAINSTABLE([HumanResources].[JobCandidate],*, @string,LANGUAGE @language) AS KEY_TBL
ON  FT_TBL.[JobCandidateID] =KEY_TBL.[KEY]
END

ELSE --base case, plain CONTAINSTABLE
BEGIN
SELECT @string='"'+@searchString +'"'
SELECT FT_TBL.[JobCandidateID],KEY_TBL.[RANK] FROM [HumanResources].[JobCandidate] AS FT_TBL 
INNER JOIN CONTAINSTABLE([HumanResources].[JobCandidate],*,@string,LANGUAGE @language) AS KEY_TBL
ON  FT_TBL.[JobCandidateID] =KEY_TBL.[KEY]
END
END;
