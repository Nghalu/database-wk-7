USE salesdb;
-- Question 1 (1NF)
SELECT o.orderNumber,
       c.customerName,
       p.productName,
       od.quantityOrdered,
       od.priceEach
FROM orders o
JOIN customers c ON o.customerNumber = c.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
JOIN products p ON od.productCode = p.productCode;

-- Question 2
-- Orders table (Customer info, no product redundancy)
SELECT o.orderNumber, o.orderDate, o.status, c.customerName
FROM orders o
JOIN customers c ON o.customerNumber = c.customerNumber;
-- OrderDetails table (Product info, no customer redundancy)
SELECT od.orderNumber, p.productName, od.quantityOrdered, od.priceEach
FROM orderdetails od
JOIN products p ON od.productCode = p.productCode;
