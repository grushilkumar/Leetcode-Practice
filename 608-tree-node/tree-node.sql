-- Write your PostgreSQL query statement below
with parent as 
(select id,
case when p_id is null then 'Root' end as type
from tree)

select distinct x.id,
case 
when x.type is not null then x.type
when t.p_id is null then 'Leaf'
when t.p_id is not null and x.type is null then 'Inner' end as type
from 
tree t 
right join parent x on t.p_id = x.id; 