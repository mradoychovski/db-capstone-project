drop procedure if exists CancelBooking;

delimiter //

create procedure CancelBooking(booking_id int)
begin
delete from Bookings
where BookingID=booking_id;

select concat("Booking ", booking_id, " cancelled") as "Confirmation";

end //

delimiter ;

call CancelBooking(4);
