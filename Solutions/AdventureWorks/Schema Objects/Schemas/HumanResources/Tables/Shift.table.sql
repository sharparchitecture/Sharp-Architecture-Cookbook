CREATE TABLE [HumanResources].[Shift] (
    [ShiftID]      TINYINT      IDENTITY (1, 1) NOT NULL,
    [Name]         [dbo].[Name] NOT NULL,
    [StartTime]    TIME (7)     NOT NULL,
    [EndTime]      TIME (7)     NOT NULL,
    [ModifiedDate] DATETIME     NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Work shift lookup table.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Shift records.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'COLUMN', @level2name = N'ShiftID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Shift description.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Shift start time.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'COLUMN', @level2name = N'StartTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Shift end time.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'COLUMN', @level2name = N'EndTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Shift', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

