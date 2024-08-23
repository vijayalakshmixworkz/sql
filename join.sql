CREATE 4 TABLES WITH COLUMNS
APPLY CONSTRAINTS FOR THE TABLE.
INSERT 15 ROWS FOR EACH TABLE.
PERFORM INNER JOIN FOR ALL 4 TABLES.
PERFORM LEFT JOIN FOR ALL 4 TABLES.
PERFORM RIGHT JOIN FOR ALL 4 TABLES.
PERFORM COMBINATION OF INNER AND LEFT JOIN
PERFORM COMBINATION OF INNER AND RIGHT JOIN
PERFORM COMBINATION OF LEFT AND RIGHT JOIN
PERFORM COMBINATION OF RIGHT AND LEFT JOIN
use things;
CREATE TABLE Customers (
    CustomerID BIGINT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(20),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO Customers VALUES (1, 'John', 'Doe', 'johndoe@example.com', '123-456-7890', CURRENT_TIMESTAMP);
INSERT INTO Customers VALUES (2, 'Jane', 'Smith', 'janesmith@example.com', '234-567-8901',CURRENT_TIMESTAMP);
INSERT INTO Customers VALUES (3, 'Robert', 'Johnson', 'robertjohnson@example.com', '345-678-9012',CURRENT_TIMESTAMP);
INSERT INTO Customers VALUES (4, 'Emily', 'Davis', 'emilydavis@example.com', '456-789-0123',CURRENT_TIMESTAMP);
INSERT INTO Customers VALUES (5, 'Michael', 'Wilson', 'michaelwilson@example.com', '567-890-1234',CURRENT_TIMESTAMP);
INSERT INTO Customers VALUES (6, 'Sarah', 'Brown', 'sarahbrown@example.com', '678-901-2345',CURRENT_TIMESTAMP);
INSERT INTO Customers VALUES (7, 'David', 'Jones', 'davidjones@example.com', '789-012-3456',CURRENT_TIMESTAMP);
INSERT INTO Customers  VALUES (8, 'Laura', 'Garcia', 'lauragarcia@example.com', '890-123-4567',CURRENT_TIMESTAMP);
INSERT INTO Customers VALUES (9, 'James', 'Martinez', 'jamesmartinez@example.com', '901-234-5678',CURRENT_TIMESTAMP);
INSERT INTO Customers VALUES (10, 'Linda', 'Rodriguez', 'lindarodriguez@example.com', '012-345-6789',CURRENT_TIMESTAMP);
INSERT INTO Customers VALUES (11, 'Paul', 'Lopez', 'paullopez@example.com', '123-456-7891',CURRENT_TIMESTAMP);
INSERT INTO Customers VALUES (12, 'Mary', 'Gonzalez', 'marygonzalez@example.com', '234-567-8902',CURRENT_TIMESTAMP);
INSERT INTO Customers VALUES (13, 'Steven', 'Wilson', 'stevenwilson@example.com', '345-678-9013',CURRENT_TIMESTAMP);
INSERT INTO Customers VALUES (14, 'Patricia', 'Anderson', 'patriciaanderson@example.com', '456-789-0124',CURRENT_TIMESTAMP);
INSERT INTO Customers VALUES (15, 'Jennifer', 'Thomas', 'jenniferthomas@example.com', '567-890-1235',CURRENT_TIMESTAMP);

CREATE TABLE Products (
    ProductID BIGINT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Description VARCHAR(255),
    Price DECIMAL(10, 2) NOT NULL,
    Stock INT DEFAULT 0,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO Products VALUES (1, 'Laptop', 'High-performance laptop', 1200.00, 50, DEFAULT);
INSERT INTO Products VALUES (2, 'Smartphone', 'Latest model smartphone', 799.99, 100, DEFAULT);
INSERT INTO Products VALUES (3, 'Headphones', 'Noise-cancelling headphones', 199.99, 200, DEFAULT);
INSERT INTO Products VALUES (4, 'Keyboard', 'Mechanical keyboard', 89.99, 150, DEFAULT);
INSERT INTO Products VALUES (5, 'Mouse', 'Wireless mouse', 49.99, 250, DEFAULT);
INSERT INTO Products VALUES (6, 'Monitor', '27-inch 4K monitor', 349.99, 75, DEFAULT);
INSERT INTO Products VALUES (7, 'Tablet', '10-inch tablet', 399.99, 80, DEFAULT);
INSERT INTO Products VALUES (8, 'Printer', 'All-in-one printer', 129.99, 60, DEFAULT);
INSERT INTO Products VALUES (9, 'External Hard Drive', '1TB external hard drive', 79.99, 120, DEFAULT);
INSERT INTO Products VALUES (10, 'Webcam', 'HD webcam', 59.99, 200, DEFAULT);
INSERT INTO Products VALUES (11, 'Router', 'Wi-Fi 6 router', 99.99, 90, DEFAULT);
INSERT INTO Products VALUES (12, 'Speakers', 'Bluetooth speakers', 69.99, 180, DEFAULT);
INSERT INTO Products VALUES (13, 'Smartwatch', 'Fitness tracking smartwatch', 149.99, 110, DEFAULT);
INSERT INTO Products VALUES (14, 'USB Flash Drive', '64GB USB flash drive', 19.99, 300, DEFAULT);
INSERT INTO Products VALUES (15, 'Gaming Console', 'Next-gen gaming console', 499.99, 40, DEFAULT);


CREATE TABLE Orders (
    OrderID BIGINT PRIMARY KEY,
    CustomerID BIGINT,
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(50) NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders VALUES (1, 1, DEFAULT, 'Shipped', 150.50);
INSERT INTO Orders VALUES (2, 2, DEFAULT, 'Pending', 250.75);
INSERT INTO Orders VALUES (3, 3, DEFAULT, 'Delivered', 99.99);
INSERT INTO Orders VALUES (4, 1, DEFAULT, 'Cancelled', 300.00);
INSERT INTO Orders VALUES (5, 5, DEFAULT, 'Shipped', 450.25);
INSERT INTO Orders VALUES (6, 4, DEFAULT, 'Processing', 125.00);
INSERT INTO Orders VALUES (7, 2, DEFAULT, 'Delivered', 299.99);
INSERT INTO Orders VALUES (8, 6, DEFAULT, 'Pending', 189.50);
INSERT INTO Orders VALUES (9, 7, DEFAULT, 'Shipped', 220.00);
INSERT INTO Orders VALUES (10, 3, DEFAULT, 'Cancelled', 75.00);
INSERT INTO Orders VALUES (11, 8, DEFAULT, 'Delivered', 99.95);
INSERT INTO Orders VALUES (12, 9, DEFAULT, 'Processing', 320.00);
INSERT INTO Orders VALUES (13, 10, DEFAULT, 'Pending', 450.75);
INSERT INTO Orders VALUES (14, 11, DEFAULT, 'Shipped', 125.99);
INSERT INTO Orders VALUES (15, 12, DEFAULT, 'Delivered', 175.49);


CREATE TABLE OrderItems (
    OrderItemID BIGINT PRIMARY KEY,
    OrderID BIGINT,
    ProductID BIGINT,
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO OrderItems VALUES (1, 1, 1, 1, 1200.00);
INSERT INTO OrderItems VALUES (2, 2, 2, 1, 799.99);
INSERT INTO OrderItems VALUES (3, 3, 3, 2, 199.99);
INSERT INTO OrderItems VALUES (4, 4, 4, 1, 89.99);
INSERT INTO OrderItems VALUES (5, 5, 5, 3, 49.99);
INSERT INTO OrderItems VALUES (6, 6, 6, 1, 349.99);
INSERT INTO OrderItems VALUES (7, 7, 7, 1, 399.99);
INSERT INTO OrderItems VALUES (8, 8, 8, 2, 129.99);
INSERT INTO OrderItems VALUES (9, 9, 9, 1, 79.99);
INSERT INTO OrderItems VALUES (10, 10, 10, 3, 59.99);
INSERT INTO OrderItems VALUES (11, 11, 11, 1, 99.99);
INSERT INTO OrderItems VALUES (12, 12, 12, 2, 69.99);
INSERT INTO OrderItems VALUES (13, 13, 13, 1, 149.99);
INSERT INTO OrderItems VALUES (14, 14, 14, 4, 19.99);
INSERT INTO OrderItems VALUES (15, 15, 15, 2, 499.99);


SELECT 
    Customers.CustomerID,
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.Status,
    Orders.TotalAmount,
    OrderItems.OrderItemID,
    OrderItems.Quantity,
    OrderItems.Price,
    Products.ProductID,
    Products.ProductName,
    Products.Description,
    Products.Price AS ProductPrice
FROM 
    Customers
INNER JOIN 
    Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN 
    OrderItems ON Orders.OrderID = OrderItems.OrderID
INNER JOIN 
    Products ON OrderItems.ProductID = Products.ProductID;



SELECT 
    Customers.CustomerID,
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.Status,
    Orders.TotalAmount,
    OrderItems.OrderItemID,
    OrderItems.Quantity,
    OrderItems.Price,
    Products.ProductID,
    Products.ProductName,
    Products.Description,
    Products.Price AS ProductPrice
FROM 
    Customers
LEFT JOIN 
    Orders ON Customers.CustomerID = Orders.CustomerID
LEFT JOIN 
    OrderItems ON Orders.OrderID = OrderItems.OrderID
LEFT JOIN 
    Products ON OrderItems.ProductID = Products.ProductID;



SELECT 
    Customers.CustomerID,
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.Status,
    Orders.TotalAmount,
    OrderItems.OrderItemID,
    OrderItems.Quantity,
    OrderItems.Price,
    Products.ProductID,
    Products.ProductName,
    Products.Description,
    Products.Price AS ProductPrice
FROM 
    Products
RIGHT JOIN 
    OrderItems ON Products.ProductID = OrderItems.ProductID
RIGHT JOIN 
    Orders ON OrderItems.OrderID = Orders.OrderID
RIGHT JOIN 
    Customers ON Orders.CustomerID = Customers.CustomerID;

SELECT 
    Customers.CustomerID,
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.Status,
    Orders.TotalAmount,
    OrderItems.OrderItemID,
    OrderItems.Quantity,
    OrderItems.Price,
    Products.ProductID,
    Products.ProductName,
    Products.Description,
    Products.Price AS ProductPrice
FROM 
    Customers
INNER JOIN 
    Orders ON Customers.CustomerID = Orders.CustomerID
LEFT JOIN 
    OrderItems ON Orders.OrderID = OrderItems.OrderID
LEFT JOIN 
    Products ON OrderItems.ProductID = Products.ProductID;


SELECT 
    Customers.CustomerID,
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.Status,
    Orders.TotalAmount,
    OrderItems.OrderItemID,
    OrderItems.Quantity,
    OrderItems.Price,
    Products.ProductID,
    Products.ProductName,
    Products.Description,
    Products.Price AS ProductPrice
FROM 
    Products
RIGHT JOIN 
    OrderItems ON Products.ProductID = OrderItems.ProductID
RIGHT JOIN 
    Orders ON OrderItems.OrderID = Orders.OrderID
INNER JOIN 
    Customers ON Orders.CustomerID = Customers.CustomerID;

SELECT 
    Customers.CustomerID,
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.Status,
    Orders.TotalAmount,
    OrderItems.OrderItemID,
    OrderItems.Quantity,
    OrderItems.Price,
    Products.ProductID,
    Products.ProductName,
    Products.Description,
    Products.Price AS ProductPrice
FROM 
    Customers
LEFT JOIN 
    Orders ON Customers.CustomerID = Orders.CustomerID
RIGHT JOIN 
    OrderItems ON Orders.OrderID = OrderItems.OrderID
RIGHT JOIN 
    Products ON OrderItems.ProductID = Products.ProductID;

SELECT 
    Customers.CustomerID,
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.Status,
    Orders.TotalAmount,
    OrderItems.OrderItemID,
    OrderItems.Quantity,
    OrderItems.Price,
    Products.ProductID,
    Products.ProductName,
    Products.Description,
    Products.Price AS ProductPrice
FROM 
    Products
RIGHT JOIN 
    OrderItems ON Products.ProductID = OrderItems.ProductID
RIGHT JOIN 
    Orders ON OrderItems.OrderID = Orders.OrderID
LEFT JOIN 
    Customers ON Orders.CustomerID = Customers.CustomerID;

