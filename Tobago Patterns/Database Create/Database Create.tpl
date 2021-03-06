IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
CREATE LOGIN [NT AUTHORITY\NETWORK SERVICE] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO

USE [master]
GO

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'$Model.Name$')
BEGIN
  CREATE DATABASE [$Model.Name$]
END
GO

USE [$Model.Name$]
GO

IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'ASP.NET')
CREATE USER [ASP.NET] FOR LOGIN [NT AUTHORITY\NETWORK SERVICE] WITH DEFAULT_SCHEMA=[dbo]
GO