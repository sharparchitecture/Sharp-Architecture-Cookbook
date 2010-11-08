CREATE TABLE [HumanResources].[EmployeeDepartmentHistory] (
    [BusinessEntityID] INT      NOT NULL,
    [DepartmentID]     SMALLINT NOT NULL,
    [ShiftID]          TINYINT  NOT NULL,
    [StartDate]        DATE     NOT NULL,
    [EndDate]          DATE     NULL,
    [ModifiedDate]     DATETIME NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employee department transfers.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employee identification number. Foreign key to Employee.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Department in which the employee worked including currently. Foreign key to Department.DepartmentID.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'COLUMN', @level2name = N'DepartmentID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Identifies which 8-hour shift the employee works. Foreign key to Shift.Shift.ID.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'COLUMN', @level2name = N'ShiftID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the employee started work in the department.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the employee left the department. NULL = Current department.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeeDepartmentHistory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

