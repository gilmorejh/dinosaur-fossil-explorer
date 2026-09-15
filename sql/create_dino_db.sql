IF DB_ID('DinosaurFossilExplorer') IS NULL
    CREATE DATABASE DinosaurFossilExplorer;

USE DinosaurFossilExplorer;

SELECT DB_NAME() AS CurrentDatabase;