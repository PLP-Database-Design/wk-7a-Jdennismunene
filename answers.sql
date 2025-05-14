-- Question 1
SELECT OrderID, CustomerName, TRIM(value) As Products
FROM ProductDetail,
STRING_SPLIT(Products, ',');


-- Question 2
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerName VARCHAR(100)
);

INSERT INTO Orders (OrderID, CustomerName)
VALUES 
  (101, 'John Doe'),
  (102, 'Jane Smith'),
  (103, 'Emily Clark');

CREATE TABLE OrderDetails (
  OrderID INT,
  Product VARCHAR(100),
  Quantity INT,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO OrderDetails (OrderID, Product, Quantity)
VALUES 
  (101, 'Laptop', 2),
  (101, 'Mouse', 1),
  (102, 'Tablet', 3),
  (102, 'Keyboard', 1),
  (102, 'Mouse', 2),
  (103, 'Phone', 1);
