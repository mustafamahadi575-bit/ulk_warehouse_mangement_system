USE warehouse_db;
SELECT e.employee_id, e.full_name AS employee_name, o.order_id, o.total_amount
FROM Employees e
RIGHT JOIN Orders o ON e.employee_id = o.employee_id;