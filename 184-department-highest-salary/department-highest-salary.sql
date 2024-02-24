-- Write your PostgreSQL query statement below
select  d1.name as Department,e1.name as Employee ,e1.salary from Employee e1
join Department  d1 on d1.id = e1.departmentId
where (d1.name,e1.salary) in 
(select d.name,MAX(e.salary) from Employee e
join Department  d on d.id = e.departmentId group by d.name);