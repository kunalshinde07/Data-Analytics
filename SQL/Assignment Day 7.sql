use assignments;


## Question first

select * from employees;

select * from customers where salesrepemployeenumber = 1401;

SELECT
	employeenumber,
    concat(firstname, ' ' , lastname) AS Sales_Person,
    count(DISTINCT customernumber) AS Unique_Customers
FROM employees
INNER JOIN customers ON employees.employeenumber = customers.salesrepemployeenumber
GROUP BY employeenumber, sales_person
ORDER BY unique_customers DESC;


## Question Second

select * from customers;
select * from orders;
select * from orderdetails;
select * from products;

SELECT	
	customers.customernumber,
    customers.customername,
    products.productcode,
    products.productname,
    SUM(orderdetails.quantityordered) AS Ordered_Qty,
    products.quantityInStock,
    SUM(orderdetails.quantityordered) - products.quantityInStock AS Left_Qty
FROM customers
INNER JOIN orders ON customers.customernumber = orders.customernumber
INNER JOIN orderdetails ON orders.ordernumber = orderdetails.ordernumber
INNER JOIN products ON orderdetails.productcode = products.productcode
GROUP BY customers.customernumber, products.productname,products.quantityInStock,productcode
ORDER BY customers.customernumber,productcode;


## Question Third

CREATE TABLE Laptop(
	Laptop_Name varchar(255)
    );
    
CREATE TABLE Colours(
	Colour_Name varchar(255)
    );
    
INSERT INTO Laptop VALUES ('Dell XPS 13');
INSERT INTO Laptop VALUES ('MacBook Air');
INSERT INTO Laptop VALUES ('Microsoft Surface Laptop 4');

SELECT * FROM laptop;

INSERT INTO Colours VALUES ('Silver');
INSERT INTO Colours VALUES ('Gold');
INSERT INTO Colours VALUES ('Space Gray');

SELECT * FROM colours;

SELECT * FROM laptop CROSS JOIN Colours;

SELECT COUNT(*) FROM 
	(SELECT * FROM laptop CROSS JOIN colours) 
	AS cross_join_table;
    
## Question Fourth

CREATE TABLE project (
  EmployeeID INT,
  FullName VARCHAR(255),
  Gender VARCHAR(10),
  ManagerID INT,
  PRIMARY KEY (EmployeeID)
);

INSERT INTO Project VALUES(1, 'Pranaya', 'Male', 3);
INSERT INTO Project VALUES(2, 'Priyanka', 'Female', 1);
INSERT INTO Project VALUES(3, 'Preety', 'Female', NULL);
INSERT INTO Project VALUES(4, 'Anurag', 'Male', 1);
INSERT INTO Project VALUES(5, 'Sambit', 'Male', 1);
INSERT INTO Project VALUES(6, 'Rajesh', 'Male', 3);
INSERT INTO Project VALUES(7, 'Hina', 'Female', 3);

SELECT * FROM project;

SELECT e.fullname AS employee, m.fullname AS manager
FROM project e
INNER JOIN project m ON e.ManagerID = m.EmployeeID;