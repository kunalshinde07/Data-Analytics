use assignments;

CREATE TABLE University(
	ID INT,
    Name VARCHAR(50)
);

INSERT INTO University
VALUES (1, "       Pune          University     "), 
               (2, "  Mumbai          University     "),
              (3, "     Delhi   University     "),
              (4, "Madras University"),
              (5, "Nagpur University");
              
select * from university;

## Removing Spaces from Column Names

select ID, CONCAT(TRIM(LEFT(TRIM(Name),7))," ",RIGHT(TRIM(Name),10)) AS Name From University;





