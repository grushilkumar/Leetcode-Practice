-- Write your PostgreSQL query statement below
select x.dep_name as Department ,x.name as Employee ,x.salary as Salary  from
(select e.*,d.name as dep_name,
dense_rank() over(partition by e.departmentId order by salary desc) as rnk
from employee e 
join department d on d.id = e.departmentId) x
where x.rnk<=3;