-- Write your PostgreSQL query statement below
select 
round(sum(case when customer_pref_delivery_date=order_date then 1 end)/count(*)::numeric,4)*100  as immediate_percentage 
from
(select d.*,
dense_rank() over(partition by customer_id order by order_date) as first_order
from delivery d
order by order_date)
where first_order = 1;
