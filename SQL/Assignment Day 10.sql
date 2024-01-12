use assignments;

##		Create the view products status. Show year wise total products sold. Also find the percentage of total value for each year. 


CREATE VIEW products_status AS
SELECT
	YEAR(orderdate) AS year,
	concat(count(productcode)," ","(", round(count(productcode)*100/ (select count(productcode) from orderdetails),0),"%",")")
	AS Value from orders as o
    JOIN orderdetails as od
	ON o.ordernumber = od.ordernumber
	GROUP BY YEAR;


select * from products_status;
