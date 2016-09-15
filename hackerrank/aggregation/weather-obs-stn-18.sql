/*query the manhattan distance and round it to a scale of 4 decimal places*/

select round((abs(max(lat_n)- max(long_w))+ abs(min(lat_n)- min(long_w))),4) from station
