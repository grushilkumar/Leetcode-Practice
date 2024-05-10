-- Write your PostgreSQL query statement below
with a as (select customer_id,v.visit_id as a_visit,t.visit_id as b_visit,amount from visits v
left join transactions t on v.visit_id = t.visit_id)

select customer_id,count(1) as count_no_trans  FROM a where b_visit is null
group by customer_id ;
