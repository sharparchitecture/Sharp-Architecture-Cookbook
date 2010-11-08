CREATE TABLE [HumanResources].[Department] (
    [DepartmentID] SMALLINT     IDENTITY (1, 1) NOT NULL,
    [Name]         [dbo].[Name] NOT NULL,
    [GroupName]    [dbo].[Name] NOT NULL,
    [ModifiedDate] DATETIME     NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Lookup table containing the departments within the Adventure Works Cycles company.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Department records.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department', @level2type = N'COLUMN', @level2name = N'DepartmentID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the department.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the group to which the department belongs.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department', @level2type = N'COLUMN', @level2name = N'GroupName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Department', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

