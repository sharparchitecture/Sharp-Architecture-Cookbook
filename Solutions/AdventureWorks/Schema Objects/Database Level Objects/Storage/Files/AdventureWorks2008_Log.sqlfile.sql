ALTER DATABASE [$(DatabaseName)]
    ADD LOG FILE (NAME = [AdventureWorks2008_Log], FILENAME = '$(DefaultLogPath)$(DatabaseName)_Log.ldf', MAXSIZE = 2097152 MB, FILEGROWTH = 16384 KB);

