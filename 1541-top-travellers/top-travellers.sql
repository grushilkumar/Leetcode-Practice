# Write your MySQL query statement below
select u.name, 
case
when sum(distance) then sum(distance)  
else 0
end as travelled_distance  
from rides r 
right join users u on u.id = r.user_id
group by u.id,u.name order by travelled_distance desc,name asc ;