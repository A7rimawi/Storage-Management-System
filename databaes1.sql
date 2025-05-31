drop database project;
create database project;
use project;
CREATE TABLE customer (
  CustomerID INT PRIMARY KEY,  
  CustomerName VARCHAR(50) ,
  CustomerAddress VARCHAR(50) ,
  CustomerPhone VARCHAR(25) ,
  age int
);

CREATE TABLE product (
  ProductID INT PRIMARY KEY,  
  ProductName VARCHAR(50),
  Category VARCHAR(50),
  Price real ,
maincompany varchar(32)

);
CREATE TABLE order_Request (
  OrderID INT PRIMARY KEY ,
  OrderDate DATE ,
  CustomerID INT not null,
  ShippingAddress varchar(32),
  PaymentMethod varchar(20) ,
  FOREIGN KEY (CustomerID) REFERENCES customer(CustomerID)
);

CREATE TABLE order_detail (
  OrderDetailID INT PRIMARY KEY,
  OrderID INT not null ,
  ProductID INT NOT NULL,
  OrderedQuantity INT,
  Price real,
  FOREIGN KEY (OrderID) REFERENCES order_Request(OrderID),
  FOREIGN KEY (ProductID) REFERENCES product(ProductID)
);

CREATE TABLE supplier (
  SupplierID INT PRIMARY KEY,
  SupplierName VARCHAR(32) ,
  productType VARCHAR(50) ,
  SupplierPhone VARCHAR(20) ,
  SupplierEmail VARCHAR(50)
);
CREATE TABLE inventory (
  InventoryID INT PRIMARY KEY ,
  ProductID INT ,
  UpdateDate DATE ,
  CurrentQuantity INT ,
  FOREIGN KEY (ProductID) REFERENCES product(ProductID)
);

-- Customers
INSERT INTO customer (CustomerID, CustomerName, CustomerAddress, CustomerPhone, age)
VALUES
(4, 'AA', '321 Pine St, Hamlet', '333-111-4444', 22),
(111, 'AA', '321 Pine St, Hamlet', '333-111-4444', 22),
(5, 'JJ', '555 Cedar St, Riverside', '222-555-7777', 44),
(6, 'David Lee', '777 Maple St, Hilltop', '888-999-2222', 50);


select age,count(*) from customer
group by age 
order by age ;
-- Products
INSERT INTO product (ProductID, ProductName, Category, Price, maincompany)
VALUES
(105, 'Tablet', 'Electronics', 299.99, 'CompanyA'),
(106, 'Microwave', 'Appliances', 89.99, 'CompanyC'),
(107, 'Basketball', 'Sports', 29.99, 'CompanyD'),
(108, 'Headphones', 'Electronics', 149.99, 'CompanyB');

-- Orders
INSERT INTO order_Request (OrderID, OrderDate, CustomerID, ShippingAddress, PaymentMethod)
VALUES
(204, '2024-04-18', 4, '321 Pine St, Hamlet', 'Cash'),
(205, '2024-04-19', 5, '555 Cedar St, Riverside', 'Credit Card'),
(206, '2024-04-20', 6, '777 Maple St, Hilltop', 'PayPal');

-- Order Details
INSERT INTO order_detail (OrderDetailID, OrderID, ProductID, OrderedQuantity, Price)
VALUES
(304, 204, 106, 1, 89.99),
(305, 205, 107, 2, 29.99),
(306, 206, 108, 1, 149.99);

-- Suppliers
INSERT INTO supplier (SupplierID, SupplierName, productType, SupplierPhone, SupplierEmail)
VALUES
(504, 'Supplier P', 'Electronics', '123-456-7890', 'supplierp@example.com'),
(505, 'Supplier Q', 'Appliances', '987-654-3210', 'supplierq@example.com'),
(506, 'Supplier R', 'Sports', '111-222-3333', 'supplierr@example.com');

-- Inventory
INSERT INTO inventory (InventoryID, ProductID, UpdateDate, CurrentQuantity)
VALUES
(603, 105, '2024-04-21', 15),
(604, 106, '2024-04-22', 8),
(605, 107, '2024-04-23', 20),
(606, 108, '2024-04-24', 12);
-- Customers
INSERT INTO customer (CustomerID, CustomerName, CustomerAddress, CustomerPhone, age)
VALUES
(7, 'Sarah Wilson', '888 Oak St, Lakeside', '777-333-1111', 40),
(8, 'Robert Garcia', '444 Pine St, Valleytown', '222-888-4444', 33),
(9, 'Michelle Martinez', '999 Elm St, Mountainview', '555-777-9999', 30);

-- Products
INSERT INTO product (ProductID, ProductName, Category, Price, maincompany)
VALUES
(109, 'Digital Camera', 'Electronics', 199.99, 'CompanyA'),
(110, 'Refrigerator', 'Appliances', 799.99, 'CompanyC'),
(111, 'Soccer Ball', 'Sports', 19.99, 'CompanyD'),
(112, 'Smartwatch', 'Electronics', 249.99, 'CompanyB');

-- Orders
INSERT INTO order_Request (OrderID, OrderDate, CustomerID, ShippingAddress, PaymentMethod)
VALUES
(207, '2024-04-21', 7, '888 Oak St, Lakeside', 'Credit Card'),
(208, '2024-04-22', 8, '444 Pine St, Valleytown', 'Cash'),
(209, '2024-04-23', 9, '999 Elm St, Mountainview', 'PayPal');

-- Order Details
INSERT INTO order_detail (OrderDetailID, OrderID, ProductID, OrderedQuantity, Price)
VALUES
(307, 207, 109, 1, 199.99),
(308, 208, 110, 1, 799.99),
(309, 209, 111, 3, 19.99),
(310, 209, 112, 1, 249.99);

-- Suppliers
INSERT INTO supplier (SupplierID, SupplierName, productType, SupplierPhone, SupplierEmail)
VALUES
(507, 'Supplier S', 'Electronics', '333-444-5555', 'suppliers@example.com'),
(508, 'Supplier T', 'Appliances', '666-777-8888', 'suppliert@example.com'),
(509, 'Supplier U', 'Sports', '999-000-1111', 'supplieru@example.com');

-- Inventory
INSERT INTO inventory (InventoryID, ProductID, UpdateDate, CurrentQuantity)
VALUES
(607, 109, '2024-04-25', 10),
(608, 110, '2024-04-26', 5),
(609, 111, '2024-04-27', 30),
(610, 112, '2024-04-28', 7);


