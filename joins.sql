-- Question 1:
SELECT 
    p.ProductID,
    p.ProductName,
    p.UnitPrice,
    c.CategoryName,
    c.CategoryID
FROM
    products AS p
        JOIN
    categories AS c ON p.CategoryID = c.CategoryID
ORDER BY c.CategoryName , p.ProductName;


-- Question 2:
SELECT 
    p.ProductID,
    s.SupplierID,
    p.ProductName,
    s.CompanyName,
    FORMAT(p.UnitPrice, 2)
FROM
    products AS p
        JOIN
    suppliers AS s ON p.SupplierID = s.SupplierID
WHERE
    p.UnitPrice >= 75
ORDER BY p.ProductName;


-- Question 3:
SELECT 
    p.ProductID,
    p.ProductName,
    s.CompanyName,
    c.CategoryName,
    FORMAT(p.UnitPrice, 2) AS UnitPrice
FROM
    products AS p
        JOIN
    suppliers AS s ON p.SupplierID = s.SupplierID
        JOIN
    categories AS c ON p.CategoryID = c.CategoryID;
    

-- Question 4:
SELECT 
    ProductName, 
    CategoryName, 
    UnitPrice AS MostExpensiveProducts 
FROM 
    (SELECT
	p.ProductName, 
	c.CategoryName, 
	p.UnitPrice, 
	RANK() OVER (PARTITION BY p.CategoryID ORDER BY p.UnitPrice DESC) AS PriceRank
	FROM 
	    products AS p 
	JOIN 
	    categories AS c ON p.CategoryID = c.CategoryID
	) ranked_products 
WHERE 
    PriceRank = 1;


-- Question 5:
SELECT 
    o.OrderID,
    o.ShipName,
    o.ShipAddress,
    s.CompanyName,
    o.ShipCountry
FROM
    orders AS o
        JOIN
    shippers AS s ON s.ShipperID = o.ShipVia
WHERE
    o.ShipCountry LIKE '%germany%';


-- Question 6:
SELECT 
    od.OrderID, 
    o.OrderDate, 
    p.ProductName, 
    o.ShipAddress
FROM
    `order details` AS od
        JOIN
    orders AS o ON od.OrderID = o.OrderID
        JOIN
    products AS p ON od.ProductID = p.ProductID
WHERE
    p.ProductName LIKE '%sasquatch%';
