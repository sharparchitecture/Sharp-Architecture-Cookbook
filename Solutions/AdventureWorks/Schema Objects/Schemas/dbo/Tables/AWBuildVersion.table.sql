CREATE TABLE [dbo].[AWBuildVersion] (
    [SystemInformationID] TINYINT       IDENTITY (1, 1) NOT NULL,
    [Database Version]    NVARCHAR (25) NOT NULL,
    [VersionDate]         DATETIME      NOT NULL,
    [ModifiedDate]        DATETIME      NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Current version number of the AdventureWorks2008 sample database.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AWBuildVersion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for AWBuildVersion records.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AWBuildVersion', @level2type = N'COLUMN', @level2name = N'SystemInformationID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Version number of the database in 9.yy.mm.dd.00 format.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AWBuildVersion', @level2type = N'COLUMN', @level2name = N'Database Version';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AWBuildVersion', @level2type = N'COLUMN', @level2name = N'VersionDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AWBuildVersion', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

