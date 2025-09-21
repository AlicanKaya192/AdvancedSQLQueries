--SELECT * FROM Product

--SELECT * FROM Products WHERE CategoryID=(SELECT CategoryID FROM Categories WHERE CategoryName='Seafood') 
--and UnitsInStock > 20 and SupplierID=(Select SupplierID From Suppliers WHERE City='Osaka')

--CREATE PROCEDURE TEST
--AS
--SELECT * FROM Orders WHERE EmployeeID IN (SELECT EmployeeID From Employees 
--WHERE City='London') and ShipVia=3 and ShipCountry='France'

--EXEC TEST

--CREATE VIEW TEST1 
--AS
--SELECT OrderID,CompanyName,FirstName + '' + LastName as 'Employee',OrderDate,ShipName,ShipCity,ShipCountry FROM Orders
--inner join Customers 
--ON Orders.CustomerID=Customers.CustomerID
--inner join Employees
--ON Orders.EmployeeID=Employees.EmployeeID

--SELECT * FROM TEST1
--SELECT * FROM Invoices

--SELECT * FROM VIEW1

Exec CustOrderHist ANATR