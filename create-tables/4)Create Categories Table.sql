-- Active: 1699024064604@@127.0.0.1@3306@the_new_shop

CREATE TABLE
    `categories`(
        `id` BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `product_id` BIGINT(20) NOT NULL,
        `name` VARCHAR(255) NOT NULL,
        `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        FOREIGN KEY (`product_id`) REFERENCES `products`(`id`)
    )