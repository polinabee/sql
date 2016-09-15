/*The total score of a hacker is the sum of their maximum scores for all of the challenges. 
Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. 
If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. 
Exclude all hackers with a total score of  from your result.*/

select hackers.hacker_id, hackers.name, sum(mscore) as tscore 
from (select hacker_id, max(score) as mscore from submissions group by hacker_id,challenge_id) as t, hackers
where hackers.hacker_id = t.hacker_id 
group by hacker_id having tscore > 0
order by tscore desc, hackers.hacker_id asc
