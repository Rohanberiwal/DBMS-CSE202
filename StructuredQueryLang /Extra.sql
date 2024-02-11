-- Create smartphone table
CREATE TABLE smartphone (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(50),
    model VARCHAR(50),
    price DECIMAL(10, 2),
    storage_capacity INT
);


INSERT INTO smartphone (brand, model, price, storage_capacity)
VALUES 
    ('Samsung', 'Galaxy S21', 999.99, 128),
    ('Apple', 'iPhone 13', 1099.00, 256),
    ('Google', 'Pixel 6', 799.00, 128),
    ('OnePlus', '9 Pro', 899.00, 256),
    ('Xiaomi', 'Mi 11', 699.00, 128);

SELECT "TABLE: smartphone" as table_name  ;
SELECT * FROM smartphone;
