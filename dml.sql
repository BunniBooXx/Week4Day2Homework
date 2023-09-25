-- DATA MANIPULATION

INSERT INTO customer (
    first_name, 
    phone_number,
    email,
    prime
) VALUES (
    'Pearl', 
    '(111)-222-2233',
    'pearl@osborne.com',
    true
), (
    'Dimitri',
    '(222) 222-2222',
    'dimitri@marino.com',
    true
);

SELECT *
FROM customer;

INSERT INTO product(
    product_name, 
    price
) VALUES (
    'Girafee Pillow Pet',
    14.99
), (
    'Penguin Pillow Pet',
    14.99

), (
    'Dog Pillow Pet',
    14.99
);

SELECT * 
FROM product;


INSERT INTO Reciept( 
    customer_id, 
    total_price
) VALUES (
    1,
    44.97
) , (
    2,
    19.99
), (
    3,
    34.98
);

SELECT *
FROM reciept;

INSERT INTO Reciept_item (
    transaction_id, 
    product_id, 
    quantity
) VALUES 
(1,1,2), 
(1,2,1);

SELECT product_name
FROM product
WHERE product_id IN (
    SELECT product_id
    FROM reciept_item
    WHERE transaction_id IN (
        SELECT transaction_id 
        FROM reciept
        WHERE customer_id IN (
            SELECT customer_id
            FROM customer
            WHERE first_name = 'Shoha'
        )
    )
);

SELECT * 
FROM customer;

DELETE FROM customer
WHERE customer_id = 2;

UPDATE customer 
SET last_name = 'Powers'
WHERE customer_id = 2;



