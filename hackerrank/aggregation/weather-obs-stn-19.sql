/*Query the Euclidean Distance between points p1 and p2 and format your answer to display 4 decimal digits.*/

select round(sqrt(power((min(long_w)- min(lat_n)),2) +power((max(long_w)- max(lat_n)),2)),4) from station
