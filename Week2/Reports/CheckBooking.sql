DROP PROCEDURE IF EXISTS CheckBooking;

DELIMITER //

CREATE PROCEDURE CheckBooking(booking_date DATE, table_no INT)
BEGIN

select concat("Table ", table_no, " is already boked") as "Booking status"
from Bookings
where BookingDate=booking_date and TableNo=table_no;

END //

DELIMITER ;

call CheckBooking('2022-11-12',3);