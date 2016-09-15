/*Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! 
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. 
Order your output in descending order by the total number of challenges in which the hacker earned a full score. 
If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.*/

select id, n from 
(select hackers.hacker_id as id, hackers.name as n, count(challenges.challenge_id) as wins
from submissions, challenges, difficulty, hackers
where   challenges.challenge_id = submissions.challenge_id 
    and difficulty.difficulty_level = challenges.difficulty_level
    and submissions.score = difficulty.score
    and submissions.hacker_id = hackers.hacker_id
group by 1 having wins > 1 ) as t
order by wins desc, id asc
