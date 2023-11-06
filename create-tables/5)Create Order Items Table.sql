-- Active: 1699024064604@@127.0.0.1@3306@the_new_shop

CREATE TABLE
    `order_items`(
        `id` BIGINT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `order_id` BIGINT(20) NOT NULL,
        `product_id` BIGINT(20) NOT NULL,
        `customer_id` BIGINT(20) NOT NULL,
        `quantity` INT NOT NULL,
        `unit_price` DECIMAL(10, 2) NOT NULL,
        `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        FOREIGN KEY (`order_id`) REFERENCES `orders`(`id`),
        FOREIGN KEY (`product_id`) REFERENCES `products`(`id`),
        FOREIGN KEY (`customer_id`) REFERENCES `customers`(`id`)
    )