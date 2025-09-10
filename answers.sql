-- Assignment: Joins and Relationships
-- ============================================
-- Ensure to switch to the correct database i.e salesDB if not already done
USE salesDB;
-- Question 1: Get firstName, lastName, email, and officeCode of all employees Using INNER JOIN between employees and offices
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    o.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;

-- Question 2: Get productName, productVendor, and productLine Using LEFT JOIN between products and productlines
SELECT 
    p.productName,
    p.productVendor,
    pl.productLine
FROM products p
LEFT JOIN productLines pl
    ON p.productLine = pl.productLine;

-- Question 3: Retrieve orderDate, shippedDate, status, and customerNumber for the first 10 orders Using RIGHT JOIN between customers and orders
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;

-- End of Assignment
-- ============================================