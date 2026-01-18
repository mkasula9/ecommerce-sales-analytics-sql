--REPEAT CUSTOMERS

SELECT
    customer_id,
    COUNT(DISTINCT order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(DISTINCT order_id) > 1
ORDER BY order_count DESC;
