use Northwind

-- 1)List all customers with their country and city.

-- select city, country from Customers

-- 2)Show all products with a unit price greater than $50.

--select * from Products
--where UnitPrice > 50

-- 3)Retrieve orders placed in 1997

--select * from Orders
--where Year(Orders.OrderDate) = 1997 

-- 4) List employees in each city.
--select FirstName + ' ' + LastName as EmployeeName, City from Employees

-- 5) Show products with less than 20 units in stock.
--select * from Products
--where UnitsInStock<20

--6) List customers from Germany.
--select * from Customers
--where Country = 'Germany'

--7) Retrieve orders shipped to France.
--select * from Orders
--where ShipCountry = 'France'

--8)Show all suppliers in London.
--select * from Suppliers
--where City = 'London'

--9) List products that are discontinued.
--select * from Products
--where Discontinued = 'TRUE'

--10) Display employees hired after 1995.
--select * from Employees
--where YEAR(Employees.HireDate) > 1995

--11) Count the total number of customers.
--select COUNT(CustomerID) as TotalCustomers from Customers 

--12) Count the number of products in each category.
--select CategoryID,Count(*) as TotalProducts from Products
--group by CategoryID 

--13) Count orders per customer.
--select CustomerID,Count(OrderID) TotalOrders from Orders
--group by CustomerID

--14) Count orders per employee.
--select EmployeeID,Count(OrderID) as TotalOrders from Orders
--group by EmployeeID

--15) Total units in stock per category.
--select CategoryID,SUM(UnitsInStock) as TotalUnits from Products
--group by CategoryID

--16) Average product price per category.
--select CategoryID, ROUND(AVG(UnitPrice),0) as AveragePrice from Products
--group by CategoryID 

--17) Maximum, minimum, and average freight per ship country.
--select ShipCountry,MIN(Freight) as MinFreight,MAX(Freight) as MaxFreight, AVG(Freight) as AverageFreight from Orders
--Group by ShipCountry

--18) Total sales amount per order.
--select OrderID,SUM(UnitPrice*Quantity) from [Order Details]
--group by OrderID

--19) Total quantity sold per product.
--select ProductID,SUM(Quantity) TotalQuantity from [Order Details]
--Group by ProductID

--20) Maximum order value per customer.
select o.CustomerID,od.OrderID, MAX(od.Quantity*od.UnitPrice) from Orders o join [Order Details] od
on o.OrderID =od.OrderID 
group by o.CustomerID,od.OrderID
order by o.CustomerID


--21) Average discount applied per product.
--22) Total revenue generated per supplier.
--23) Total number of orders per year.

--24) Average number of products per order.
--select OrderID,AVG(Quantity) as AverageQuantity from [Order Details]
--group by OrderID

--25) Count products with stock below 10 units.
--select Count(ProductID) from Products
--where UnitsInStock < 10

--26) List all orders with customer names and employee names.
--select c.CompanyName,e.LastName from Customers c join Orders o
--on c.CustomerID = o.CustomerID 
--join Employees e on o.EmployeeID = e.EmployeeID

--27) Show products along with their supplier and category names.
--select p.ProductName,s.CompanyName as Supplier, c.CategoryName from Suppliers s join Products p
--on s.SupplierID = p.SupplierID join Categories c
--on p.CategoryID=c.CategoryID

--28) Retrieve order details with product name, quantity, and unit price.
--29) Display employees with their manager names.
--Select e.FirstName, e2.FirstName from Employees e inner join Employees e2 on e.ReportsTo=e2.EmployeeID
	


--List all products that have never been ordered.
--Find customers who never placed an order.

--32) Display the top 5 products by quantity sold.
--select TOP 5 p.ProductName,SUM(od.Quantity) from [Order Details] od join Products p on od.ProductID=p.ProductID
--group by p.ProductName
--order by SUM(od.Quantity) DESC

--Show orders with shipping details and customer company name.
--Find suppliers who supply more than 5 products.
--Retrieve customers who ordered products from a specific supplier.
--List orders and the total amount per order.
--Find the top 5 customers with the highest total order amounts.
--Show products along with how many times each has been ordered.
--Display employees who handled orders in multiple territories.
--List orders shipped via a specific shipper along with order details.
--Show products ordered by customers from the UK.
--Find suppliers whose products are ordered by customers from Germany.
--Retrieve orders where the ship country differs from the customer country.
--List employees along with the total sales amount they handled.
--Show the most frequently ordered product per category.


--46) Find products priced above the average product price.
--select ProductName,UnitPrice from Products
--where UnitPrice > (select AVG(UnitPrice) from Products)

--47) List customers with more than 5 orders.

--select c.CompanyName, Count(o.OrderID) from Orders o
--join Customers c on o.CustomerID=c.CustomerID
--group by c.CompanyName
--having Count(o.OrderID)>5
--order by Count(o.OrderID)















