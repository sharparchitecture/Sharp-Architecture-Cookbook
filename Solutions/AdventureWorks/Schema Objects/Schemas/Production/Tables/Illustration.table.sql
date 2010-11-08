CREATE TABLE [Production].[Illustration] (
    [IllustrationID] INT      IDENTITY (1, 1) NOT NULL,
    [Diagram]        XML      NULL,
    [ModifiedDate]   DATETIME NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Bicycle assembly diagrams.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Illustration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Illustration records.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Illustration', @level2type = N'COLUMN', @level2name = N'IllustrationID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Illustrations used in manufacturing instructions. Stored as XML.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Illustration', @level2type = N'COLUMN', @level2name = N'Diagram';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Illustration', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

