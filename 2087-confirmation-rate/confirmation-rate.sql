-- Write your PostgreSQL query statement below

with a as (select s.user_id,
round(sum(case when c.action='confirmed' then 1 end)/count(c.user_id)::numeric,2) as confirmation_rate
from signups s 
left join confirmations c on s.user_id = c.user_id 
group by s.user_id)

select user_id,
case 
    when confirmation_rate is not null then confirmation_rate else 0 end as confirmation_rate
from a;
