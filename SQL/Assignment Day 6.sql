## Question 1
## Create table Journey

CREATE TABLE Journey(
	Bus_Id INT not null,
    Bus_Name VARCHAR(50) not null,
    Source_Station VARCHAR(50) not null,
    Destination VARCHAR(50) not null,
    Email VARCHAR(50) UNIQUE
);

select * from journey;

## Question 2
## Create Vendor Table

CREATE TABLE vendors (
  vendor_id INT NOT NULL UNIQUE,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE,
  country VARCHAR(255) DEFAULT 'N/A'
);

select * from vendors;

## Question 3
##Create Movies Table

CREATE TABLE movies (
  movie_id INT NOT NULL UNIQUE,
  name VARCHAR(255) NOT NULL,
  release_year INT DEFAULT NULL,
  cast VARCHAR(255) NOT NULL,
  gender VARCHAR(6) NOT NULL,
  no_of_shows INT NOT NULL CHECK (no_of_shows > 0)
);

select * from movies;

## Question 4
## Product table

CREATE TABLE product (
  product_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(255) NOT NULL UNIQUE,
  description VARCHAR(255),
  supplier_id INT NOT NULL,
  PRIMARY KEY (product_id),
  FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
  );
  
select * from product;

## suppliers table

CREATE TABLE suppliers (
  supplier_id INT NOT NULL AUTO_INCREMENT,
  supplier_name VARCHAR(255) NOT NULL,
  location VARCHAR(255) NOT NULL,
  PRIMARY KEY (supplier_id)
);

## Stock table

CREATE TABLE stock (
  id INT NOT NULL AUTO_INCREMENT,
  product_id INT NOT NULL,
  balance_stock INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (product_id) REFERENCES product(product_id)
);

select * from stock;