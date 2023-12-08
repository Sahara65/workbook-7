-- Question 1:
SELECT 
    ProductName
FROM
    products
WHERE
    UnitPrice = (SELECT 
            MAX(UnitPrice)
        FROM
            products);


-- Question 2:
SELECT 
    o.OrderID,
    o.ShipName,
    o.ShipAddress,
    (SELECT 
            CompanyName
        FROM
            shippers
        WHERE
            ShipperID = o.ShipVia) AS ShipperCompanyName
FROM
    orders AS o
WHERE
    ShipVia = (SELECT 
            ShipperID
        FROM
            shippers
        WHERE
            CompanyName = 'Federal Shipping');


-- Question 3:
SELECT 
    OrderID
FROM
    `order details`
WHERE
    ProductID = (SELECT 
            ProductID
        FROM
            products
        WHERE
            ProductName LIKE '%sasquatch%');


-- Question 4:
SELECT 
    LastName, FirstName
FROM
    employees AS e
WHERE
    e.EmployeeID = (SELECT 
            EmployeeID
        FROM
            orders AS o
        WHERE
            o.OrderID = 10266);


-- Question 5:
SELECT 
    CompanyName, ContactName
FROM
    customers AS c
WHERE
    c.CustomerID = (SELECT 
            CustomerID
        FROM
            orders AS o
        WHERE
            o.OrderID = 10266);