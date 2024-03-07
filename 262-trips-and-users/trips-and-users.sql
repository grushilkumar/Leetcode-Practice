-- Write your PostgreSQL query statement below
with x as 
(select *
from  trips where client_id not in 
(select users_id from users where banned = 'Yes'))

select * from
(select 
request_at as Day,coalesce(round(sum(case when status like 'cancelled%' then 1 end)/count(request_at)::numeric,2),0) as "Cancellation Rate"
from x 
where client_id  not in (select users_id from users where banned = 'Yes')
and  driver_id   not in (select users_id from users where banned = 'Yes')
and request_at between '2013-10-01' and '2013-10-03'
group by request_at 
);