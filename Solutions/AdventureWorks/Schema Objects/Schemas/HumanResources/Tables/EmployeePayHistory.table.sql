CREATE TABLE [HumanResources].[EmployeePayHistory] (
    [BusinessEntityID] INT      NOT NULL,
    [RateChangeDate]   DATETIME NOT NULL,
    [Rate]             MONEY    NOT NULL,
    [PayFrequency]     TINYINT  NOT NULL,
    [ModifiedDate]     DATETIME NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employee pay history.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employee identification number. Foreign key to Employee.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date the change in pay is effective', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'COLUMN', @level2name = N'RateChangeDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Salary hourly rate.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'COLUMN', @level2name = N'Rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'1 = Salary received monthly, 2 = Salary received biweekly', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'COLUMN', @level2name = N'PayFrequency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'EmployeePayHistory', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

