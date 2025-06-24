DECLARE @i INT = 20;
DECLARE @K INT;
DECLARE @line NVARCHAR(MAX);

WHILE @i > 0
BEGIN
    SET @k = @I;
    SET @line = '';
    WHILE @k > 0
    BEGIN 
        SET @line = @line + '* ';
        SET @k = @K - 1;
    END
    PRINT @line;
    SET @i = @i - 1;
END
