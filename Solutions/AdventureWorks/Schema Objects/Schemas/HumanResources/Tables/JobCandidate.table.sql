CREATE TABLE [HumanResources].[JobCandidate] (
    [JobCandidateID]   INT                                                      IDENTITY (1, 1) NOT NULL,
    [BusinessEntityID] INT                                                      NULL,
    [Resume]           XML(CONTENT [HumanResources].[HRResumeSchemaCollection]) NULL,
    [ModifiedDate]     DATETIME                                                 NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Résumés submitted to Human Resources by job applicants.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for JobCandidate records.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'COLUMN', @level2name = N'JobCandidateID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Employee identification number if applicant was hired. Foreign key to Employee.BusinessEntityID.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'COLUMN', @level2name = N'BusinessEntityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Résumé in XML format.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'COLUMN', @level2name = N'Resume';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'HumanResources', @level1type = N'TABLE', @level1name = N'JobCandidate', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

