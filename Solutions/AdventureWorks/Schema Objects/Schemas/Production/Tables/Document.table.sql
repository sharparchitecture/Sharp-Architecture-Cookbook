CREATE TABLE [Production].[Document] (
    [DocumentNode]    [sys].[hierarchyid]        NOT NULL,
    [DocumentLevel]   AS                         ([DocumentNode].[GetLevel]()),
    [Title]           NVARCHAR (50)              NOT NULL,
    [Owner]           INT                        NOT NULL,
    [FolderFlag]      BIT                        NOT NULL,
    [FileName]        NVARCHAR (400)             NOT NULL,
    [FileExtension]   NVARCHAR (8)               NOT NULL,
    [Revision]        NCHAR (5)                  NOT NULL,
    [ChangeNumber]    INT                        NOT NULL,
    [Status]          TINYINT                    NOT NULL,
    [DocumentSummary] NVARCHAR (MAX)             NULL,
    [Document]        VARBINARY (MAX) FILESTREAM NULL,
    [rowguid]         UNIQUEIDENTIFIER           ROWGUIDCOL NOT NULL,
    [ModifiedDate]    DATETIME                   NOT NULL,
    UNIQUE NONCLUSTERED ([rowguid] ASC) WITH (ALLOW_PAGE_LOCKS = ON, ALLOW_ROW_LOCKS = ON, PAD_INDEX = OFF, IGNORE_DUP_KEY = OFF, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product maintenance documents.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Document records.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'DocumentNode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Depth in the document hierarchy.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'DocumentLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Title of the document.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employee who controls the document.  Foreign key to Employee.BusinessEntityID', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'Owner';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 = This is a folder, 1 = This is a document.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'FolderFlag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'File name of the document', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'FileName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'File extension indicating the document type. For example, .doc or .txt.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'FileExtension';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Revision number of the document.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'Revision';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Engineering change approval number.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'ChangeNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'1 = Pending approval, 2 = Approved, 3 = Obsolete', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Document abstract.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'DocumentSummary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Complete document.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'Document';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Required for FileStream.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Document', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

