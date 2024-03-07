-- -- Write your PostgreSQL query statement below
with a as
(select u.name as results from
(select user_id,
dense_rank() over(order by count(*) desc) as rank
from MovieRating 
group by user_id) x
join users  u on u.user_id = x.user_id
where x.rank=1 order by u.name limit 1)
, b as 
(select m.title as results from (select
movie_id,dense_rank() over(order by round(sum(rating)/count(rating)::numeric,3) desc) as rank
from MovieRating
where to_char(created_at,'YYYY-MM') ='2020-02'  
group by movie_id) as x
join movies m on m.movie_id = x.movie_id
where x.rank = 1 order by m.title limit 1)

select * from a
union all
select * from b;

-- select user_id,
-- dense_rank() over(order by count(user_id) desc) as rank
-- from MovieRating 
-- group by user_id

-- (select * from
-- (
-- select user_id,
-- dense_rank() over(order by count(*) desc) as rank
-- from MovieRating 
-- group by user_id
-- ) 
-- x
-- join users  u on x.user_id = x.user_id 
-- where order by u.name )
