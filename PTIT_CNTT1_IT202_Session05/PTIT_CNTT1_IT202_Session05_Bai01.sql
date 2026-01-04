DROP TABLE IF EXISTS Product;

CREATE TABLE Product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    status ENUM('active', 'inactive') NOT NULL
);

INSERT INTO Product (product_name, price, stock, status) VALUES
('Laptop Dell', 15000000, 10, 'active'),
('Chuột Logitech', 500000, 50, 'active'),
('Bàn phím cơ', 1200000, 30, 'active'),
('Màn hình Samsung', 3500000, 15, 'inactive'),
('Tai nghe Bluetooth', 900000, 40, 'active');

SELECT * FROM Product;

SELECT * 
FROM Product
WHERE status = 'active';

SELECT * 
FROM Product
WHERE price > 1000000;

SELECT * 
FROM Product
WHERE status = 'active'
ORDER BY price ASC;
