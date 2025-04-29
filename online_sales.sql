CREATE DATABASE elevate;
USE elevate;

CREATE TABLE online_sales (
    order_id INT NOT NULL,
    order_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    product_id INT NOT NULL,
    PRIMARY KEY (order_id)
);

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(101, '2024-01-15', 199.99, 1),
(102, '2024-01-20', 89.50, 2),
(103, '2024-02-05', 120.00, 3),
(104, '2024-02-18', 250.00, 1),
(105, '2024-03-01', 300.75, 4),
(106, '2024-03-10', 150.25, 2),
(107, '2024-04-02', 175.50, 3),
(108, '2024-04-15', 220.00, 4),
(109, '2024-05-03', 95.00, 1),
(110, '2024-05-10', 130.00, 2);

SELECT 
    order_id,
    order_date,
    EXTRACT(MONTH FROM order_date) AS order_month
FROM 
    online_sales;
    
SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    COUNT(*) AS total_orders
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM order_date), 
    EXTRACT(MONTH FROM order_date);


SELECT 
    SUM(amount) AS total_revenue
FROM 
    online_sales;


SELECT 
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales;


SELECT 
    order_id,
    order_date,
    amount
FROM 
    online_sales
ORDER BY 
    order_date ASC;
    
    
SELECT 
    *
FROM 
    online_sales
WHERE 
    order_date >= '2024-03-01' AND order_date < '2024-04-01';

