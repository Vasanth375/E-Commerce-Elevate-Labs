CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    address VARCHAR(255)
);

CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10, 2),
    stock INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE OrderItems (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


INSERT INTO Customers (name, email, address) VALUES
('Vasanth', 'Vasanth@gmail.com', 'Hyderbad, India'),
('Neeraj', 'neeraj@gmail.com', 'Bangalore, India');

INSERT INTO Categories (category_name) VALUES
('Electronics'),
('Books'),
('Clothing');

INSERT INTO Products (name, price, stock, category_id) VALUES
('Smartphone', 14999.99, 50, 1),
('Wireless Earbuds', 2999.99, 150, 1),
('Fiction Novel', 499.00, 200, 2),
('T-Shirt', 799.00, 100, 3);

INSERT INTO Orders (customer_id, order_date) VALUES
(1, '2025-06-22'),
(2, '2025-06-23');

INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(1, 1, 1),  
(1, 2, 2),  
(2, 3, 3);  