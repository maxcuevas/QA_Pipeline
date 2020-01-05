sqlcmd -S (localdb)\mssqllocaldb -i C:\Workspace\QA_Pipeline\restore_databases.sql 

sqlcmd -S (localdb)\mssqllocaldb  -d QA -i C:\Workspace\QA_Pipeline\clear_qa_results.sql 

sqlcmd -S (localdb)\mssqllocaldb  -d QA -i C:\Workspace\QA_Pipeline\run_qa_rules.sql -o C:\Workspace\QA_Pipeline\rows_affected.txt

sqlcmd -S (localdb)\mssqllocaldb  -d QA -i C:\Workspace\QA_Pipeline\get_qa_errors.sql -o C:\Workspace\QA_Pipeline\results.csv -W -w 999 -s","
REM -s "," is to make the separators commas
REM -W removes the trailing whitespaces
REM -w 999 sets the rowwidth to 999 characters. This is to make sure the line does not wrap over. If the line wrapped over to the next line, then excel wont work properly

sqlcmd -S (localdb)\mssqllocaldb -i C:\Workspace\QA_Pipeline\drop_databases.sql