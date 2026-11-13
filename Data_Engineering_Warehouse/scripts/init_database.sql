/*
Create Database and Schemas

Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if already exists.
	If databased exists, it is dropped and recreated. Add three schemas bronze, silver, gold.

WARNING:
	Running this script will drop the entire 'DataWarehosue' database if it exists. All data 
	in the database will be GONE BE EVERY CAREFUL.
*/


-- Create Database 'DataWarehouse'

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
	END;
	GO

-- Create database call 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse
GO

-- Create Schemas bronze, silver, gold

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;