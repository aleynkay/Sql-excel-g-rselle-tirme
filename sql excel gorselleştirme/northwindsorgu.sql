--En �ok sipari� veren  m��terileri listele. namede gelsin

select C.CustomerID,C.ContactName, count(OrderID) as [order count]
from Orders O join Customers C on O.CustomerID = C.CustomerID
group by C.CustomerID, C.ContactName
Order by [order count] DESC

--En �ok satan  �r�n� listele.

select OD.ProductId, P.ProductName, sum(Quantity) as [total sold quantity]
from [Order Details] OD join Products P on P.ProductID = OD.ProductId
group by OD.ProductID, P.ProductName
order by OD.ProductId
 
--En y�ksek gelir getiren �r�n� listele. 

select OD.ProductId, P.ProductName, sum(OD.Quantity * OD.UnitPrice) as [total income]
from [Order Details] OD join Products P on P.ProductID = OD.ProductID
group by OD.ProductID, P.ProductName
order by OD.ProductID

--En iyi performans g�steren  sat�� g�revlisini listele.

select E.EmployeeID,E.FirstName, E.LastName, count(O.OrderID) as [performance]
from Orders O join Employees E on O.EmployeeID = E.EmployeeID
group by E.EmployeeID, E.FirstName, E.LastName
order by E.EmployeeID 

--En �ok sat�� yap�lan  �ehri listele.

select ShipCity, count(OrderId) as [sold quantity]
from Orders
group by ShipCity
order by ShipCity

--Tedarik�i ba��na toplam sat�� miktar�n� ve toplam geliri listele.

select S.SupplierID, S.CompanyName, S.ContactName, count(OD.OrderID) as [total sold quantity], sum(OD.Quantity * OD.UnitPrice) as [total price]
from [Order Details] OD join Products P on P.ProductID = OD.ProductID join Suppliers S on P.SupplierID = S.SupplierID
group by S.SupplierID, S.CompanyName, S.ContactName
order by S.SupplierID

--Kategori ba��na toplam sat�� miktar�n� ve toplam geliri listele.

select C.CategoryID, C.CategoryName, count(OD.OrderID) as [total sold quantity], sum(OD.UnitPrice * OD.Quantity) as [total income]
from [Order Details] OD join Products P on P.ProductID = OD.ProductID join Categories C on C.CategoryID = P.CategoryID 
group by C.CategoryID, C.CategoryName
order by C.CategoryID

--Y�llara g�re toplam sat�� miktar�n� ve toplam geliri listele.

select YEAR(O.OrderDate) as years, sum(OD.Quantity) as [total sold quantity], sum(OD.Quantity * OD.UnitPrice) as [total income]
from Orders O join [Order Details] OD on O.OrderID = OD.OrderID join Products P on P.ProductID = OD.ProductID
group by YEAR(O.OrderDate)
order by years

--M��teri ba��na toplam sipari� say�s�n�, toplam harcamay� ve en son sipari� tarihini listele.

select C.CustomerID, C.ContactName, count(O.OrderId) as [total number orders], sum(OD.UnitPrice * OD.Quantity) as [total spending price], max(O.OrderDate) as [last order date]
from Orders O join [Order Details] OD on O.OrderID = OD.OrderID join Customers C on C.CustomerID = O.CustomerID
group by C.CustomerId, C.ContactName
order by [total number orders] DESC

--�al��an ba��na toplam sipari� say�s�n�, toplam sat�� miktar�n� ve toplam geliri listele.

select E.EmployeeID, E.FirstName, E.LastName, count(O.OrderID) as [total sold quantity], sum(OD.UnitPrice * OD.Quantity) as [total income]
from Orders O join [Order Details] OD on O.OrderID = OD.OrderID join Employees E on E.EmployeeID = O.EmployeeID
group by E.EmployeeID, E.FirstName, E.LastName
order by EmployeeID
