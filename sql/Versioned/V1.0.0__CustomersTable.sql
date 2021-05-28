CREATE TABLE customers (
    customer_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    name VARCHAR(25) NOT NULL,
    address VARCHAR(50),
    email VARCHAR(30)
PRIMARY KEY(customer_id)
);