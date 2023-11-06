-- Active: 1699024064604@@127.0.0.1@3306@the_new_shop

-- Write a SQL query to retrieve the top 5 customers who have made the highest total purchase amount. Display the customer name along with the total purchase amount in descending order of the purchase amount.

SELECT
    c.name AS customer_name,
    SUM(o.total) AS total_purchase_amount
FROM orders o
    INNER JOIN customers c ON o.customer_id = c.id
GROUP BY c.name
ORDER BY
    total_purchase_amount DESC
LIMIT 5;