CREATE TABLE registered_user (
    USERNAME  VARCHAR(100) PRIMARY KEY,
    AGE INT  NOT NULL ,
    PHONE BIGINT,
    ADDRESS VARCHAR(1000) NOT NULL 
);

INSERT INTO registered_user (USERNAME, AGE, PHONE, ADDRESS)
VALUES 
('John Doe', 30, 1234567890, '123 Main Street, City, Country'),
('Jane Smith', 25, 9876543210, '456 Elm Street, Town, Country'),
('Alice Johnson', 35, 5555555555, '789 Oak Avenue, Village, Country'),
('Bob Brown', 40, 9999999999, '321 Pine Road, Town, Country'),
('Emily Davis', 28, 1111111111, '654 Maple Lane, City, Country'),
('Michael Wilson', 45, 2222222222, '987 Cedar Drive, Village, Country'),
('Sarah Taylor', 32, 3333333333, '246 Birch Street, City, Country'),
('David Martinez', 38, 4444444444, '135 Walnut Avenue, Town, Country'),
('Jessica Lee', 27, 6666666666, '879 Willow Road, Village, Country'),
('Kevin Miller', 50, 8888888888, '753 Rose Boulevard, City, Country');

SELECT * FROM registered_user;

SELECT "" ;
-- SECOND TABLE WISHLIST 
CREATE TABLE WISHLIST (
    USERNAME VARCHAR(100),
    PRODUCT_NAME VARCHAR(100),
    QUANTITY INT DEFAULT 0,
    FOREIGN KEY (USERNAME) REFERENCES registered_user(USERNAME)
);
INSERT INTO WISHLIST (USERNAME, PRODUCT_NAME, QUANTITY) VALUES
('user1', 'Product A', 2),
('user2', 'Product B', 1),
('user3', 'Product C', 3),
('user4', 'Product D', 1),
('user5', 'Product E', 2),
('user6', 'Product F', 1),
('user7', 'Product G', 3),
('user8', 'Product H', 2),
('user9', 'Product I', 1),
('user10', 'Product J', 2);

SELECT * FROM WISHLIST  WHERE USERNAME  ='user1' and QUANTITY = 2  ;
-- SOME CONDITION  BASED OUTPUT FOR THE WISHLSIT TABLE   ;


-- THIRD TABLE  FOR THE PRODUCT 
CREATE TABLE PRODUCT (
    NAME VARCHAR(100),
    QUANTITY INT NOT NULL,
    PRODUCT_ID INT AUTO_INCREMENT PRIMARY KEY,
    STOCK_ID INT
);

INSERT INTO PRODUCT (NAME, QUANTITY, STOCK_ID) VALUES
('Smartphone', 50, 2001),
('Laptop', 30, 2002),
('Smart TV', 25, 2003),
('Headphones', 40, 2004),
('Tablet', 35, 2005),
('Smart Watch', 20, 2006),
('Bluetooth Speaker', 45, 2007),
('Gaming Console', 15, 2008),
('Digital Camera', 20, 2009),
('Wireless Earbuds', 30, 2010);

ALTER TABLE PRODUCT ADD COLUMN PRICE INT;

UPDATE PRODUCT SET PRICE = 
CASE PRODUCT_ID
    WHEN 1 THEN 500
    WHEN 2 THEN 800
    WHEN 3 THEN 700
    WHEN 4 THEN 100
    WHEN 5 THEN 300
    WHEN 6 THEN 200
    WHEN 7 THEN 150
    WHEN 8 THEN 400
    WHEN 9 THEN 600
    WHEN 10 THEN 120
END;

SELECT * FROM PRODUCT;



-- TABLE 4 FEEDBACK TABLE
SELECT " "; 
CREATE TABLE FEEDBACK (
    USERNAME VARCHAR(100),
    FEEDBACK_NUMBER INT AUTO_INCREMENT PRIMARY KEY,
    DESCRIPTION VARCHAR(2000),
    RATING INT CHECK (RATING >= 0 AND RATING <= 5),
    FOREIGN KEY (USERNAME) REFERENCES registered_user(USERNAME)
);

INSERT INTO FEEDBACK (USERNAME, DESCRIPTION, RATING) VALUES
('John Doe', 'Great customer service, very helpful staff.', 5),
('Jane Smith', 'The product quality is excellent, satisfied with the purchase.', 4),
('Alice Johnson', 'Had some issues with delivery, but customer support resolved it quickly.', 3),
('Bob Brown', 'The product was damaged upon arrival, need a replacement.', 2),
('Emily Davis', 'Overall satisfied with the product, but the delivery was delayed.', 4),
('Michael Wilson', 'Impressed with the fast delivery and good packaging.', 5),
('Sarah Taylor', 'The product does not meet my expectations, need a refund.', 1),
('David Martinez', 'Excellent product quality, highly recommend it.', 5),
('Jessica Lee', 'The customer service needs improvement, had difficulty contacting them.', 2),
('Kevin Miller', 'The product description was misleading, disappointed with the purchase.', 1);
SELECT * FROM FEEDBACK WHERE RATING>=2  ;


-- Table 5 RETURN REQUEST TABLE 
CREATE TABLE return_request (
    USERNAME VARCHAR(100),
    RETURN_ID INT AUTO_INCREMENT PRIMARY KEY,
    REASON VARCHAR(1000),
    FOREIGN KEY (USERNAME) REFERENCES registered_user(USERNAME)
);

INSERT INTO return_request (USERNAME, REASON) VALUES
('John Doe', 'Product received damaged'),
('Jane Smith', 'Wrong product delivered'),
('Alice Johnson', 'Not satisfied with the product quality'),
('Bob Brown', 'Changed mind, no longer need the product'),
('Emily Davis', 'Received incorrect quantity of items'),
('Michael Wilson', 'Product does not match description'),
('Sarah Taylor', 'Product functionality issue'),
('David Martinez', 'Product expired or near expiration date'),
('Jessica Lee', 'Received duplicate item'),
('Kevin Miller', 'Product size or color does not match description');


SELECT "" ;
SELECT * FROM return_request JOIN registered_user ON return_request.USERNAME = registered_user.USERNAME;


-- TABLE 6 DELIVARY STATUS 
SELECT "" ;
CREATE TABLE DELIVERY (
    USERNAME VARCHAR(100),
    PHONE BIGINT,
    ADDRESS VARCHAR(100),
    DELIVERY_STATUS VARCHAR(10),
    FOREIGN KEY (USERNAME) REFERENCES registered_user(USERNAME)
);

INSERT INTO DELIVERY (USERNAME, PHONE, ADDRESS, DELIVERY_STATUS) VALUES
('John Doe', 1234567890, '123 Main Street, City, Country', 'YES'),
('Jane Smith', 9876543210, '456 Elm Street, Town, Country', 'NO'),
('Alice Johnson', 5555555555, '789 Oak Avenue, Village, Country', 'YES'),
('Bob Brown', 9999999999, '321 Pine Road, Town, Country', 'NO'),
('Emily Davis', 1111111111, '654 Maple Lane, City, Country', 'YES'),
('Michael Wilson', 2222222222, '987 Cedar Drive, Village, Country', 'NO'),
('Sarah Taylor', 3333333333, '246 Birch Street, City, Country', 'YES'),
('David Martinez', 4444444444, '135 Walnut Avenue, Town, Country', 'NO'),
('Jessica Lee', 6666666666, '879 Willow Road, Village, Country', 'YES'),
('Kevin Miller', 8888888888, '753 Rose Boulevard, City, Country', 'NO');

SELECT * FROM DELIVERY;

-- TABLE 7 OPERATING COUNTRY CODES 
SELECT "" ;
CREATE TABLE OPT_COUNTRY(NAME VARCHAR(1000) , ADDRESS VARCHAR(100) , PHONE BIGINT ) ;
INSERT INTO OPT_COUNTRY (NAME, ADDRESS, PHONE) VALUES
    ('United States', '123 Main St, New York', 1234567890),
    ('Canada', '456 Maple Ave, Toronto', 2345678901),
    ('United Kingdom', '789 Oak St, London', 3456789012),
    ('Germany', '101 Pine St, Berlin', 4567890123),
    ('France', '202 Elm St, Paris', 5678901234),
    ('Australia', '303 Cedar St, Sydney', 6789012345),
    ('Japan', '404 Birch St, Tokyo', 7890123456),
    ('South Korea', '505 Walnut St, Seoul', 8901234567),
    ('Brazil', '606 Ash St, Rio de Janeiro', 9012345678),
    ('India', '707 Chestnut St, Mumbai', 1234567890);

SELECT * FROM OPT_COUNTRY  ;


-- TABLE 8
SELECT "" ;

CREATE TABLE SALES (
    NAME VARCHAR(100),
    BUDGET INT,
    TOTAL_SALES INT
);

INSERT INTO SALES (NAME, BUDGET, TOTAL_SALES) VALUES
    ('United States', 100000, 120000),
    ('Canada', 80000, 95000),
    ('United Kingdom', 90000, 110000),
    ('Germany', 85000, 105000),
    ('France', 95000, 115000),
    ('Australia', 75000, 90000),
    ('Japan', 110000, 130000),
    ('South Korea', 82000, 100000),
    ('Brazil', 78000, 96000),
    ('India', 105000, 125000);
SELECT * FROM SALES ORDER BY TOTAL_SALES ASC;



-- TABLE 9  EMPLOYEE SALARY 
SELECT "" ;
CREATE TABLE EMPLOYEE (
    NAME VARCHAR(100),
    EMP_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    ADDRESS VARCHAR(100),
    PHONE BIGINT,
    BRANCH VARCHAR(100)
);

INSERT INTO EMPLOYEE (NAME, ADDRESS, PHONE, BRANCH) VALUES
    ('John Doe', '123 Main St', 1234567890, 'New York'),
    ('Jane Smith', '456 Elm St', 2345678901, 'Toronto'),
    ('Bob Johnson', '789 Oak St', 3456789012, 'London'),
    ('Alice Brown', '101 Maple St', 4567890123, 'Berlin'),
    ('Charlie Davis', '202 Pine St', 5678901234, 'Paris'),
    ('Emma Wilson', '303 Cedar St', 6789012345, 'Sydney'),
    ('Michael Taylor', '404 Walnut St', 7890123456, 'Tokyo'),
    ('Sarah Martinez', '505 Birch St', 8901234567, 'Seoul'),
    ('David Rodriguez', '606 Ash St', 9012345678, 'Rio de Janeiro'),
    ('Jennifer Anderson', '707 Chestnut St', 9123456789, 'Mumbai');
SELECT * FROM EMPLOYEE ;


-- TABLE 10 DEFECTED DEVICES 
SELECT "" ;
CREATE TABLE defected (
    NAME VARCHAR(100),
    PRODUCT_ID INT,
    REASON VARCHAR(1000),
    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID)
);
INSERT INTO defected (NAME, PRODUCT_ID, REASON) VALUES
    ('Defect1', 1, 'Broken screen'),
    ('Defect2', 2, 'Faulty battery'),
    ('Defect3', 3, 'Malfunctioning camera'),
    ('Defect4', 4, 'Damaged casing'),
    ('Defect5', 5, 'Defective motherboard'),
    ('Defect6', 6, 'Cracked display'),
    ('Defect7', 7, 'Water damage'),
    ('Defect8', 8, 'Faulty touch screen'),
    ('Defect9', 9, 'Software issue'),
    ('Defect10', 10, 'Power supply failure');

SELECT * FROM defected  ;

-- TABLE 11 
SELECT "" ;
CREATE TABLE WARRENTY (
    NAME VARCHAR(100),
    PRODUCT_ID INT,
    YEAROFWARENTY INT,
    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID)
);
INSERT INTO WARRENTY (NAME, PRODUCT_ID, YEAROFWARENTY)
VALUES
    ((SELECT NAME FROM PRODUCT WHERE PRODUCT_ID = 1), 1, 2),
    ((SELECT NAME FROM PRODUCT WHERE PRODUCT_ID = 2), 2, 3),
    ((SELECT NAME FROM PRODUCT WHERE PRODUCT_ID = 3), 3, 1),
    ((SELECT NAME FROM PRODUCT WHERE PRODUCT_ID = 4), 4, 2),
    ((SELECT NAME FROM PRODUCT WHERE PRODUCT_ID = 5), 5, 3),
    ((SELECT NAME FROM PRODUCT WHERE PRODUCT_ID = 6), 6, 1),
    ((SELECT NAME FROM PRODUCT WHERE PRODUCT_ID = 7), 7, 2),
    ((SELECT NAME FROM PRODUCT WHERE PRODUCT_ID = 8), 8, 3),
    ((SELECT NAME FROM PRODUCT WHERE PRODUCT_ID = 9), 9, 1),
    ((SELECT NAME FROM PRODUCT WHERE PRODUCT_ID = 10), 10, 2);
