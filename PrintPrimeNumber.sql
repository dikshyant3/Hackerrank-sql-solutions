/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
DECLARE @table TABLE (PrimeNumber INT)
DECLARE @final AS VARCHAR(1500)
SET @final = ''
DECLARE @counter INT
SET @counter = 2
WHILE @counter <= 1000
BEGIN
    IF NOT EXISTS (
            SELECT PrimeNumber
            FROM @table
            WHERE @counter % PrimeNumber = 0)
        BEGIN 
            INSERT INTO @table SELECT @counter
            SET @final = @final + CAST(@counter AS VARCHAR(20))+'&' 
        END
    SET @counter = @counter + 1
END
SELECT SUBSTRING(@final,0,LEN(@final))
