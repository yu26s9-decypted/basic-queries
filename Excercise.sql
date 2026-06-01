use northwind;
-- Project

-- 1. What is the name of the table that holds the items Northwind sells?
-- Products
-- 2. Write a query to list the product id, product name, and unit price of every
-- product.
SELECT * FROM products;
-- 3. Write a query to list the product id, product name, and unit price of every product. Except this time, order then in ascending order by price.
SELECT * FROM products
ORDER BY unitprice;
-- 4. What are the products that we carry where the unit price is $7.50 or less?
SELECT * FROM products
WHERE unitprice < 7.50;
-- 5. What are the products that we carry where we have at least 100 units on hand?
SELECT * FROM products
WHERE unitsinstock >= 100;
-- Order them in descending order by price.
SELECT * FROM products
ORDER BY unitprice DESC;
-- 6. What are the products that we carry where we have at least 100 units on hand?
-- Order them in descending order by price. If two or more have the same price, list
-- those in ascending order by product name.
SELECT * FROM products
WHERE unitsinstock >= 100
ORDER BY unitprice DESC;


-- 7. What are the products that we carry where we have no units on hand, but 1 or
-- more units of them on backorder? Order them by product name.
SELECT * FROM products
WHERE unitsinstock = 0 AND unitsonorder >= 1;

-- 8. What is the name of the table that holds the types (categories) of the items
-- Northwind sells?
-- Cateogries - CategoryName

-- 9. Write a query that lists all of the columns and all the rows of the categories table?
SELECT * FROM categories;

-- 10. Examine the Products table. How does it identify the type (category) of each item
-- sold? Write a query to list all of the seafood items we carry.
SELECT Categories.CategoryID, Products.ProductName FROM Categories
INNER JOIN Products ON Categories.CategoryID = Products.CategoriesID;

-- 11. What are the first and last names of all of the Northwind employees?
SELECT firstname, lastname FROM Employees;

-- 12. What employees have "manager" in their titles?
SELECT firstname, lastname, title FROM Employees
WHERE title LIKE "%manager%";

-- 13. List the distinct job titles in employees.
-- 14. What employees have a salary that is between $200 0 and $2500?
-- 15. List all the information about all of Northwind's suppliers.
-- 16. Examine the Products table. How do you know what supplier supplies each
-- product? Write a query to list all the items that "Tokyo Traders" supplies to
-- Northwind