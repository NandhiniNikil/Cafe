CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(50),
  Gender VARCHAR(10),
  City VARCHAR(50)
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  Item VARCHAR(50),
  Amount DECIMAL(10,2),
  OrderDate DATE,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
-- Customers
INSERT INTO Customers VALUES
(1, 'Anu', 'Female', 'Chennai'),
(2, 'Karthik', 'Male', 'Coimbatore'),
(3, 'Meena', 'Female', 'Madurai'),
(4, 'Arjun', 'Male', 'Salem'),
(5, 'Priya', 'Female', 'Erode');

-- Orders
INSERT INTO Orders VALUES
(101, 1, 'Coffee', 120.00, '2023-12-01'),
(102, 2, 'Sandwich', 80.00, '2023-12-01'),
(103, 3, 'Cold Coffee', 150.00, '2023-12-02'),
(104, 4, 'Tea', 40.00, '2023-12-03'),
(105, 2, 'Pastry', 100.00, '2023-12-04'),
(106, 1, 'Cold Coffee', 150.00, '2023-12-04'),
(107, 5, 'Coffee', 120.00, '2023-12-05'),
(108, 3, 'Tea', 40.00, '2023-12-06'),
(109, 4, 'Sandwich', 80.00, '2023-12-06'),
(110, 1, 'Pastry', 100.00, '2023-12-06');

---Overview of the Data Inserted---
select * from Customers
SELECT Name, City FROM Customers;
select * from Orders

---Checking orders above Rs.100---
SELECT * FROM Orders
WHERE Amount > 100;

---Using join function to know who ordered what?---
SELECT Customers.Name, Orders.Item, Orders.Amount
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

---Summarise using Aggregates to find total orders/income---
SELECT COUNT(*) AS TotalOrders FROM Orders;
SELECT SUM(Amount) AS TotalRevenue FROM Orders;
SELECT AVG(Amount) AS AverageOrder FROM Orders;

---Grouping data to find Total spent per customer---
SELECT CustomerID, SUM(Amount) AS TotalSpent
FROM Orders
GROUP BY CustomerID;

---correction using update / delete, order amount is wrong---
UPDATE Orders SET Amount = 150.00 WHERE OrderID = 101;

---Check no.of orders this mnth using date function---
SELECT * FROM Orders
WHERE MONTH(OrderDate) = 12;

---using window functions for ranking to find who spent the most?---
SELECT CustomerID, SUM(Amount) AS Total,
       RANK() OVER (ORDER BY SUM(Amount) DESC) AS SpendingRank
FROM Orders
GROUP BY CustomerID;

---New Insight who ordered coffee most---
SELECT Item, COUNT(*) AS TimesOrdered
FROM Orders
GROUP BY Item
ORDER BY TimesOrdered DESC;

---From this you can know ---

---💰 Best customers ☕ Most popular items 🗓️ Busy days 🔍 What to improve---














