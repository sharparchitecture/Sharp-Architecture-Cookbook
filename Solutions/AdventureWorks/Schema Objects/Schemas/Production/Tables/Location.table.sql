CREATE TABLE [Production].[Location] (
    [LocationID]   SMALLINT       IDENTITY (1, 1) NOT NULL,
    [Name]         [dbo].[Name]   NOT NULL,
    [CostRate]     SMALLMONEY     NOT NULL,
    [Availability] DECIMAL (8, 2) NOT NULL,
    [ModifiedDate] DATETIME       NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product inventory and manufacturing locations.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Location records.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'COLUMN', @level2name = N'LocationID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Location description.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Standard hourly cost of the manufacturing location.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'COLUMN', @level2name = N'CostRate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Work capacity (in hours) of the manufacturing location.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'COLUMN', @level2name = N'Availability';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Production', @level1type = N'TABLE', @level1name = N'Location', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

