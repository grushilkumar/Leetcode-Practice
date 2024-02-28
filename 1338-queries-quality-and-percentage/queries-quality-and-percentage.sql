-- Write your PostgreSQL query statement below

select 
query_name,
round(sum(rating/position::numeric)/count(query_name),2) as quality,
round((count(case when rating<3 then 1 end)/count(rating):: numeric)*100,2) as poor_query_percentage 
from queries group by query_name having query_name is not null;