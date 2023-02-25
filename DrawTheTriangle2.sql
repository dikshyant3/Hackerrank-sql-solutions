/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
DECLARE @COUNTER INT
SET @COUNTER = 1

WHILE(@COUNTER <= 20)

 

BEGIN
    PRINT replicate('* ',@COUNTER)
    SET @COUNTER = @COUNTER+1
END