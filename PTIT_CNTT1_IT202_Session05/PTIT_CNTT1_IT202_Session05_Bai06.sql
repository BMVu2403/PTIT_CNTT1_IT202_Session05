DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    status ENUM('active', 'inactive') NOT NULL
);

INSERT INTO products (product_name, price, status) VALUES
('Bàn phím cơ', 1200000, 'active'),
('Chuột Logitech', 800000, 'active'),
('Tai nghe Bluetooth', 1500000, 'active'),
('Loa Bluetooth', 1800000, 'active'),
('Webcam', 1100000, 'active'),
('Ổ cứng SSD', 2500000, 'active'),
('USB 64GB', 300000, 'active'),
('Balo laptop', 1900000, 'active'),
('Sạc nhanh', 1400000, 'active'),
('Chuột Gaming', 2200000, 'active'),
('Tai nghe Gaming', 2700000, 'active'),
('Màn hình Samsung', 3500000, 'active'),
('Laptop Dell', 15000000, 'active'),
('Bàn di chuột', 200000, 'inactive'),
('Adapter', 1000000, 'active'),
('Case máy tính', 3000000, 'active'),
('RAM 16GB', 2800000, 'active'),
('RAM 8GB', 1600000, 'active'),
('SSD NVMe', 2900000, 'active'),
('Thẻ nhớ 128GB', 1300000, 'active');

SELECT *
FROM products
WHERE status = 'active'
  AND price BETWEEN 1000000 AND 3000000
ORDER BY price ASC
LIMIT 10 OFFSET 0;

SELECT *
FROM products
WHERE status = 'active'
  AND price BETWEEN 1000000 AND 3000000
ORDER BY price ASC
LIMIT 10 OFFSET 10;
