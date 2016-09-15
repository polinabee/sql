/* Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.*/

SELECT round(x.lat_n,4) from station x, station y
GROUP BY x.lat_n
HAVING SUM(SIGN(1-SIGN(y.lat_n-x.lat_n))) = (COUNT(*) +1)/2
