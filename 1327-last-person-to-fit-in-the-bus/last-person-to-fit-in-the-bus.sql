-- Write your PostgreSQL query statement below

select x.person_name from
(select person_name,weight,turn,sum(weight) over(order by turn)
from queue order by turn) x where x.sum<=1000 order by x.sum desc limit 1;