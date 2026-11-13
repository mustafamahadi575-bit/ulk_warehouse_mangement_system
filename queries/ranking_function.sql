USE warehouse_db;
SELECT w.region, p.product_name, SUM(oi.subtotal) AS total_sales,
       ROW_NUMBER() OVER (PARTITION BY w.region ORDER BY SUM(oi.subtotal) DESC) AS row_num,
       RANK() OVER (PARTITION BY w.region ORDER BY SUM(oi.subtotal) DESC) AS sales_rank
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Orders o ON oi.order_id = o.order_id
JOIN Warehouses w ON o.warehouse_id = w.warehouse_id
GROUP BY w.region, p.product_name;