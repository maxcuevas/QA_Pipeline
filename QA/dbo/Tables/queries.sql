CREATE TABLE [dbo].[queries]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [database] VARCHAR(250) NOT NULL, 
    [table] VARCHAR(250) NOT NULL,
    [query] VARCHAR(250) NOT NULL 
)
