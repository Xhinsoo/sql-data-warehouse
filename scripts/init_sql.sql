/*
=========================================
Create Database and Schemas
Script Purpose:
This script creates new database named "DataWarehouse". Additionally, the script sets up three schemas "bronze", "silver" and "gold".
*/


--DROP and recreate the "DataWareHouse" database--
Use Master;
GO
--DROP and recreate the 'Datawarehouse'
IF EXISTS(SELECT 1 FROM sys.databases WHERE name ="DataWarehouse")
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse;


CREATE DATABASE DataWarehouse;
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
