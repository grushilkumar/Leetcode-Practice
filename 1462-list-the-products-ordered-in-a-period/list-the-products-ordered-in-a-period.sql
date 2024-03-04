-- Write your PostgreSQL query statement below
select product_name,unit from 
(select 
p.product_name,
sum(case when to_char(o.order_date,'YYYY-MM')='2020-02'  then o.unit end ) as unit
from orders o
join products p on p.product_id = o.product_id
group by  p.product_name) where unit>=100;