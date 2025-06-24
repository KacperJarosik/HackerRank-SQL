--Manhattan distance:|a-c|+|b-d|
SELECT convert(decimal(10,4),ABS(MIN(lat_n)-MAX(lat_n))+ABS(MIN(long_w)-MAX(long_w))) FROM station;
