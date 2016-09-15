select concat(name, '(',left(occupation,1),')') from occupations order by name asc;
select concat('There are total ',counts,' ',lower(occupation),'s.') 
from (select occupation, count(occupation) as counts from occupations group by occupation) as t 
order by counts asc, occupation asc
