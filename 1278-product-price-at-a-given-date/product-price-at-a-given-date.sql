-- Write your PostgreSQL query statement below
with tab as
(
(select x.* from
(select *,
dense_rank() over(partition by product_id  order by change_date desc) as price_rank
from products where change_date<='2019-08-16')x where x.price_rank =1)
union
(select y.* from
(select product_id,(10) as new_price,change_date,
dense_rank() over(partition by product_id  order by change_date desc) as price_rank
from products where change_date>'2019-08-16') y where y.price_rank = 1)
)
select product_id ,new_price as price from
(select *,
dense_rank() over(partition by product_id  order by change_date asc) as new_price_rank
from tab) where new_price_rank =1;

