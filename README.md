
The database was designed with multiple interconnected tables, including Customers, Products, Orders and OrderDetails, . Data was inserted to simulate real-world transactions, and SQL queries were used to perform critical analyses, such as tracking best-selling products and identifying peak sales periods  
# RHINO VENTURES Analysis Using MySQL
# Project Overview
This project is a database solution designed to help a retail store manage and analyze its sales, customers, products, and inventory using MySQL. It aims to demonstrate how structured data storage and SQL queries can support better business decisions and optimize store operations.

## Project Structure
Database Name: myproduct_db

Main Tables:

Customers — Information about store customers.

Products — Details of products sold.

Orders — Records of customer orders.

OrderDetails — Specific products in each order.


## Features
Create and manage a relational database for store operations.

Track sales performance and best-selling products.

Analyze customer purchase patterns and loyalty.

Monitor inventory levels to prevent stockouts or overstocking.

Generate sales reports based on dates, products, or customer types.

## Technologies Used
Database Management: MySQL

Tools: MySQL Workbench / phpMyAdmin (optional for UI)

Language: SQL (Structured Query Language)

## How to Run the Project
Install MySQL on your machine (if not already installed).

Clone or download the project files.

Open your MySQL environment and run the script to:

## Create the database.

Create all required tables.

Insert sample data into the tables.

Execute the provided SQL queries to perform data analysis.

## Example Queries
Top 5 Best-Selling Products:

sql
Copy
Edit
SELECT Products.product_name, SUM(OrderDetails.quantity) AS total_sold
FROM OrderDetails
JOIN Products ON OrderDetails.product_id = Products.product_id
GROUP BY Products.product_name
ORDER BY total_sold DESC
LIMIT 5;
Customers Who Made the Most Purchases:

sql
Copy
Edit
SELECT Customers.customer_name, COUNT(Orders.order_id) AS total_orders
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id
GROUP BY Customers.customer_name
ORDER BY total_orders DESC;
Current Inventory Status:

sql
Copy
Edit
SELECT product_name, quantity_in_stock
FROM Inventory
WHERE quantity_in_stock < 10;
## Future Improvements
Add user authentication for store staff.

Implement automated stock alerts.

Create a dashboard to visualize key store metrics.


