 INSERT INTO Orders1 (OrderID, CustomerName, ProductCategory, Quantity, TotalPrice, OrderDate) VALUES
   (1, 'Alice',   'Electronics', 2,  1600.00, '2024-11-01'),
   (2, 'Bob', 	'Furniture',   1,   300.00, '2024-11-02'),
   (3, 'Charlie', 'Electronics', 1,   800.00, '2024-11-03'),
   (4, 'Diana',   'Stationery', 10,	50.00, '2024-11-04'),
   (5, 'Eve', 	'Electronics', 3,  2400.00, '2024-11-05'),
   (6, 'Frank',   'Stationery', 20,   100.00, '2024-11-06');

   SELECT 
    ProductCategory,
    SUM(Quantity) AS TotalQuantity
FROM Orders1
GROUP BY ProductCategory;

SELECT 
    ProductCategory,
    SUM(Quantity) AS TotalQuantity
FROM Orders1
GROUP BY ProductCategory
HAVING SUM(Quantity) > 10;

SELECT 
    ProductCategory,
    AVG(TotalPrice) AS AvgPrice
FROM Orders1
GROUP BY ProductCategory;

SELECT 
    ProductCategory,
    AVG(TotalPrice) AS AvgPrice
FROM Orders
GROUP BY ProductCategory
HAVING AVG(TotalPrice) < 1000;

SELECT *,
    CASE 
        WHEN TotalPrice > 1000 THEN 'High Value'
        ELSE 'Low Value'
    END AS ValueCategory
FROM Orders;

/* =========================================================
   QUERY E:
   Classify Orders by Value
   ========================================================= */



