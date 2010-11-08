CREATE FULLTEXT INDEX ON [HumanResources].[JobCandidate]
    ([Resume] LANGUAGE 1033)
    KEY INDEX [PK_JobCandidate_JobCandidateID]
    ON [AW2008FullTextCatalog];

