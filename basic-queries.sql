-- Question 1:
SELECT 
    *
FROM
    products;


-- Question 2:
SELECT 
    ProductID, ProductName, UnitPrice
FROM
    products;


-- Question 3:
SELECT 
    ProductID, ProductName, UnitPrice
FROM
    products
ORDER BY UnitPrice DESC;


-- Question 4:
SELECT 
    ProductID, ProductName, UnitPrice
FROM
    products
WHERE
    UnitPrice <= 7.5;


-- Question 5:
SELECT 
    UnitsInStock
FROM
    products
WHERE
    UnitsInStock >= 100
ORDER BY UnitPrice DESC;


-- Question 6:
SELECT 
    *
FROM
    products
WHERE
    UnitsInStock <= 100
ORDER BY UnitPrice DESC , ProductName;


-- Question 7:
SELECT 
    *
FROM
    products
WHERE
    UnitsInStock = 0 AND UnitsInStock <= 1
ORDER BY ProductName;


-- Question 8:
SELECT 
    *
FROM
    categories;


-- Question 9:
SELECT 
    *
FROM
    categories
WHERE
    CategoryName = 'seafood';


-- Question 10:
SELECT 
    *
FROM
    products
WHERE
    CategoryID = 8;


-- Question 11:
SELECT 
    FirstName, LastName
FROM
    employees;


-- Question 12:
SELECT 
    *
FROM
    employees
WHERE
    title LIKE '%manager%';


-- Question 13:
SELECT DISTINCT
    title
FROM
    employees;


-- Question 14:
SELECT 
    Salary, EmployeeID, LastName, FirstName, title
FROM
    employees
WHERE
    Salary BETWEEN 2000 AND 2500;


-- Question 15:
SELECT 
    *
FROM
    suppliers;


-- Question 16:
SELECT 
    p.ProductID,
    p.ProductName,
    s.companyName,
    p.SupplierID
FROM
    products AS p
        JOIN
    suppliers AS s ON p.SupplierID = s.SupplierID
WHERE
    s.CompanyName = 'Tokyo Traders';