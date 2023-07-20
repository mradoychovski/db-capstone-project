delete from Orders
where OrderID > 0;
insert into Orders (OrderDate, Quantity, TotalCost, BookingID, MenuID, DeliveryID)
values
('2022-10-11', 12, 150.0, 1, 1, 2),
('2022-11-11', 19, 345.5, 2, 2, 1),
('2022-11-14', 15, 246.8, 3, 3, 1),
('2022-12-11', 5, 35.3, 4, 3, 2);