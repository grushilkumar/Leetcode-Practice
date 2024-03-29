-- Write your PostgreSQL query statement below
select p.product_id,
case
when p.product_id in (select product_id from unitssold) then round(sum(p.price*u.units)/sum(u.units)::numeric,2) 
else 0
end as average_price  from prices p 
left join unitssold u on p.product_id = u.product_id and u.purchase_date 
between p.start_date and p.end_date
group by p.product_id order by p.product_id ;