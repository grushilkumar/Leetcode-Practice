-- Write your PostgreSQL query statement below
select user_id,   concat(upper(substring(name,1,1)),lower(substring(name,2))) as name from users 
order by user_id;
-- ((upper(substr(name,1))+upper(substr(name,2,len(name)))) 

-- upper(substring(name,1,1)) +