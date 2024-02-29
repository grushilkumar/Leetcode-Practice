-- Write your PostgreSQL query statement below
select x.product_id,x.year as first_year,x.quantity,x.price from
(
    select s.*,
    rank() over(partition by s.product_id order by s.year) as rnk
    from sales s 
    join product p on s.product_id  = p.product_id
    order by s.product_id) x 
where x.rnk = 1;