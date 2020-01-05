CREATE TABLE [dbo].[results]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [database] VARCHAR(250) NOT NULL, 
    [table] VARCHAR(250) NOT NULL,
    [rule_that_broke] VARCHAR(250) NOT NULL
)
