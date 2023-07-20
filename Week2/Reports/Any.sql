select Customers.CustomerID,
concat(Customers.FirstName,' ',Customers.LastName) as FullName,
Orders.OrderID, Orders.TotalCost as Cost,
Menus.MenuName, MenuItems.CourseName from Customers
inner join Bookings on Bookings.CustomerID=Customers.CustomerID
inner join Orders on Orders.BookingID=Bookings.BookingID
inner join Menus on Menus.MenuID=Orders.MenuID
inner join MenuItems on MenuItems.ItemID=Menus.ItemID
where Orders.TotalCost > 150
order by Orders.TotalCost asc;