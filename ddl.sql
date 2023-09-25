-- DDL Data Defintion Language 
-- DDM Data Manipulation
-- DQL SELECT

-- NOT NULL means cannot be blank/nothing

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY, 
    first_name VARCHAR (50) NOT NULL, 
    last_name VARCHAR (50),
    email VARCHAR(100) UNIQUE NOT NULL,
    prime BOOLEAN DEFAULT false,
    created_at DATE DEFAULT CURRENT_DATE,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    age INTEGER
     );

SELECT * 
FROM customer;

CREATE TABLE Reciept(
transaction_id SERIAL PRIMARY KEY,
customer_id INTEGER NOT NULL,
time_purchased TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
total_price NUMERIC (10,2),
FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

SELECT * 
FROM Reciept;

CREATE TABLE Reciept_item (
    reciept_item_id SERIAL PRIMARY KEY, 
    transaction_id INTEGER NOT NULL, 
    product_id INTEGER NOT NULL, 
    quantity INTEGER DEFAULT 1,
    FOREIGN KEY (transaction_id) REFERENCES reciept(transaction_id) ON DELETE CASCADE
    );

CREATE TABLE PRODUCT (
    product_id SERIAL PRIMARY KEY,
    description VARCHAR,
    product_name VARCHAR(50) NOT NULL UNIQUE,
    price NUMERIC (8,2)
);

--DROP TABLE receipt_item;

ALTER TABLE reciept_item
ADD FOREIGN KEY (product_id) REFERENCES product(product_id) ON DELETE CASCADE;

ALTER TABLE customer
ADD COLUMN phone_number VARCHAR(15) NOT NULL;


