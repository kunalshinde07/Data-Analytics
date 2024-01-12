use assignments;

## 		Question First
## 		Procedure GetCustomerLevel

##	CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCustomerLevel`(Cust_no int)
##	BEGIN
##	declare CustomerLevel varchar(20);
##	Select creditlimit into CustomerLevel from customers where Customernumber = Cust_no;
##	if CustomerLevel > 100000 then 
##	set CustomerLevel = "Platinum" ;
##	elseif CustomerLevel < 25000 then  
##	set CustomerLevel = " Silver";
##	else 
##	set CustomerLevel = "Gold";
##	end if;
##	select cust_no as Customer_number, CustomerLevel;
##	END

call assignments.GetCustomerLevel(103);
call getcustomerlevel (124); ## Ex ------> Platinum
call getcustomerlevel (112); ## Ex -------> GoldGat_country_payments


## Question Second
## Create a stored procedure Get_country_payments 


select * from customers;
select * from payments;

## Below is the procedure Get_Country_Payments

##	CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_country_payments`(in  inputyear int, in  inputcountry varchar(50))
##	BEGIN
##	select year(p.paymentdate) as Year , c.country, concat(format(sum(amount)/1000,0),'K') as Total_Amount
##	from payments p join customers c on p.customernumber=c.customernumber
##	where year(p.paymentdate)= inputyear and (c.country)=inputcountry
##	group by year(P.paymentdate),country;
##	END

call assignments.Get_country_payments(2003, 'france');