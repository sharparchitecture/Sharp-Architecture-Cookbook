CREATE TABLE [HumanResources].[Employee] (
    [BusinessEntityID]  INT                 NOT NULL,
    [NationalIDNumber]  NVARCHAR (15)       NOT NULL,
    [LoginID]           NVARCHAR (256)      NOT NULL,
    [OrganizationNode]  [sys].[hierarchyid] NULL,
    [OrganizationLevel] AS                  ([OrganizationNode].[GetLevel]()),
    [JobTitle]          NVARCHAR (50)       NOT NULL,
    [BirthDate]         DATE                NOT NULL,
    [MaritalStatus]     NCHAR (1)           NOT NULL,
    [Gender]            NCHAR (1)           NOT NULL,
    [HireDate]          DATE                NOT NULL,
    [SalariedFlag]      [dbo].[Flag]        NOT NULL,
    [VacationHours]     SMALLINT            NOT NULL,
    [SickLeaveHours]    SMALLINT            NOT NULL,
    [CurrentFlag]       [dbo].[Flag]        NOT NULL,
    [rowguid]           UNIQUEIDENTIFIER    ROWGUIDCOL NOT NULL,
    [ModifiedDate]      DATETIME            NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employee information such as salary, department, and title.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Employee records.  Foreign key to BusinessEntity.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique national identification number such as a social security number.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'NationalIDNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Network login.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'LoginID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Where the employee is located in corporate hierarchy.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'OrganizationNode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'The depth of the employee in the corporate hierarchy.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'OrganizationLevel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Work title such as Buyer or Sales Representative.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'JobTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date of birth.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'BirthDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'M = Married, S = Single', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'MaritalStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'M = Male, F = Female', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employee hired on this date.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'HireDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Job classification. 0 = Hourly, not exempt from collective bargaining. 1 = Salaried, exempt from collective bargaining.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'SalariedFlag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Number of available vacation hours.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'VacationHours';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Number of available sick leave hours.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'SickLeaveHours';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'0 = Inactive, 1 = Active', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'CurrentFlag';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'Employee', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

