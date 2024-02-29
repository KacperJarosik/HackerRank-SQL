-- Finding a city with the shortest name
SELECT TOP 1 CITY, LEN(CITY) AS length FROM STATION ORDER BY LEN(CITY), CITY;

-- Find the city with the longest name
SELECT TOP 1 CITY, LEN(CITY) AS length FROM STATION ORDER BY LEN(CITY) DESC, CITY;
