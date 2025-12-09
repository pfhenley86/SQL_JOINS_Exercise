
/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */

SELECT P.Name as Product, C.Name as Category
FROM products as P
INNER JOIN categories AS C
ON C.CategoryID = p.CategoryID
WHERE C.Name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT p.Name as Product, p.Price as Price, r.Rating as Rating
FROM products as P
INNER JOIN reviews as R
ON R.ProductID = p.ProductID
Where R.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */

SELECT e.EmployeeID as Employee, e.LastName as Name, SUM(s.quantity) as Total
FROM employees as e
INNER JOIN sales as s
ON s.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID, e.LastName
ORDER BY Total DESC
LIMIT 100;

-- EmployeeID, lastname, firstname, middle,SalesID,Quantity

/* joins: find the name of the department, and the name of the category for Appliances and Games */

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */


-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */