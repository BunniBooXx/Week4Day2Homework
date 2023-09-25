INSERT INTO customer(
    first_name,
    last_name,
    email,
    age
) VALUES (
    'Jaqueline',
    'Smith', 
    '123@aol.com',
    26
),(
    'Daniel', 
    'Lee', 
    'DanLee123@aol.com', 
    34
), (
    'Michael', 
    'Jackson',
    'DancingKing123@gmail.com',
    100
);

SELECT * FROM customer;

INSERT INTO tickets(
    ticket_id, 
    customer_id,
    ticket_price, 
    ticket_number
) VALUES (
    1234,
    1,
    19.99,
    45
), (
    4567,
    2,
    19.99,
    46
), (
    8910, 
    3,
    19.99,
    47
);


INSERT INTO movies (
    film_name, 
    description
) VALUES (
    'Easter Rabies',
    'What happens when a small town gets infested with rabies?! 
    Find out today!'
    
), (
    'Barbie', 
    'Hello Barbie lets go party!'
), (
    'Mean Girls', 
    'Mean girls but as 40 year old housewives,
    who will they bully at the pta meeting next?'
);

SELECT * FROM movies;

INSERT INTO concessions(
    product_name, 
    price
) VALUES (
    'popcorn', 
    50.00
), (
    'nerds rope', 
    10.00
), (
    'nachos', 
    15.00
), (
    'soda', 
    20.00
);

SELECT *
FROM concessions;
