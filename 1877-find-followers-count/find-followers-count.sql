-- Write your PostgreSQL query statement below
select user_id,count(1) as followers_count from followers
group by user_id order by user_id;