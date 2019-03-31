--  ADDRESSES TABLE

CREATE TABLE `addresses`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `address1` varchar
(255) NOT NULL,
  `address2` varchar
(255) DEFAULT NULL,
  `city` varchar
(255) NOT NULL,
  `postal_code` varchar
(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY
(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- CUSTOMERS TABLE

CREATE TABLE `customers`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `name` varchar
(255) NOT NULL,
  `email` varchar
(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY
(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


-- ORDERS TABLE

CREATE TABLE `orders`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar
(255) NOT NULL,
  `total` float NOT NULL,
  `address_id` int
(11) NOT NULL,
  `paid` tinyint
(4) NOT NULL,
  `customer_id` int
(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY
(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ORDERS_PRODUCTS TABLE

CREATE TABLE `orders_products`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `order_id` int
(11) NOT NULL,
  `product_id` int
(11) NOT NULL,
  `quantity` int
(11) NOT NULL,
  PRIMARY KEY
(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;


-- PAYMENTS TABLE

CREATE TABLE `payments`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `order_id` int
(11) NOT NULL,
  `failed` tinyint
(4) NOT NULL,
  `transaction_id` varchar
(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY
(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


-- PRODUCTS TABLE

CREATE TABLE `products`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `title` varchar
(255) NOT NULL,
  `slug` varchar
(255) NOT NULL,
  `description` text,
  `price` float NOT NULL,
  `image` varchar
(255) DEFAULT NULL,
  `stock` int
(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY
(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;




