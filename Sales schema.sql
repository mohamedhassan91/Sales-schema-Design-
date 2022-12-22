
CREATE DATABASE Sales;

USE sales;

drop table customers;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT ,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id),
UNIQUE KEY (EMAIL_ADDRESS)
);

CREATE TABLE sales
(
	purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
PRIMARY KEY(purchase_number),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);

ALTER TABLE sales
DROP FOREIGN KEY sales_ibfk_2;

ALTER TABLE sales
DROP FOREIGN KEY cons1;

-- adding foreign key to sales table
ALTER TABLE sales
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;
 
 
-- DROPING UNIQUE KEY CONSTRAINT
ALTER TABLE customers
DROP INDEX email_address;

-- adding unique key
ALTER TABLE customers
ADD UNIQUE(email_address);

-- adding column to table
ALTER TABLE customers
ADD COLUMN gender ENUM('M','F') AFTER last_name;

-- selecting all columns from table
SELECT * FROM customers;

-- inserting record or data in specific table
INSERT INTO customers(first_name,last_name,gender,email_address,number_of_complaints)
VALUES('Ahmed','Mohamed','M','A.m@gmail.com',5);

-- CHANGE COLUMN DEFAULT CONSTRAINT
 ALTER TABLE customers
 CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;
 
 -- inserting record or data in specific table
INSERT INTO customers(first_name,last_name,gender,email_address)
VALUES('Duaa','Ibrahim','F','D.I@gmail.com');

-- create companies table using not null constraints
CREATE TABLE companies(
	company_id INT AUTO_INCREMENT,
    headquarter_phone_number VARCHAR(255),
    company_name VARCHAR(255) NOT NULL,
PRIMARY KEY (company_id)
);

select * from companies;

ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL DEFAULT 'X';

INSERT INTO companies (headquarter_phone_number)
VALUES ('+1(202) 555-0196');


