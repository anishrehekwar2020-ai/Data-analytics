CREATE DATABASE restaurant_db;

USE restaurant_db;

CREATE TABLE restaurant (
    restaurant_id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_name VARCHAR(100),
    address VARCHAR(255),
    phone VARCHAR(15)
);

select * from restaurant;

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (restaurant_id)
    REFERENCES restaurant(restaurant_id)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(255)
);