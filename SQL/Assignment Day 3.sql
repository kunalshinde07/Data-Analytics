create database assignments;

use assignments;

## First Question

select * from customers;

select customernumber, customername, state, creditlimit 
	FROM customers 
	WHERE state is not null and creditlimit > 50000 and creditlimit < 100000 
    ORDER BY creditlimit DESC;


## Second Question

select * from products; 

select distinct productline from products where productline like '%cars';





