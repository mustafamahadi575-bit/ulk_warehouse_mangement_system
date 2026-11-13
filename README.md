# Warehouse Management System (WMS) - Group Database Project

## 1. Project Overview & Business Context
This project implements a relational database for a **Warehouse Management System (WMS)** using **MySQL**. The system is designed to track inventory, monitor employee performance, manage customer orders, and analyze regional sales distribution to support data-driven decision-making at the University of Independent Kigali (ULK) Data Science department.

## 2. Database Schema & ERD
The database consists of 6 core normalized tables:
- **Warehouses**: Stores regional warehouse details and capacity.
- **Employees**: Manages staff information, roles, hierarchy (self-referencing manager), and performance scores.
- **Products**: Tracks inventory items, categories, and unit prices.
- **Customers**: Stores client details and registration timelines.
- **Orders**: Records transaction headers linking customers, warehouses, and employees.
- **Order_Items**: Details line items, quantities, and subtotals per order.

*(An Entity-Relationship Diagram is available in the `documentation/ERD.png` directory).*

## 3. SQL Implementation Components
- **Advanced JOIN Operations**: Includes Inner Joins, Left Joins, Right Joins, Full Outer Joins (via UNION), and Self Joins.
- **Window Functions**: Implemented across 4 core categories:
  1. *Ranking Functions* (`ROW_NUMBER`, `RANK`, `DENSE_RANK`, `PERCENT_RANK`)
  2. *Aggregate Window Functions* (`SUM`, `AVG`, `MIN`, `MAX`, `COUNT` with `ROWS` and `RANGE` frames)
  3. *Navigation Functions* (`LAG`, `LEAD`)
  4. *Distribution Functions* (`NTILE`, `CUME_DIST`)

## 4. Results Analysis & Insights
- **Descriptive Analysis**: Summarized total regional revenues, order quantities, and cumulative monthly sales trends.
- **Diagnostic Analysis**: Evaluated employee performance vs. regional order handling, identifying top-performing branches and low-performing inventory zones using window aggregations and rankings.
- **Prescriptive Analysis**: Segmented customers into spending quartiles (`NTILE`) to target high-value clients and utilized moving averages to forecast inventory needs.

## 5. Repository Structure
- `database/`: Contains table creation and data insertion scripts.
- `queries/`: Contains modular SQL query files.
- `documentation/`: Contains the database ERD image.
- `screenshots/`: Contains execution proof screenshots for joins and window functions.# Warehouse Management System (WMS) - Group Database Project

## 1. Project Overview & Business Context
This project implements a relational database for a **Warehouse Management System (WMS)** using **MySQL**. The system is designed to track inventory, monitor employee performance, manage customer orders, and analyze regional sales distribution to support data-driven decision-making at the University of Independent Kigali (ULK) Data Science department.

## 2. Database Schema & ERD
The database consists of 6 core normalized tables:
- **Warehouses**: Stores regional warehouse details and capacity.
- **Employees**: Manages staff information, roles, hierarchy (self-referencing manager), and performance scores.
- **Products**: Tracks inventory items, categories, and unit prices.
- **Customers**: Stores client details and registration timelines.
- **Orders**: Records transaction headers linking customers, warehouses, and employees.
- **Order_Items**: Details line items, quantities, and subtotals per order.

*(An Entity-Relationship Diagram is available in the `documentation/ERD.png` directory).*

## 3. SQL Implementation Components
- **Advanced JOIN Operations**: Includes Inner Joins, Left Joins, Right Joins, Full Outer Joins (via UNION), and Self Joins.
- **Window Functions**: Implemented across 4 core categories:
  1. *Ranking Functions* (`ROW_NUMBER`, `RANK`, `DENSE_RANK`, `PERCENT_RANK`)
  2. *Aggregate Window Functions* (`SUM`, `AVG`, `MIN`, `MAX`, `COUNT` with `ROWS` and `RANGE` frames)
  3. *Navigation Functions* (`LAG`, `LEAD`)
  4. *Distribution Functions* (`NTILE`, `CUME_DIST`)

## 4. Results Analysis & Insights
- **Descriptive Analysis**: Summarized total regional revenues, order quantities, and cumulative monthly sales trends.
- **Diagnostic Analysis**: Evaluated employee performance vs. regional order handling, identifying top-performing branches and low-performing inventory zones using window aggregations and rankings.
- **Prescriptive Analysis**: Segmented customers into spending quartiles (`NTILE`) to target high-value clients and utilized moving averages to forecast inventory needs.

## 5. Repository Structure
- `database/`: Contains table creation and data insertion scripts.
- `queries/`: Contains modular SQL query files.
- `documentation/`: Contains the database ERD image.
- `screenshots/`: Contains execution proof screenshots for joins and window functions.