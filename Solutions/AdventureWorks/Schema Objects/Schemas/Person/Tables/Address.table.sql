CREATE TABLE [Person].[Address] (
    [AddressID]       INT               IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [AddressLine1]    NVARCHAR (60)     NOT NULL,
    [AddressLine2]    NVARCHAR (60)     NULL,
    [City]            NVARCHAR (30)     NOT NULL,
    [StateProvinceID] INT               NOT NULL,
    [PostalCode]      NVARCHAR (15)     NOT NULL,
    [SpatialLocation] [sys].[geography] NULL,
    [rowguid]         UNIQUEIDENTIFIER  ROWGUIDCOL NOT NULL,
    [ModifiedDate]    DATETIME          NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Street address information for customers, employees, and vendors.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key for Address records.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'AddressID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'First street address line.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'AddressLine1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Second street address line.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'AddressLine2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Name of the city.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Unique identification number for the state or province. Foreign key to StateProvince table.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'StateProvinceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Postal code for the street address.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Latitude and longitude of this address.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'SpatialLocation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'rowguid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Person', @level1type = N'TABLE', @level1name = N'Address', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

