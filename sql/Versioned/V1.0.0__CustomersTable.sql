CREATE TABLE customers (
    customer_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    name VARCHAR(25) NOT NULL,
    address VARCHAR(50) NULL,
    email VARCHAR(30) NULL 
PRIMARY KEY(customer_id)
);