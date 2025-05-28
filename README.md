# ☕ Cafe Sales Analytics – SQL Project

A complete **SQL-based data analytics project** designed for practicing and showcasing real-world query writing skills. This project uses a fictional business, **Nandhini’s Café**, to explore essential SQL techniques for analyzing sales and customer behavior.

---

## 📦 Project Overview

This project simulates customer and order data from a local café. Using **pure SQL**, it demonstrates how to extract insights such as:
- Total revenue and order volume
- Monthly sales trends
- Top-performing items
- Customer segmentation and rankings

---

## 🧰 Tech Stack

- SQL (MySQL / PostgreSQL / SQL Server)
- Sample data (CSV or SQL insert scripts)

---

## 🧱 Tables

### `Customers`
| Column       | Type        |
|--------------|-------------|
| CustomerID   | INT         |
| Name         | VARCHAR(50) |
| Gender       | VARCHAR(10) |
| City         | VARCHAR(50) |

### `Orders`
| Column       | Type         |
|--------------|--------------|
| OrderID      | INT          |
| CustomerID   | INT (FK)     |
| Item         | VARCHAR(50)  |
| Amount       | DECIMAL(10,2)|
| OrderDate    | DATE         |

---

## 📊 Key SQL Topics Covered

- `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`
- Aggregations: `SUM()`, `COUNT()`, `AVG()`
- Table Joins: `INNER JOIN`, `LEFT JOIN`
- Window Functions: `RANK()`, `ROW_NUMBER()`, `PARTITION BY`
- Date Functions: `MONTH()`, `YEAR()`, `DATE_FORMAT()`

---

## 🚀 How to Run

1. Clone the repo  
2. Open your SQL environment (MySQL, PostgreSQL, etc.)  
3. Execute `Customers.sql` and `Orders.sql` to create and populate tables  
4. Run queries from `Cafe_Analytics_Queries.sql` to explore insights

---

## 📁 Files Included

- `Customers.sql` – Table + Insert script
- `Orders.sql` – Table + Insert script
- `Cafe_Analytics_Queries.sql` – Pre-written queries for analytics
- `ERD.png` – Entity-Relationship Diagram (optional visual)

---

## 📈 Sample Insights

- 📅 Sales by Month
- 💸 Average Order Value
- 🧾 Top 5 Customers by Spend
- ☕ Most Popular Menu Items
- 📍 Sales Distribution by City

---

## ✅ Ideal For

- SQL Practice for Data Analyst Roles  
- Dashboard backend logic testing  
- Interview preparation  
- College/Portfolio projects  

---

## 🙌 Contributions Welcome

Feel free to fork, modify, and submit PRs with improvements or new use cases!

---

## 📬 Contact

Built with ❤️ by [NandhiniNikil]  
For queries: [nandhinibabu0230@gmail.com]

