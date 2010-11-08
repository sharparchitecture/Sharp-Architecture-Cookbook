ALTER DATABASE [$(DatabaseName)]
    ADD FILE (NAME = [AdventureWorks2008_Data], FILENAME = '$(DefaultDataPath)$(DatabaseName)_Data.mdf', FILEGROWTH = 16384 KB) TO FILEGROUP [PRIMARY];


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary data file for the AdventureWorks2008 sample database.', @level0type = N'FILEGROUP', @level0name = N'PRIMARY', @level1type = N'LOGICAL FILE NAME', @level1name = N'AdventureWorks2008_Data';

