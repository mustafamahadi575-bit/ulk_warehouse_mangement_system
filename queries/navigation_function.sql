USE warehouse_db;
WITH MonthlySales AS (
    SELECT DATE_FORMAT(order_date, '%Y-%m') AS sales_month, SUM(total_amount) AS monthly_revenue
    FROM Orders GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)
SELECT sales_month, monthly_revenue,
       LAG(monthly_revenue, 1) OVER (ORDER BY sales_month) AS previous_month_sales,
       LEAD(monthly_revenue, 1) OVER (ORDER BY sales_month) AS next_month_sales
FROM MonthlySales;