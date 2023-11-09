select * from Categories

--number 1
select CategoryName, Description from Categories order by CategoryName
 
--number 2
select ContactName, CompanyName, ContactTitle, Phone from Customers order by phone

--number 3
select upper(LastName) as LastName, upper(FirstName) as FirstName, HireDate  from Employees order by HireDate DESC

--number 4
select top(10)  OrderID, OrderDate, ShippedDate, CustomerID, Freight from Orders order by Freight DESC

--number 5
select lower(CustomerID) as ID from Customers

--number 6
select CompanyName, Fax, Phone, Country, HomePage from Suppliers order by Country DESC, CompanyName

--number 7
select * from Customers
select CompanyName, ContactName from Customers where City = 'Buenos Aires'

--number 8
select ProductName, UnitPrice, QuantityPerUnit from Products where UnitsInStock = 0

--number 9
select ContactName, Address, City from Customers where Country NOT IN ('Germany','mexico','spain');

--number 10
select * from Orders
select OrderDate, ShippedDate, CustomerID, Freight from Orders where OrderDate = '1996-05-21'

--number 11
select FirstName, LastName, Country from Employees where Country NOT IN ('USA')

--number 12
select EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate from Orders where ShippedDate > RequiredDate

--number 13
select City, CompanyName, ContactName from Customers where City like 'A%' or City like 'B%' 

--number 14
select OrderID from Orders where OrderID % 2 = 0 

--number 15
select * from Orders where Freight > 500

--number 16
select ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel from Products where UnitsInStock <= ReorderLevel

--number 17
select CompanyName, ContactName, Phone from Customers where Fax is null

--number 18
select FirstName, LastName from Employees where ReportsTo is null

--number 19
select OrderID from Orders where OrderID % 2 != 0

--numner 20
select CompanyName, ContactName, Fax from Customers where Fax is null order by ContactName

--group by
select * from [Order Details]
select orderID, count(OrderID) as numofTrans, 
sum(UnitPrice * Quantity) as sumofTrans, 
max(UnitPrice * Quantity) as maxsales, 
min(UnitPrice * Quantity) as minsales, 
avg(UnitPrice * Quantity) as avgsales
from [Order Details] 
group by OrderID


select * from [Order Details]
select * from Products
select ProductName, o1.UnitPrice, Quantity, Discount from [Order Details] o1 
inner join Products p on p.ProductID = o1.ProductID

select c.CompanyName, count(o1.OrderID) as Order2, sum(Quantity) as Quantity, sum(Quantity * UnitPrice) as totalsales, o2.OrderID as orderID from Customers c 
inner join orders o1 ON o1.CustomerID = c.CustomerID
inner join [Order Details] o2 on o2.orderID = o1.OrderID
where c.Country = 'USA'
group by c.CompanyName, o2.OrderID

select * from Categories
select * from Products
select CategoryName, count(ProductName) as TotalP 
	from Products p 
	inner join Categories c 
	on p.CategoryID = c.CategoryID 
	group by CategoryName 
	order by TotalP DESC

select Country, City, count(CustomerID) as CU from Customers group by Country, City order by CU DESC

SELECT ProductID, ProductName
FROM Products
WHERE UnitsInStock < ReorderLevel 
ORDER BY ProductID

select ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued 
	from Products 
	where UnitsInStock + UnitsOnOrder <= ReorderLevel AND Discontinued = 0


select CustomerID, region from Customers order by isnull(left(region, 0), 'a'), region


	


	