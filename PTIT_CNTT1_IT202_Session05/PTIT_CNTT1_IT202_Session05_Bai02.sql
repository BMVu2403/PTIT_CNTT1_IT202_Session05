DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    city VARCHAR(255),
    status ENUM('active', 'inactive') NOT NULL
);

INSERT INTO customers (full_name, email, city, status) VALUES
('Nguyen Van An', 'an@gmail.com', 'TP.HCM', 'active'),
('Tran Thi Binh', 'binh@gmail.com', 'Ha Noi', 'active'),
('Le Van Cuong', 'cuong@gmail.com', 'TP.HCM', 'inactive'),
('Pham Thi Dao', 'dao@gmail.com', 'Ha Noi', 'inactive'),
('Hoang Van Em', 'em@gmail.com', 'Da Nang', 'active');

SELECT * FROM customers;

SELECT *
FROM customers
WHERE city = 'TP.HCM';

SELECT *
FROM customers
WHERE status = 'active'
  AND city = 'Ha Noi';

SELECT *
FROM customers
ORDER BY full_name ASC;
