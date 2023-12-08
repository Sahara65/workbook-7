-- Question 1:
SELECT 
    COUNT(SupplierID)
FROM
    suppliers;


-- Question 2:
SELECT 
    FORMAT(SUM(salary), 2) AS SalarySUM
FROM
    employees;


-- Question 3:
SELECT 
    ProductName, UnitPrice
FROM
    products
WHERE
    UnitPrice = (SELECT 
            MIN(UnitPrice)
        FROM
            products);


-- Question 4:
SELECT 
    FORMAT(AVG(UnitPrice), 2) AS AveragePrice
FROM
    products;


-- Question 5:
SELECT 
    FORMAT(MAX(UnitPrice), 2) AS MostExpensive
FROM
    products;


-- Question 6:
SELECT 
    SupplierID, COUNT(ProductID) AS NumberOfProducts
FROM
    products
GROUP BY SupplierID;


-- Question 7:
SELECT 
    CategoryID, FORMAT(AVG(UnitPrice), 2) AS AveragePrice
FROM
    products
GROUP BY categoryID;


-- Question 8:
SELECT 
    SupplierID, COUNT(ProductName) AS NumberOfProductsSupplied
FROM
    products
GROUP BY SupplierID
HAVING COUNT(ProductName) >= 5;


-- Question 9:
SELECT 
    ProductID,
    ProductName,
    FORMAT(UnitPrice * UnitsInStock, 2) AS InventoryValue
FROM
    products
ORDER BY InventoryValue DESC , ProductName;