-- Write your PostgreSQL query statement below
select product_id,'store1' as store ,store1 as price from products group by product_id,store1 having store1 is not null
union
select product_id,'store2' as store ,store2 as price from products group by product_id,store2 having store2 is not null
union 
select product_id,'store3' as store ,store3 as price from products group by product_id,store3 having store3 is not null
order by store;