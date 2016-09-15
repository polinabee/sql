select CASE 
    WHEN a+b <= c OR b+c <= a OR c+a <= B THEN "Not A Triangle"
    WHEN a = b AND b = c THEN "Equilateral"
    WHEN (a = b OR b = c OR c = a) and !(a=b and b=c) THEN "Isosceles"
    ELSE "Scalene"
END as type from triangles