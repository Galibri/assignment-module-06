-- Active: 1699024064604@@127.0.0.1@3306@the_new_shop

-- Write a SQL query to retrieve the product name, quantity, and total amount for each order item. Display the result in ascending order of the order ID.

SELECT
    oi.order_id,
    p.name AS product_name,
    oi.quantity, (oi.quantity * oi.unit_price) AS total_amount
FROM order_items oi
    INNER JOIN products p ON oi.product_id = p.id
ORDER BY oi.order_id ASC;