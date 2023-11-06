-- Active: 1699024064604@@127.0.0.1@3306@the_new_shop

CREATE TABLE
    `orders`(
        `id` BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `customer_id` BIGINT(20) NOT NULL,
        `order_date` DATE NOT NULL,
        `total` DECIMAL(10, 2) NOT NULL,
        `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        FOREIGN KEY (`customer_id`) REFERENCES `customers`(`id`)
    )