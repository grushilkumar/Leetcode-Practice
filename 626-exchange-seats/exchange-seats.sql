# Write your MySQL query statement below
with a as 
(select
id,student, 
lag(student) over(order by id) as prev_student,
lead(student) over(order by id) as next_student,
row_number() over (order by id) as row_num
from seat)

select id,prev_student as student
from a where id%2=0
union
select id,coalesce(next_student,student) as student
from a where id%2=1
order by id;