drop procedure if exists CancelOrder;

delimiter //

create procedure CancelOrder(order_id int)
begin
delete from Orders
where OrderID=order_id;

select concat("Order ", order_id, " is cancelled") as "Confirmation";

end //

delimiter ;

call CancelOrder(5);