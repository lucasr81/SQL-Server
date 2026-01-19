--Criando banco de Dados com SQL Server usando sintaxe minima--
CREATE DATABASE Biblioteca

--Criando banco de dados com SQL server sintaxe estendida--
CREATE DATABASE Biblioteca ON PRIMARY
(NAME = Biblioteca,
FILENAME = 'C:\SQL\Biblioteca.mdf',
SIZE = 8MB,
MAXSIZE = 15MB,
FILEGROWTH = 10%)
LOG ON(
NAME = Biblioteca_log,
FILENAME = 'C:\SQL\Biblioteca.ldf',
SIZE = 1MB,
FILEGROWTH = 1MB)
GO

--Consultar bancos existentes--
	SELECT name
	FROM master.sys.databases
	ORDER BY name;

	EXEC sp_databases;

--Selecionar o banco a usar--
USE Biblioteca;

--Obter informaões sobre um banco especifico
EXEC sp_helpdb Biblioteca;

--Excluir um banco de dados--
DROP DATABASE IF EXISTS Biblioteca;

--Ecluir um banco de dados em uso--
USE MASTER
GO
ALTER DATABASE Biblioteca
SET SINGLE_USER WITH ROLLBACK IMMEDIATE
DROP DATABASE Biblioteca