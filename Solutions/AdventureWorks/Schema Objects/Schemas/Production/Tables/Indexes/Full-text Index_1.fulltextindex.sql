CREATE FULLTEXT INDEX ON [Production].[Document]
    ([DocumentSummary] LANGUAGE 1033, [Document] TYPE COLUMN [FileExtension] LANGUAGE 1033)
    KEY INDEX [PK_Document_DocumentNode]
    ON [AW2008FullTextCatalog];

