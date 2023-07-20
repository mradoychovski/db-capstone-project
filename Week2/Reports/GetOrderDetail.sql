prepare GetOrderDetail from
'select Orders.OrderID, Orders.Quantity, Orders.TotalCost as Cost from Orders
inner join Bookings on Bookings.BookingID = Orders.BookingID
where Bookings.CustomerID = ?';

set @id=1;
execute GetOrderDetail using @id;