USE warehouse_db;
SELECT e.employee_id AS employee_id, e.full_name AS employee_name, e.role AS employee_role,
       m.full_name AS manager_name, m.role AS manager_role
FROM Employees e
LEFT JOIN Employees m ON e.manager_id = m.employee_id;