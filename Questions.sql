/*1. Retrieve all columns from the "Customers" table:*/
--write your query here (3 points)
select * from Customers;


/*2. Retrieve the "ProductName" column from the "Products" table:*/
--write your query here (3 points)
select ProductName from Products ;

/*3. Retrieve the "OrderID" and "OrderDate" columns from the "Orders" table,
ordered by "OrderDate" in descending order:*/
--write your query here (3 points)

select OrderID , OrderDate from "Orders" order by OrderDate DESC ;

/*4. Retrieve the "CompanyName" column from the "Suppliers" table, 
where the "Country" is "USA":*/
--write your query here (3 points)
select CompanyName from Suppliers where Country = 'USA';

/*5. Retrieve the "CategoryName" column from the "Categories" table, 
ordered by "CategoryName" in alphabetical order:*/
--write your query here (3 points)

select CategoryName from Categories order by CategoryName DESC ;

/*6. Retrieve the "CompanyName" and "ShipCity" columns from the "Shippers" table, joining it with the Orders
table to obtain the Shipper's city for each order*/
--write your query here (3 points)
 select CompanyName , ShipCity from Shippers , Orders ;

/*7. Retrieve the "FirstName" and "LastName" columns from the "Employees" table, 
where the "Country" is not "USA":*/
--write your query here (3 points)

select FirstName , LastName from Employees where Country != 'USA';

/*8. Retrieve the "CustomerID" and "CompanyName" columns from the "Customers" table, 
where the "City" is either "London" or "Paris":*/
--write your query here (3 points)

select CustomerID , CompanyName from Customers where City  ='London' or City  = 'Paris' ;


/*9. Retrieve the "OrderID" and "ProductName" columns from the "Order Details" table, 
where the "Quantity" is greater than 10:*/
--write your query here (3 points)

select OrderID ,ProductName from [Order Details] , products where [Order Details].ProductID = Products.ProductId and (Quantity  > 10 ) ;

/*10. Retrieve the "EmployeeID" and "Title" columns from the "Employees" table, 
where the "Title" contains the word "Manager":*/
--write your query here (3 points)

select EmployeeID ,Title from Employees where Title like '%Manager%' ;

/*11. Retrieve the "SupplierID" and "CompanyName" columns from the "Suppliers" table, 
where the "CompanyName" starts with the letter "A":*/
--write your query here (6 points)

select SupplierID ,CompanyName from Suppliers where CompanyName like 'A%' ;

/*12. Retrieve the "ProductID" and "UnitPrice" columns from the "Products" table, 
where the "UnitPrice" is between 10 and 20:*/
--write your query here (6 points)

select ProductID ,UnitPrice from Products where UnitPrice between 10 and 20 ;


/*13. Retrieve the "ShipCountry" and the count of orders shipped to each country from the "Orders" table, 
grouped by "ShipCountry":*/
--write your query here (6 points)
select ShipCountry , count( quantity) as "count of orders"  from Orders ,[Order Details]  where [Order Details].OrderID=Orders.OrderID  group by ShipCountry ;


/*14. Retrieve the "CustomerID" and the sum of "Quantity" from the "Order Details" table, grouped by "CustomerID", 
ordered by the sum in descending order:*/
--write your query here (6 points)

select CustomerID , sum( quantity) as "sum of orders"  from Customers ,[Order Details] group by CustomerID order by sum( quantity) DESC ; 

/*15. Retrieve the "ProductName" and the average of "UnitPrice" from the "Products" table, grouped by "ProductName", 
ordered by the average in descending order:*/
--write your query here (6 points)
select ProductName , AVG(UnitPrice) as average  from Products group by ProductName order by AVG(UnitPrice) DESC ; 

/*16. Retrieve the "OrderID" and "OrderDate" columns from the "Orders" table, 
where the "OrderDate" is in the year 1997 and the "ShipCity" is "Berlin":*/
--write your query here (6 points)
select OrderID , OrderDate from Orders where OrderDate like '%1997%'  and ShipCity like '%Berlin%' ;

/*17. Retrieve the "CustomerID" and the minimum "OrderDate" from the "Orders" table, 
grouped by "CustomerID":*/
--write your query here (6 points)
select CustomerID , min(OrderDate) from  "Orders" group by CustomerID ;

/*18. Retrieve the "OrderID" and the maximum "RequiredDate" from the "Orders" table, 
where the "ShipCountry" is either "France" or "Spain":*/
--write your query here (6 points)


/*19. Retrieve the "ProductID" and the sum of "Quantity" from the "Order Details" table, grouped by "ProductID", 
where the sum is greater than 100:*/
--write your query here (6 points)


/*20. Retrieve the "EmployeeID" and the count of orders handled by each employee from the "Employees" table, grouped by "EmployeeID", 
ordered by the count in descending order:*/
--write your query here (9 points)


/*21. Retrieve the customer ID, company name, and total revenue for customers who have made at least 5 orders, 
ordered by total revenue in descending order.*/
--write your query here (9 points)


/*22. Retrieve the employee ID, first name, last name, and the number of orders they have taken, 
for employees who have taken orders in the year 1996, ordered by the number of orders in descending order.*/
--write your query here (9 points)


/*23. Retrieve the product name, unit price, and the number of times each product has been ordered, 
for products that have been ordered more than 100 times, ordered by the number of times ordered in descending order.*/
--write your query here (9 points)


/*24. Retrieve the employee ID, first name, last name, and the total revenue generated from the orders they have taken, 
for employees who have generated revenue exceeding $100,000, ordered by total revenue in descending order.*/
--write your query here (9 points)


/*25. Retrieve the customer ID, company name, and the number of distinct products they have ordered, 
for customers who have ordered products from more than 5 different categories, ordered by the number of distinct products in descending order.*/
--write your query here (9 points)


/*26. Retrieve the employee ID, first name, last name, and the number of orders they have taken, 
for employees who have taken orders in the month of February, sorted by the number of orders in descending order.*/
--write your query here (9 points)


/*27. Retrieve the product ID, product name, and the total revenue generated from the sales of each product, 
for products that have generated revenue exceeding the average revenue of all products, ordered by total revenue in descending order.*/
--write your query here (9 points)


/*28. Retrieve the category name and the average unit price of products within each category, 
for categories that have at least 10 products, ordered by the average unit price in descending order.*/
--write your query here (9 points)


/*29. Retrieve the customer ID, company name, and the total quantity of products ordered by each customer, 
for customers who have ordered a total quantity exceeding 1000, ordered by the total quantity in descending order.*/
--write your query here (9 points)


/*30. Retrieve the supplier company name and the number of products supplied by each supplier, 
for suppliers who have supplied more products than the average number of products supplied by all suppliers, ordered by the number of products supplied in descending order.*/
--write your query here (9 points)