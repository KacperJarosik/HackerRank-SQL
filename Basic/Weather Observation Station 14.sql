SELECT TOP 1 CONVERT(decimal(10, 4), lat_n) FROM station 
WHERE lat_n < 137.2345
ORDER BY lat_n DESC;
