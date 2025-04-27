use myproduct;
CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(100) NOT NULL,
Age int,
Gender VARCHAR(10) NOT NULL,
SignupDate date);
SELECT* FROM CUSTOMERS;


alter table customers
add email varchar(20);

alter table customers
modify column email varchar (20)
after CustomerName;

CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100),
Category VARCHAR(50),
Price DECIMAL (5,2));

SELECT * FROM products;

CREATE TABLE Orders(
OrderID INT Primary key,
CustomerId int,
productID int,
Quantity int,
OrderDate Date,
foreign key ( CustomerID) references CUSTOMERS(CustomerID),
foreign key (ProductID) references Products (ProductId)
);

select * from Orders;

-#-CUSTOMERS---#
INSERT INTO Customers values 
(1,"Alice Johnson","alice@gmail.com",22,"female","2024-09-10"),
(2,"John Doe","john@gmail.com",28,"male","2024-08-15"),
(3, "Fatima Bello","fatima@gmail.com",20,"female","2024-10-01"),
(4,"Emeka Obi","emeka@gmail.com",32,"male","2024-09-25");

#--Products--#
insert into Products values
(1, "Peperonni Pizza","Meat",12.99),
(2, "Margherita Pizza","Vegeterian",10.99),
(3, "BBQ Chicken Pizza","Meat",13.99),
(4, "Vegan Delight","Vegan",11.49);

#--Orders--#
Insert into Orders values
(101,1,2,1,"2024-10-12"),
(102,2,1,2,"2024-10-14"),
(103,3,4,1,"2024-10-15"),
(104,4,3,1,"2024-10-20"),
(105,1,1,1,"2024-10-22"),
(106,2,2,1,"2024-10-25");
describe customers;


select* 
from Customers
order by Age desc
limit 2 ;


select CustomerName,Age,
CASE
when Age <= 25 THEN 'YOUNG'
WHEN Age> 30 then 'OLD'
END AS AGEBRACKET
from Customers;



#--DISTINCT VALUES
select distinct Category 
from myproduct.Products;




#--COUNT FUNCTION--
select count(*)
from Products;

select count(quantity) as quantity_count
from orders;

#-- SUM FUNCTION---
select sum(price)
from Products;

select sum(quantity)
from Orders;

#--AVERAGE FUNCTION
SELECT avg(Quantity)
from Orders;

SELECT avg(Price)
from Products;

#---MAX FUNCTION---
select max(price)
from products;

select max(quantity)
from Orders;
#--MIN FUNCTION--
SELECT min(Price)
from products;

select min(quantity)
from Orders;



