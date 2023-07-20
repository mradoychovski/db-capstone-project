drop procedure if exists AddValidBooking;

delimiter //

create procedure AddValidBooking(booking_date date, table_no int)
begin
declare valid int;
start transaction;
select BookingID into valid
    from Bookings
    where BookingDate = booking_date and TableNo = table_no;
	insert into bookings (BookingDate,TableNo) 
	values (booking_date, table_no);
if valid > 0 then
    rollback;
    select concat('Table ', table_no,' is already booked - booking cancelled') as 'Booking Status';
	else
    commit;
    select concat ('Reservation booked sucessfully for ', booking_date) as 'Booking Status';
end if;
end //

delimiter ;

call AddValidBooking("2022-12-17", 6);