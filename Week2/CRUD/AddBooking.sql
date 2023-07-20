drop procedure if exists AddBooking;

delimiter //
create procedure AddBooking(booking_date date, table_no int, customer_id int)
begin

insert into Bookings (BookingDate, TableNo, CustomerID)
values (booking_date, table_no, customer_id);

select "New booking added" as Confirmation;

end //

delimiter ;

call AddBooking("2022-12-30", 4, 3)