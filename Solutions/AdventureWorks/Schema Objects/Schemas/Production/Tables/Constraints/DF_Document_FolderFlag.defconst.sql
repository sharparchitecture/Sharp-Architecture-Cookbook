ALTER TABLE [Production].[Document]
    ADD CONSTRAINT [DF_Document_FolderFlag] DEFAULT ((0)) FOR [FolderFlag];

