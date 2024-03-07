-- Write your PostgreSQL query statement below
-- select visited_on,
-- lag(amount) over(order by visited_on) as amount
-- from customer

select 
c.visited_on,
(select sum(amount) from customer 
where visited_on between c.visited_on-6
and c.visited_on) as amount,
round((select round(sum(amount)/7::numeric,2) from customer 
where visited_on between c.visited_on-6
and c.visited_on)::numeric,2) as average_amount
from Customer c where c.visited_on >= (select min(visited_on)+6 from customer) 
group by c.visited_on  order by c.visited_on;   