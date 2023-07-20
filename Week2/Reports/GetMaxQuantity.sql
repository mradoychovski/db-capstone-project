drop procedure if exists GetMaxQuantity;

delimiter //

create procedure GetMaxQuantity()
begin
select max(Quantity) as 'Max Quantity in Order'
from Orders;
end; //

delimiter ;

call GetMaxQuantity();
