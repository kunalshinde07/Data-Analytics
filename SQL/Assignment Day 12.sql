use assignments;

## Question First

select * from orders;

SELECT
	YEAR(orderdate) AS Year,
    MONTHNAME(orderdate) AS Month,
    COUNT(orderNumber) AS Total_orders,
    CONCAT(IFNULL(round((COUNT(*) - LAG(COUNT(*), 1)
    OVER (ORDER BY YEAR(orderdate), MONTHNAME(orderdate))) / LAG(COUNT(*), 1) 
	OVER (ORDER BY YEAR(orderdate), MONTHNAME(orderdate)) * 100), 100)," ",'%') AS YoY_percentage_change
	FROM orders group by year,month;
    

## Question Second

## CREATE DEFINER=root@localhost FUNCTION Calculate_Age(dob date) RETURNS varchar(100) CHARSET utf8mb4
## BEGIN
## 	  declare years int;
##    declare months int;

##    set years =  year(now()) - year(dob) ;
##    set months =  month(now()) - month(dob);
    
##    if months < 0 then
##		set years = years - 1;
##        set months = months + 12;
##	end if;
    
## return concat(years, 'years', months, 'months');
## END
