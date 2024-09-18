create table Booking(
booking_id int,
flight_id int,
passenger_id int,
booking_platform varchar(50),
created_at timestamp,
updated_at timestamp,
status varchar(50),
price decimal(7,2)
)