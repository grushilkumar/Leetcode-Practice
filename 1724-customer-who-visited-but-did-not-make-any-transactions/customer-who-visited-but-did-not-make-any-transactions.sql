-- Write your PostgreSQL query statement below
with a as (select v.customer_id, count(case when t.transaction_id is null then 1 end) as count_no_trans from visits v
left join transactions t on v.visit_id = t.visit_id
group by v.customer_id)

select * from a where count_no_trans>0;
