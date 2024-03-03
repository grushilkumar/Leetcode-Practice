-- Write your PostgreSQL query statement below
select user_id,
case when confirmation_rate != 0 then confirmation_rate
else 0
end as confirmation_rate 
from
(select
s.user_id,
round(sum(case when c.action= 'confirmed' then 1 end)/count(c.user_id):: numeric,2) as confirmation_rate 
from Signups s 
left join confirmations c on s.user_id = c.user_id
group by s.user_id);