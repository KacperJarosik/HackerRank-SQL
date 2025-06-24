SELECT CONVERT(decimal(10, 4), long_w) FROM station 
WHERE lat_n = ( SELECT MIN(lat_n) FROM station WHERE lat_n > 38.7780)
