CREATE TABLE Customers ( customer_id INT PRIMARY KEY AUTO_INCREMENT, customer_name VARCHAR(100) NOT NULL );

CREATE TABLE Orders ( order_id INT PRIMARY KEY AUTO_INCREMENT, product_name VARCHAR(100) NOT NULL, 
customer_id INT, FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) );

INSERT INTO Customers (customer_name) VALUES ('Atharva'), ('Krissna'), ('Nilesh'), ('Prasad'), ('Omkar');

INSERT INTO Orders (product_name, customer_id) VALUES ('Laptop', 1), ('Mobile', 2),
 ('Tablet', 3), ('Headphones', 1), ('Keyboard', NULL);
 select * from Orders;
 1. INNER JOIN
SELECT c.customer_name, o.product_name
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

2. LEFT JOIN
SELECT c.customer_name, o.product_name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

3. RIGHT JOIN
SELECT c.customer_name, o.product_name
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

4. FULL OUTER JOIN (MySQL Workaround with UNION)
SELECT c.customer_name, o.product_name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
UNION
SELECT c.customer_name, o.product_name
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;
