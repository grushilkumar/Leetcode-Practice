-- Write your PostgreSQL query statement below
with filtered_data as 
(select o.buyer_id,count(1) as orders_in_2019 from orders o 
join users u on o.buyer_id = u.user_id
where extract(year from o.order_date) = 2019
group by o.buyer_id)

select u.user_id as buyer_id,u.join_date,coalesce(x.orders_in_2019,0) as orders_in_2019 from filtered_data x
right join users u on x.buyer_id = u.user_id;