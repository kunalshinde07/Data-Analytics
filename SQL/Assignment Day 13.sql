use assignments;


## Question First

SELECT customernumber, customername
FROM customers
WHERE customernumber NOT IN (
	SELECT customernumber
    FROM orders 
);


## Question second

select c.customernumber, c.customername, count(o.customernumber) as total_orders
from customers c left join orders o on c.customerNumber = o.customerNumber group by c.customerNumber;


## Question Third

select * from orderdetails;

select * from orderdetails;
select count(*) from orderdetails;
select o.ordernumber, o.quantityordered from (
select ordernumber, quantityordered, dense_rank() over (partition by ordernumber order by quantityordered desc) as abc
from orderdetails) as o where abc = 2;

## Question Fourth

SELECT max(product_count) AS max_count, min(product_count) AS min_count FROM 
( SELECT count(distinct productCode) AS product_count FROM Orderdetails GROUP BY ordernumber ) AS order_counts;

## Question Fifth

select * from products;

select productline, count(productcode) as total from products 
where buyprice > (select avg(buyprice) from products)
group by productline	 order by total desc;

