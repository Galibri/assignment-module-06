-- Active: 1699024064604@@127.0.0.1@3306@the_new_shop

CREATE TABLE
    `products`(
        `id` BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `category_id` BIGINT(20) NOT NULL,
        `name` VARCHAR(255) NOT NULL,
        `description` VARCHAR(255) NOT NULL,
        `price` DECIMAL(10, 2) NOT NULL,
        `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    )