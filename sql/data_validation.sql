--DATA VALIDATION

--Row count of SuperStore Database
SELECT COUNT(*) AS total_rows FROM SuperStore;

--Checking the Row Count check after ingesting the data
SELECT COUNT(*) AS total_rows FROM orders;

--NULL VALIDATION

SELECT
  SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS null_order_id,
  SUM(CASE WHEN order_date IS NULL THEN 1 ELSE 0 END)AS null_order_date,
  SUM(CASE WHEN ship_mode IS NULL THEN 1 ELSE 0 END)AS null_ship_mode,
  SUM(CASE WHEN ship_date IS NULL THEN 1 ELSE 0 END)AS null_ship_date,
  SUM(CASE WHEN region IS NULL THEN 1 ELSE 0 END)AS null_region,
  SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END)AS null_country,
  SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END)AS null_product_id,
  SUM(CASE WHEN sales IS NULL THEN 1 ELSE 0 END)AS null_sales,
  SUM(CASE WHEN quantity IS NULL THEN 1 ELSE 0 END)AS null_quantity,
  SUM(CASE WHEN profit IS NULL THEN 1 ELSE 0 END)AS null_profit
FROM orders

--DATE PARSING & RANGE VALIDATON

--Checking the min/max dates

SELECT
  MIN(order_date) AS min_order_date,
  MAX(order_date) AS max_order_date,
  MIN(ship_date) AS min_ship_date,
  MAX(ship_date) AS max_ship_date
FROM orders

--LOGICAL VALIDATION
SELECT * 
FROM orders
WHERE ship_date < order_date

--Categorical Sanity Check
SELECT country, COUNT(*)  AS cnt
FROM orders
GROUP BY country

SELECT segment, COUNT(*) AS cnt
FROM orders
GROUP BY segment

SELECT ship_mode, COUNT(*) AS cnt
FROM orders
GROUP BY ship_mode

SELECT TOP 10 *
FROM orders
ORDER BY order_date

