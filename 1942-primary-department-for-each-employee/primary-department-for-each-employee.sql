-- Write your PostgreSQL query statement below
select employee_id,department_id from
(select e1.employee_id,
case
when count(e1.employee_id)>1 then (select department_id from employee e2 where primary_flag = 'Y' and e1.employee_id =e2.employee_id limit 1)
else (select department_id from employee e3 where  e1.employee_id = e3.employee_id limit 1)
end as department_id
from employee e1 group by e1.employee_id) where department_id is not null;