-- Create the orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

-- Insert sample data
INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-15', 120.50, 5),
(2, '2023-01-20', 75.00, 2),
(3, '2023-02-10', 230.10, 3),
(4, '2023-03-05', 150.75, 1),
(5, '2023-03-15', 310.20, 4),
(6, '2023-04-01', 85.40, 6),
(7, '2023-04-12', 45.30, 2),
(8, '2023-05-30', 600.00, 7),
(9, '2023-06-10', 125.99, 3),
(10, '2023-07-04', 300.00, 8),
(11, '2022-11-11', 99.99, 9),
(12, '2024-02-20', 200.00, 1);

-- Query: Revenue and volume by year/month (only for 2023)

SELECT
    YEAR(order_date) AS [year],
    MONTH(order_date) AS [month],
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    orders
WHERE
    YEAR(order_date) = 2023
GROUP BY
    YEAR(order_date), MONTH(order_date)
ORDER BY
    YEAR(order_date), MONTH(order_date);



