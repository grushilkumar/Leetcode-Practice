-- Write your PostgreSQL query statement below
SELECT c.customer_id
FROM Product p
LEFT JOIN Customer c ON p.product_key = c.product_key
GROUP BY c.customer_id
HAVING COUNT(DISTINCT p.product_key) = (SELECT COUNT(*) FROM Product);