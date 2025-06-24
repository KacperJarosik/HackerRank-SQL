DECLARE @i INT = 1;
DECLARE @k INT;
DECLARE @line NVARCHAR(MAX);

WHILE @i <21
BEGIN
    SET @k = @i;
    SET @line = '';
    WHILE @k > 0
    BEGIN
        SET @line = @line + '* ';
        SET @k = @k - 1;
    END
    PRINT @line;
    SET @i = @i + 1;
END
