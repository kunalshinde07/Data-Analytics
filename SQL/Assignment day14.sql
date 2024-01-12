## day 14
use classicmodels;
create table emp_eh(
empid int primary key,
empname varchar(30),
emailaddress varchar(30)
);
select * from emp_eh;

call classicmodels.emp_eh_proc(null, "dfsd", "sdcd");
