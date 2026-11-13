USE warehouse_db;
WITH CustomerSpending AS (
    SELECT c.customer_id, c.customer_name, c.region, COALESCE(SUM(o.total_amount), 0) AS total_spent
    FROM Customers c
    LEFT JOIN Orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.customer_name, c.region
)
SELECT customer_id, customer_name, region, total_spent,
       NTILE(4) OVER (ORDER BY total_spent DESC) AS spending_quartile,
       ROUND(CUME_DIST() OVER (ORDER BY total_spent ASC), 2) AS cumulative_distribution
FROM CustomerSpending;