use assignments;

## First Question

select * from orders;

select ordernumber, status, COALESCE(comments, '-') AS comments 
from orders 
where status='shipped';


## Second Question

select * from employees;

SELECT employeeNumber, firstName, jobTitle,
    CASE
        WHEN jobtitle = 'President' THEN 'P'
         WHEN jobtitle LIKE '%Sale Manager%' THEN 'SM'
        WHEN jobtitle LIKE '%Sales Manager%' THEN 'SM'
        WHEN jobtitle = 'Sales Rep' THEN 'SR'
        WHEN jobtitle LIKE '%VP%' THEN 'VP'
        ELSE jobtitle -- Default to the original job title if none of the conditions match
    END AS jobTitleAbbr
FROM employees;