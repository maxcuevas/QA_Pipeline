--This is where the query kept in a field will be stored per run
DECLARE @Query nvarchar(500)

--this is the cursor where each query is run sequentially
DECLARE cursor_product CURSOR
	FOR SELECT 
			query
		FROM 
			queries;

open cursor_product

--Store the first query 
FETCH NEXT FROM cursor_product INTO 
    @Query 
 
WHILE @@FETCH_STATUS = 0
    BEGIN

		EXECUTE sp_executesql @Query
        FETCH NEXT FROM cursor_product INTO 
            @Query
    END;
	
CLOSE cursor_product;
DEALLOCATE cursor_product;