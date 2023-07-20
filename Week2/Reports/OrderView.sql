CREATE VIEW `OrderView` AS
select OrderID, Quantity, TotalCost
from Orders
where Quantity > 2;