USE warehouse_db;
SELECT w.warehouse_name, o.order_id, o.total_amount
FROM Warehouses w
LEFT JOIN Orders o ON w.warehouse_id = o.warehouse_id
UNION
SELECT w.warehouse_name, o.order_id, o.total_amount
FROM Warehouses w
RIGHT JOIN Orders o ON w.warehouse_id = o.warehouse_id;