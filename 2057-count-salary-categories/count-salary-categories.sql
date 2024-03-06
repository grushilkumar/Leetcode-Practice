-- Write your PostgreSQL query statement below
WITH categories AS (
    SELECT 'Low Salary' AS category
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
)

, info as(select 
case
when income<20000 then 'Low Salary'
when income between 20000 and 50000 then 'Average Salary'
when income>50000 then 'High Salary'
end as category
from accounts)

select c.category,count(i.category) as accounts_count  from 
categories c
left join info i ON c.category = i.category
group by c.category;