--Analytics Task

-- 1)TOP PRODUCTS BY REVENUE

SELECT TOP 10
   product_id,
   SUM(sales) AS total_revenue
FROM orders
GROUP BY product_id
ORDER BY total_revenue DESC


