-- Write your PostgreSQL query statement below
select x.customer_id ,x.count_no_trans from
(select v.customer_id,count(case when t.transaction_id is null then 1 end) as count_no_trans 
from visits v
left join transactions t on v.visit_id = t.visit_id
group by v.customer_id) x where x.count_no_trans>0;