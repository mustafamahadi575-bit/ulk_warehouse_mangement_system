
USE warehouse_db;
SELECT w.warehouse_id, w.warehouse_name, w.region, o.order_id, o.total_amount
FROM Warehouses w
LEFT JOIN Orders o ON w.warehouse_id = o.warehouse_id;