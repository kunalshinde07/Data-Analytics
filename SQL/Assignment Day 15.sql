## ASSIGNMENT DAY 15

	CREATE TABLE Emp_BIT 
		(Name VARCHAR(255),
		Occupation VARCHAR(255),
		Working_date DATE,
		Working_hours INT);

	INSERT INTO Emp_BIT VALUES
		('Robin', 'Scientist', '2020-10-04', 12),
		('Warner', 'Engineer', '2020-10-04', 10),
		('Peter', 'Actor', '2020-10-04', 13),
		('Marco', 'Doctor', '2020-10-04', 14),
		('Brayden', 'Teacher', '2020-10-04', 12),
		('Antonio', 'Business', '2020-10-04', 11);

	select * from emp_bit;

	INSERT INTO Emp_BIT VALUES
	('Anna', 'Scientist', '2020-10-04', -14);

	##		CREATE DEFINER=`root`@`localhost` TRIGGER `emp_bit_BEFORE_INSERT` BEFORE INSERT ON `emp_bit` FOR EACH ROW BEGIN
	##    IF NEW.Working_hours < 0 THEN
	##        SET NEW.Working_hours = -NEW.Working_hours;
	##    END IF;
	##	END