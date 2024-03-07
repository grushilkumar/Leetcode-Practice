-- Write your PostgreSQL query statement below
with r1 as
(select requester_id ,accepter_id  from RequestAccepted)
, r2 as
(select accepter_id as requester_id,requester_id as accepter_id from RequestAccepted)

select requester_id as id, count(requester_id) as num from
(select * from r1 
union all
select * from r2)
group by requester_id order by num desc limit 1;

-- select * from r2;