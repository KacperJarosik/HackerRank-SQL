SELECT CONVERT(decimal(10, 4), SUM(lat_n)) FROM station 
WHERE lat_n > 38.7880 AND lat_n < 137.2345;
