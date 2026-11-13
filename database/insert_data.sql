
INSERT INTO Warehouses (warehouse_id, warehouse_name, region, capacity) VALUES
(1, 'Kigali Central Hub', 'Kigali', 5000),
(2, 'Huye Regional Depot', 'Southern', 3000),
(3, 'Musanze Northern Store', 'Northern', 2500),
(4, 'Eastern Logistics Center', 'Eastern', 4000);


INSERT INTO Employees (employee_id, full_name, role, warehouse_id, manager_id, performance_score) VALUES
(101, 'Jean Paul', 'Regional Manager', 1, NULL, 95.50),
(102, 'Alice Uwase', 'Inventory Supervisor', 1, 101, 88.00),
(103, 'David Mugabo', 'Sales Lead', 2, 101, 91.20),
(104, 'Claire Keza', 'Logistics Officer', 3, 101, 82.50),
(105, 'Eric Ndayisenga', 'Storekeeper', 2, 103, 79.00);


INSERT INTO Products (product_id, product_name, category, unit_price) VALUES
(201, 'Laptop Dell Latitude', 'Electronics', 750.00),
(202, 'HP EliteBook 840', 'Electronics', 680.00),
(203, 'Wireless Mouse', 'Accessories', 25.00),
(204, 'Office Desk Chair', 'Furniture', 150.00),
(205, 'LED Monitor 24inch', 'Electronics', 200.00);


INSERT INTO Customers (customer_id, customer_name, region, registration_date) VALUES
(301, 'Tech Solutions Ltd', 'Kigali', '2026-01-10'),
(302, 'Rwanda Retail Stores', 'Southern', '2026-02-15'),
(303, 'Northern Business Corp', 'Northern', '2026-03-20'),
(304, 'Kigali Innovations', 'Kigali', '2026-04-05');


INSERT INTO Orders (order_id, customer_id, warehouse_id, employee_id, order_date, total_amount) VALUES
(501, 301, 1, 102, '2026-05-10', 1500.00),
(502, 302, 2, 103, '2026-05-18', 2200.00),
(503, 303, 3, 104, '2026-06-05', 850.00),
(504, 301, 1, 102, '2026-06-22', 3100.00),
(505, 304, 1, 102, '2026-07-12', 1200.00),
(506, 302, 2, 103, '2026-07-25', 2700.00);


INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, subtotal) VALUES
(1, 501, 201, 2, 1500.00),
(2, 502, 202, 3, 2040.00),
(3, 502, 203, 6, 160.00),
(4, 503, 204, 5, 750.00),
(5, 503, 203, 4, 100.00),
(6, 504, 205, 10, 2000.00),
(7, 504, 201, 1, 750.00),
(8, 505, 204, 8, 1200.00),
(9, 506, 202, 4, 2720.00);


