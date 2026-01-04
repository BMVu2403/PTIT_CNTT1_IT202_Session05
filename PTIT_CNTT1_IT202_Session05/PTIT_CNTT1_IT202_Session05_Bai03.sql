DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    order_date DATE NOT NULL,
    status ENUM('pending', 'completed', 'cancelled') NOT NULL
);

INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES
(1, 3200000, '2025-01-05', 'completed'),
(2, 7800000, '2025-01-06', 'completed'),
(3, 1500000, '2025-01-07', 'pending'),
(1, 9200000, '2025-01-08', 'completed'),
(4, 4500000, '2025-01-09', 'cancelled'),
(2, 6100000, '2025-01-10', 'completed'),
(3, 2700000, '2025-01-11', 'pending');

SELECT *
FROM orders
WHERE status = 'completed';

SELECT *
FROM orders
WHERE total_amount > 5000000;

SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 5;

SELECT *
FROM orders
WHERE status = 'completed'
ORDER BY total_amount DESC;
