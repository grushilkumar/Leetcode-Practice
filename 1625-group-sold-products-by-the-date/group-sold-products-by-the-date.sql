-- Write your PostgreSQL query statement below
select distinct sell_date,count( DISTINCT product ) as num_sold,
string_agg(distinct product,',') as products
from activities
group by sell_date order by sell_date;