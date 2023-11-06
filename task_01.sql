-- Active: 1699024064604@@127.0.0.1@3306@the_new_shop

-- Write a SQL query to retrieve all the customer information along with the total number of orders placed by each customer. Display the result in descending order of the number of orders.

SELECT
    c.id,
    c.name,
    c.email,
    c.location,
    COUNT(o.id) AS total_orders
FROM customers c
    LEFT JOIN orders o ON c.id = o.customer_id
GROUP BY c.id
ORDER BY total_orders DESC;