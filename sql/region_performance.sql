--REGIONE PERFORMANCE

SELECT
    region,
    SUM(sales) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY region
ORDER BY total_revenue DESC
