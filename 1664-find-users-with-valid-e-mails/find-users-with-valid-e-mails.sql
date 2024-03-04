-- Write your PostgreSQL query statement below
SELECT *
FROM users
WHERE mail SIMILAR TO '[a-zA-Z][a-zA-Z0-9_.-]*@leetcode.com'; 