-- Write your PostgreSQL query statement below

with conf as(select user_id,count(1) from confirmations where action = 'confirmed' group by user_id),
total as(select user_id,count(1) from confirmations group by user_id),
conf_tab as(select s.user_id,c.count as conf_count from signups s left join conf  c on  s.user_id = c.user_id),
total_tab as(select s.user_id,c.count as total_count from signups s left join total  c on  s.user_id = c.user_id)


select c.user_id,
case
    when conf_count is null then 0 else round(conf_count/total_count::numeric,2) end as confirmation_rate    
from conf_tab c
join total_tab t on c.user_id = t.user_id;
