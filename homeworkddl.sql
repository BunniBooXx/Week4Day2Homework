CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY, 
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50)NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INTEGER NOT NULL
);

CREATE TABLE tickets (
    ticket_id SERIAL PRIMARY KEY, 
    customer_id INTEGER NOT NULL UNIQUE, 
    ticket_price NUMERIC (8,2) NOT NULL ,
    ticket_number INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE movies (
    film_id SERIAL PRIMARY KEY, 
    film_name VARCHAR(100) NOT NULL UNIQUE, 
    description VARCHAR(100)
);

CREATE TABLE concessions (
    concession_id SERIAL PRIMARY KEY, 
    product_name VARCHAR(50) NOT NULL, 
    price NUMERIC(8,2)
);

DROP TABLE tickets;
DROP TABLE concessions;
DROP TABLE customer;
DROP TABLE movies;

