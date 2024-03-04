-- Write your PostgreSQL query statement below
select employee_id, name, reports_count, average_age  from
(select e1.employee_id,e1.name,
(select count(*) from employees e2 where e1.employee_id = e2.reports_to) as reports_count,
(select ROUND(AVG(age)) from employees e2 where e1.employee_id = e2.reports_to) as average_age
 from Employees e1) where reports_count>0
 order by employee_id ;