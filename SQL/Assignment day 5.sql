## Day5
Use classicmodels;

##Q1)

select year(paymentdate) as year ,min(amount) as "Min Amount" from payments 
group by year
order by year;

##Q2)
select * from orders;
select year(orderdate) as year,
case
when month(orderdate) between 1 and 3 then 'Q1'
when month(orderdate) between 4 and 6 then 'Q2'
when month(orderdate) between  7 and 9 then 'Q3'
when month(orderdate) between 10 and 12 then 'Q4'
end as Quarter,
count(distinct customernumber)as "Unique customer",
count(customerNumber) as 'Total Order' 
from orders
group by year , quarter ;


##Q3)
select * from payments;
SELECT
    DATE_FORMAT(paymentdate, '%b') AS Month,
    CONCAT(ROUND(Sum(amount)/1000) , 'K') AS FormattedAmount
FROM payments
WHERE DATE_FORMAT(paymentdate, '%b') IN ('Mar', 'May', 'Sep', 'Aug', 'Feb', 'Oct')
GROUP BY Month
HAVING SUM(amount) BETWEEN 500000 AND 1000000
ORDER BY SUM(amount) DESC;

