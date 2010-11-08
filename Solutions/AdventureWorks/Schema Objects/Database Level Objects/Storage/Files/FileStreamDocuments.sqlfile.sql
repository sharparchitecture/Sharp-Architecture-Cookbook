ALTER DATABASE [$(DatabaseName)]
    ADD FILE (NAME = [FileStreamDocuments], FILENAME = '$(DefaultDataPath)FSDocuments') TO FILEGROUP [DocumentFileStreamGroup];

