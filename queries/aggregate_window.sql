USE warehouse_db;
WITH MonthlySales AS (
    SELECT DATE_FORMAT(order_date, '%Y-%m') AS sales_month, SUM(total_amount) AS monthly_revenue
    FROM Orders GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)
SELECT sales_month, monthly_revenue,
       SUM(monthly_revenue) OVER (ORDER BY sales_month ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS cumulative_sales,
       ROUND(AVG(monthly_revenue) OVER (ORDER BY sales_month ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2) AS three_month_moving_avg
FROM MonthlySales;