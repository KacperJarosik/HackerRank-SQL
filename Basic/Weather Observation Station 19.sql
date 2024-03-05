--Euclidean distance: ((a-b)^2+(c-d)^2)^0.5
SELECT convert(decimal(10,4),SQRT(POWER((MIN(lat_n) - MAX(lat_n)),2) + POWER((MIN(long_w) - MAX(long_w)),2))) FROM station;
