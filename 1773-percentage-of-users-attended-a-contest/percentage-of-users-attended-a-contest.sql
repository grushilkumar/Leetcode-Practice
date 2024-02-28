-- Write your PostgreSQL query statement below
with  total as (select count(*) as total_users from users)
(select
r.contest_id,
round(( count(*)*100::numeric)/(SELECT total_users FROM total),2) as percentage 
from Register r
join  users u on u.user_id = r.user_id  
group by r.contest_id)
order by percentage desc,contest_id;