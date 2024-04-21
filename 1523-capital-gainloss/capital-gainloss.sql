-- Write your PostgreSQL query statement below
with x as (select stock_name,
case 
when operation = 'Buy' then -price
else price end as price from stocks)


select stock_name,sum(price) as capital_gain_loss  from x
group by stock_name;