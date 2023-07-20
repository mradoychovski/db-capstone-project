drop procedure if exists UpdateBooking;

delimiter //

create procedure UpdateBooking(booking_id int, booking_date date)
begin
update Bookings
set BookingDate=booking_date
where BookingID=booking_id;

select concat("Booking ", booking_id, " updated") as "Confirmation";

end //

delimiter ;

call UpdateBooking(4, "2022-12-17");