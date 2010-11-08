CREATE TABLE [Production].[Culture] (
    [CultureID]    NCHAR (6)    NOT NULL,
    [Name]         [dbo].[Name] NOT NULL,
    [ModifiedDate] DATETIME     NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table containing the languages in which some AdventureWorks data is stored.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Culture records.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture', @level2type = N'COLUMN', @level2name = N'CultureID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Culture description.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Culture', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

