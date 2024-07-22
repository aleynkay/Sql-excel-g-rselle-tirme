--En çok sipariþ veren  müþterileri listele. namede gelsin

select C.CustomerID,C.ContactName, count(OrderID) as [order count]
from Orders O join Customers C on O.CustomerID = C.CustomerID
group by C.CustomerID, C.ContactName
Order by [order count] DESC

--En çok satan  ürünü listele.

select OD.ProductId, P.ProductName, sum(Quantity) as [total sold quantity]
from [Order Details] OD join Products P on P.ProductID = OD.ProductId
group by OD.ProductID, P.ProductName
order by OD.ProductId
 
--En yüksek gelir getiren ürünü listele. 

select OD.ProductId, P.ProductName, sum(OD.Quantity * OD.UnitPrice) as [total income]
from [Order Details] OD join Products P on P.ProductID = OD.ProductID
group by OD.ProductID, P.ProductName
order by OD.ProductID

--En iyi performans gösteren  satýþ görevlisini listele.

select E.EmployeeID,E.FirstName, E.LastName, count(O.OrderID) as [performance]
from Orders O join Employees E on O.EmployeeID = E.EmployeeID
group by E.EmployeeID, E.FirstName, E.LastName
order by E.EmployeeID 

--En çok satýþ yapýlan  þehri listele.

select ShipCity, count(OrderId) as [sold quantity]
from Orders
group by ShipCity
order by ShipCity

--Tedarikçi baþýna toplam satýþ miktarýný ve toplam geliri listele.

select S.SupplierID, S.CompanyName, S.ContactName, count(OD.OrderID) as [total sold quantity], sum(OD.Quantity * OD.UnitPrice) as [total price]
from [Order Details] OD join Products P on P.ProductID = OD.ProductID join Suppliers S on P.SupplierID = S.SupplierID
group by S.SupplierID, S.CompanyName, S.ContactName
order by S.SupplierID

--Kategori baþýna toplam satýþ miktarýný ve toplam geliri listele.

select C.CategoryID, C.CategoryName, count(OD.OrderID) as [total sold quantity], sum(OD.UnitPrice * OD.Quantity) as [total income]
from [Order Details] OD join Products P on P.ProductID = OD.ProductID join Categories C on C.CategoryID = P.CategoryID 
group by C.CategoryID, C.CategoryName
order by C.CategoryID

--Yýllara göre toplam satýþ miktarýný ve toplam geliri listele.

select YEAR(O.OrderDate) as years, sum(OD.Quantity) as [total sold quantity], sum(OD.Quantity * OD.UnitPrice) as [total income]
from Orders O join [Order Details] OD on O.OrderID = OD.OrderID join Products P on P.ProductID = OD.ProductID
group by YEAR(O.OrderDate)
order by years

--Müþteri baþýna toplam sipariþ sayýsýný, toplam harcamayý ve en son sipariþ tarihini listele.

select C.CustomerID, C.ContactName, count(O.OrderId) as [total number orders], sum(OD.UnitPrice * OD.Quantity) as [total spending price], max(O.OrderDate) as [last order date]
from Orders O join [Order Details] OD on O.OrderID = OD.OrderID join Customers C on C.CustomerID = O.CustomerID
group by C.CustomerId, C.ContactName
order by [total number orders] DESC

--Çalýþan baþýna toplam sipariþ sayýsýný, toplam satýþ miktarýný ve toplam geliri listele.

select E.EmployeeID, E.FirstName, E.LastName, count(O.OrderID) as [total sold quantity], sum(OD.UnitPrice * OD.Quantity) as [total income]
from Orders O join [Order Details] OD on O.OrderID = OD.OrderID join Employees E on E.EmployeeID = O.EmployeeID
group by E.EmployeeID, E.FirstName, E.LastName
order by EmployeeID
