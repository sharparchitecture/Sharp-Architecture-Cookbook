CREATE TABLE [Production].[ScrapReason] (
    [ScrapReasonID] SMALLINT     IDENTITY (1, 1) NOT NULL,
    [Name]          [dbo].[Name] NOT NULL,
    [ModifiedDate]  DATETIME     NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Manufacturing failure reasons lookup table.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for ScrapReason records.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason', @level2type = N'COLUMN', @level2name = N'ScrapReasonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Failure description.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'ScrapReason', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

