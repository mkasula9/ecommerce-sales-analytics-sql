--MONTH-OVER-MONTH (MoM) RVENEUE GROWTH

WITH monthly_sales AS (
  SELECT
     DATEFROMPARTS(YEAR(order_date),MONTH(order_date), 1) AS order_month,
	 SUM(sales) AS revenue
  FROM orders
  GROUP BY DATEFROMPARTS(YEAR(order_date),MONTH(order_date), 1)
)
SELECT
  order_month,
  revenue,
  revenue - LAG(revenue) OVER (ORDER BY order_month) AS mom_growth
FROM monthly_sales
ORDER BY order_month