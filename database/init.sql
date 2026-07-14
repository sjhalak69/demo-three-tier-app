CREATE DATABASE IF NOT EXISTS my_app_db;
USE my_app_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO users (name, email)
VALUES ('John Doe','john.doe@example.com')
ON DUPLICATE KEY UPDATE name=name;

INSERT INTO users (name, email)
values ('Jane Smith','janesmoth@example.com')
ON DUPLICATE KEY UPDATE name=name;