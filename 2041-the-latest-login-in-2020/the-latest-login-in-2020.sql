-- Write your PostgreSQL query statement below
select user_id,time_stamp as last_stamp from
(select *,
dense_rank() over(partition by user_id order by time_stamp desc) as rank
from logins where to_char(time_stamp,'YYYY') = '2020')
where rank =1;