ALTER TABLE orders 
ADD COLUMN current DATE NOT NULL DEFAULT CURRENT_DATE 
ADD COLUMN orderName VARCHAR(50);