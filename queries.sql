-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
    SELECT product.ProductName, 
    category.CategoryName 
    FROM product 
    JOIN category 
    ON product.CategoryId = category.Id;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
    SELECT [order].Id,
    shipper.CompanyName, 
    [order].OrderDate FROM [order] 
    JOIN shipper 
    ON [order].ShipVia = shipper.Id 
    WHERE [order].OrderDate < "2012-08-09";
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
    SELECT product.ProductName, 
    orderDetail.Quantity 
    FROM product 
    JOIN orderDetail 
    ON product.Id = orderDetail.ProductId 
    WHERE orderDetail.OrderId = 10251
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
    SELECT [order].Id, customer.CompanyName,
    employee.LastName
    FROM [order]
    JOIN customer 
    ON customer.Id = [order].CustomerId 
    JOIN employee 
    ON employee.Id = [order].EmployeeId