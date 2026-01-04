DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    sold_quantity INT NOT NULL
);

INSERT INTO products (product_name, price, sold_quantity) VALUES
('Laptop Dell', 15000000, 120),
('iPhone 14', 22000000, 200),
('Chuột Logitech', 500000, 450),
('Bàn phím cơ', 1200000, 380),
('Tai nghe Bluetooth', 900000, 410),
('Màn hình Samsung', 3500000, 160),
('Ổ cứng SSD', 1800000, 300),
('USB 64GB', 250000, 520),
('Webcam', 1100000, 210),
('Loa Bluetooth', 1700000, 330),
('Sạc nhanh', 400000, 480),
('Balo laptop', 600000, 260),
('Chuột Gaming', 800000, 290),
('Tai nghe Gaming', 1900000, 240),
('Bàn di chuột', 200000, 600);

SELECT *
FROM products
ORDER BY sold_quantity DESC
LIMIT 10;

SELECT *
FROM products
ORDER BY sold_quantity DESC
LIMIT 5 OFFSET 10;

SELECT *
FROM products
WHERE price < 2000000
ORDER BY sold_quantity DESC;
