DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    order_date DATE NOT NULL,
    status ENUM('pending', 'completed', 'cancelled') NOT NULL
);

INSERT INTO orders (customer_id, total_amount, order_date, status) VALUES
(1, 3200000, '2025-01-01', 'completed'),
(2, 4500000, '2025-01-02', 'pending'),
(3, 7800000, '2025-01-03', 'completed'),
(4, 1200000, '2025-01-04', 'cancelled'),
(5, 6600000, '2025-01-05', 'completed'),
(1, 2300000, '2025-01-06', 'pending'),
(2, 9100000, '2025-01-07', 'completed'),
(3, 1500000, '2025-01-08', 'pending'),
(4, 5400000, '2025-01-09', 'completed'),
(5, 3700000, '2025-01-10', 'completed'),
(1, 8200000, '2025-01-11', 'pending'),
(2, 2900000, '2025-01-12', 'completed'),
(3, 6100000, '2025-01-13', 'completed'),
(4, 4300000, '2025-01-14', 'pending'),
(5, 9800000, '2025-01-15', 'completed');

SELECT *
FROM orders
WHERE status != 'cancelled'
ORDER BY order_date DESC
LIMIT 5 OFFSET 0;

SELECT *
FROM orders
WHERE status != 'cancelled'
ORDER BY order_date DESC
LIMIT 5 OFFSET 5;

SELECT *
FROM orders
WHERE status != 'cancelled'
ORDER BY order_date DESC
LIMIT 5 OFFSET 10;
