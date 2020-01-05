RESTORE DATABASE qa
FROM DISK = 'C:\Workspace\QA_Pipeline\qa.bak'
WITH REPLACE

RESTORE DATABASE main_database
FROM DISK = 'C:\Workspace\QA_Pipeline\main_database.bak'
WITH REPLACE