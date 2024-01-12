use assignments;

CREATE TABLE Facility(
	Facility_ID INT,
    Name VARCHAR(255),
    State VARCHAR(255),
    Country VARCHAR(255)
);

SELECT * FROM FACILITY;

ALTER TABLE Facility
	MODIFY Facility_ID INT NOT NULL auto_increment PRIMARY KEY;
    
ALTER TABLE Facility
	ADD COLUMN City INT NOT NULL after Name;
    
Select * from facility;

desc facility;